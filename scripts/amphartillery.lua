--linear constant 65536

include "constants.lua"

local ground, pelvis, turret, gun1, gun2, lleg, rleg, lfoot, rfoot, firept1, firept2 = piece('ground', 'pelvis', 'turret', 'gun1', 'gun2', 'lleg', 'rleg', 'lfoot', 'rfoot', 'firept1', 'firept2')
local vent = piece('vent')

local SIG_AIM = {}
local firepoints = {[0] = firept1, [1] = firept2}
local barrels = {[0] = gun1, [1] = gun2}

local gun_1 = 0
local firing = 0

local SIG_WALK = 1
local SIG_AIM = {2, 4}
local SIG_RESTORE = 8
local SIG_BOB = 16
local SIG_FLOAT = 32

local PERIOD = 500
local INTERMISSION = 100

local LEG_FRONT_DISPLACEMENT = 4.2
local LEG_BACK_DISPLACEMENT = -4.2
local LEG_Z_SPEED = 1100 * 8/PERIOD
local LEG_RAISE_DISPLACEMENT = 2
local LEG_Y_SPEED = 1100 * LEG_RAISE_DISPLACEMENT/PERIOD * 2

local unitDefID = UnitDefNames["amphartillery"].id
local wd = UnitDefs[unitDefID].weapons[1] and UnitDefs[unitDefID].weapons[1].weaponDef
local reloadTime = wd and WeaponDefs[wd].reload*30 or 30
local longRange = true

local grenNum, torpNum, fakeNum

local torpRange
local grenRange

for num, wd in ipairs(UnitDefs[unitDefID].weapons) do
	if WeaponDefs[wd.weaponDef].name == "amphartillery_fake_grenade" then
		fakeNum = num
	elseif WeaponDefs[wd.weaponDef].name == "amphartillery_torpedo" then
		torpNum = num
		torpRange = WeaponDefs[wd.weaponDef].range
	elseif WeaponDefs[wd.weaponDef].name == "amphartillery_grenade" then
		grenNum = num
		grenRange = WeaponDefs[wd.weaponDef].range
	end
end

local smokePiece = {pelvis, turret}

local INLOS = {inlos = true}

local function WeaponRangeUpdate()
	while true do
		local height = select(2, Spring.GetUnitPosition(unitID))
		if height < -32 then
			if longRange then
				Spring.SetUnitWeaponState(unitID, grenNum, {range = torpRange})
				longRange = false
			end
		elseif not longRange then
			Spring.SetUnitWeaponState(unitID, grenNum, {range = grenRange})
			longRange = true
		end
		Sleep(200)
	end
end

local function SetUnitMaxRange()
	while true do
		local height = select(2, Spring.GetUnitPosition(unitID))
		if height < -32 then
			Spring.SetUnitMaxRange(unitID, torpRange)
		else
			Spring.SetUnitMaxRange(unitID, grenRange)
		end
		Sleep(200)
	end
end

local ClampPosition = Spring.Utilities.ClampPosition
local GetUnitWeaponTargetPos = Spring.Utilities.GetUnitWeaponTargetPos

local torpTargetLeeway = 30


local function GetIntoTorpedoRange()
	while true do
		--local tx, ty, tz = GetUnitWeaponTargetPos(unitID, torpNum)
		local queue = Spring.GetUnitCommands(unitID, 1)
		if queue and #queue == 1 and queue[1].id == CMD.ATTACK then
			local cmd = queue[1]
			local tx, ty, tz
			if #cmd.params == 1 then
				tx, ty, tz = Spring.GetUnitPosition(cmd.params[1])
			elseif #cmd.params == 3 then
				tx, ty, tz = cmd.params[1], cmd.params[2], cmd.params[3]
			end
			if ty and ty <= 0 then --target is in water
				local mx, my, mz = Spring.GetUnitPosition(unitID)
				local D2d = math.sqrt( (tx - mx)^2 + (tz - mz)^2 )
				
				local goalDist = torpRange - D2d - torpTargetLeeway
				
				if goalDist < 0  then
					-- move towards target
					local lineAngle = math.atan2( (mz - tz), (mx - tx) )
					
					local gx = mx + math.cos(lineAngle) * goalDist
					local gz = mz + math.sin(lineAngle) * goalDist
					
					--Spring.MarkerAddLine(mx, 0, mz, gx, 0, gz)
					gx, gz = ClampPosition(gx, gz)
					Spring.SetUnitMoveGoal(unitID, gx, 0, gz, 0)
				end
			end
		end
		Sleep(200)
		end
end



function script.Create()
--	StartThread(WeaponRangeUpdate)
--	StartThread(SetUnitMaxRange)
	StartThread(GetIntoTorpedoRange)
	StartThread(SmokeUnit, smokePiece)
end

--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------
-- Swim functions

local function Bob()
	Signal(SIG_BOB)
	SetSignalMask(SIG_BOB)
	while true do
		local dx, dy, dz = math.rad(math.random(-3,3)), math.rad(math.random(-3,3)), math.rad(math.random(0,6))
		local sx, sy, sz = math.rad(math.random(1,2)), math.rad(math.random(1,2)), math.rad(math.random(2,6))
		
		Turn(ground, x_axis, dx, sx)
		Turn(ground, z_axis, dz, sz)
		Move(ground, y_axis, dy, sy)
		Sleep(2000)
		Turn(ground, x_axis, -dx, sx)
		Turn(ground, z_axis, -dz, sz)
		Move(ground, y_axis, -dy, sy)
		Sleep(2000)
	end
end

local function SinkBubbles()
	SetSignalMask(SIG_FLOAT)
	while true do
		EmitSfx(vent, SFX.BUBBLE)
		Sleep(66)
	end
end

local function dustBottom()
	local x,y,z = Spring.GetUnitPiecePosDir(unitID,rfoot)
	Spring.SpawnCEG("uw_vindiback", x, y+5, z, 0, 0, 0, 0)
	local x,y,z = Spring.GetUnitPiecePosDir(unitID,lfoot)
	Spring.SpawnCEG("uw_vindiback", x, y+5, z, 0, 0, 0, 0)
end
--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------
-- Swim gadget callins

function Float_startFromFloor()
	dustBottom()
	Signal(SIG_WALK)
	Signal(SIG_FLOAT)
	StartThread(Bob)
end

function Float_stopOnFloor()
	dustBottom()
	Signal(SIG_BOB)
	Signal(SIG_FLOAT)
end

function Float_rising()
	 Signal(SIG_FLOAT)
end

function Float_sinking()
	Signal(SIG_FLOAT)
	StartThread(SinkBubbles)
end

function Float_crossWaterline(speed)
	--Signal(SIG_FLOAT)
end

function Float_stationaryOnSurface()
	Signal(SIG_FLOAT)
end

function unit_teleported(position)
	return GG.Floating_UnitTeleported(unitID, position)
end

--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------

local function Walk()
	Signal(SIG_WALK)
	SetSignalMask(SIG_WALK)
	while true do
		-- left leg up and forward, right leg down and back
		Move(lleg, y_axis, LEG_RAISE_DISPLACEMENT, LEG_Y_SPEED)
		Move(lfoot, z_axis, LEG_FRONT_DISPLACEMENT, LEG_Z_SPEED)
		
		Move(rfoot, z_axis, LEG_BACK_DISPLACEMENT, LEG_Z_SPEED)
		Sleep(PERIOD)
		Move(lleg, y_axis, 0, LEG_Y_SPEED)
		Sleep(INTERMISSION)
		
		-- right leg up and forward, left leg down and back
		Move(rleg, y_axis, LEG_RAISE_DISPLACEMENT, LEG_Y_SPEED)
		Move(rfoot, z_axis, LEG_FRONT_DISPLACEMENT, LEG_Z_SPEED)
		
		Move(lfoot, z_axis, LEG_BACK_DISPLACEMENT, LEG_Z_SPEED)
		Sleep(PERIOD)
		Move(rleg, y_axis, 0, LEG_Y_SPEED)
		Sleep(INTERMISSION)
	end
end

local function Stopping()
	Signal(SIG_WALK)
	SetSignalMask(SIG_WALK)

	Move(lleg, y_axis, 0, LEG_Y_SPEED)
	Move(lfoot, z_axis, 0, LEG_Z_SPEED)
	Move(rleg, y_axis, 0, LEG_Y_SPEED)
	Move(rfoot, z_axis, 0, LEG_Z_SPEED)
end

function script.StartMoving()
	StartThread(Walk)
end

function script.StopMoving()
	StartThread(Stopping)
	GG.Floating_StopMoving(unitID)
end

local function RestoreAfterDelay()
	Signal(SIG_Restore)
	SetSignalMask(SIG_Restore)
	Sleep(6000)
	
	Turn(turret, y_axis, 0, 2)
	Turn(turret, x_axis, 0, 2)
	Turn(gun1, z_axis, 0, 2)
	Turn(gun2, z_axis, 0, 2)
end

local function IsUnitInWater(uId)
	local uy = select(2, Spring.GetUnitPosition(uId))
	return uy <= 0
end

function script.AimWeapon(num, heading, pitch)
--	Spring.Echo("AimWeapon num = "..num)
	local res, _, val = Spring.GetUnitWeaponTarget(unitID, num)
	local tID, tx, ty, tz
	if res == 1 then --unit
		tID = val
		_, _, _, tx, ty, tz = Spring.GetUnitPosition(tID, false, true)
	elseif res == 2 then --groundPos
		tx, ty, tz = val[1], val[2], val[3]
	end	
	
	--Spring.Echo("ty="..ty)
	
	if ty >= 0 then -- target is in water or above
		if IsUnitInWater(unitID) then
			--Spring.Echo("AimWeapon GG.Floating_AimWeapon")
			GG.Floating_AimWeapon(unitID) --signal float
		end
		--[[
		if num == torpNum then
			--wrong weapon
			Spring.Echo("AimWeapon wrong weapon1")
			return false
		end
		]]--
	else --target is under water
		--[[
		if num == grenNum then
			Spring.Echo("AimWeapon wrong weapon2")
			--wrong weapon
			return false
		end	
		]]--		
	end

	Signal(SIG_AIM)
	SetSignalMask(SIG_AIM)
	Turn(turret, y_axis, heading, 1.9)
	Turn(gun1, x_axis, -pitch, 1.75)
	Turn(gun2, x_axis, -pitch, 1.75)
	WaitForTurn(turret, y_axis)
	WaitForTurn(gun1, x_axis)
	StartThread(RestoreAfterDelay)
	return true
end

function script.FireWeapon(num)
--[[
	local reloadSpeedMult = Spring.GetUnitRulesParam(unitID, "totalReloadSpeedChange") or 1
	if reloadSpeedMult <= 0 then
		-- Safety for div0. In theory a unit with reloadSpeedMult = 0 cannot fire because it never reloads.
		reloadSpeedMult = 1
	end
	
	local reloadTimeMult = 1/reloadSpeedMult
	Spring.SetUnitWeaponState(unitID, num, "reloadFrame", Spring.GetGameFrame() + reloadTime*reloadTimeMult)
	if num == torpNum then
		local px, py, pz = Spring.GetUnitPosition(unitID)
		if py < -8 then
		else
			Spring.PlaySoundFile("sounds/weapon/torp_land.wav", 5, px, py, pz)
		end
	end
]]--
	Sleep(150)
	Move(gun1, z_axis, 0, 3)
	Move(gun2, z_axis, 0, 3)
end

function script.Shot(num)
	gun_1 = 1 - gun_1
	Move(barrels[gun_1], z_axis, -2.4)
end

function script.AimFromWeapon(num)
	return turret
end

function script.QueryWeapon(num)
	return firepoints[gun_1]
end

function script.Killed(recentDamage, maxHealth)
	local severity = recentDamage/maxHealth
	if severity <= .25 then
		Explode(lfoot, sfxNone)
		Explode(lleg, sfxNone)
		Explode(pelvis, sfxNone)
		Explode(rfoot, sfxNone)
		Explode(rleg, sfxNone)
		return 1
	elseif severity <= .50 then
		Explode(lfoot, sfxFall)
		Explode(lleg, sfxFall)
		Explode(rfoot, sfxFall)
		Explode(rleg, sfxFall)
		Explode(pelvis, sfxShatter)
		return 1
	elseif severity <= .99 then
		Explode(lfoot, sfxFall + sfxSmoke + sfxFire + sfxExplode)
		Explode(lleg, sfxFall + sfxSmoke + sfxFire + sfxExplode)
		Explode(rfoot, sfxFall + sfxSmoke + sfxFire + sfxExplode)
		Explode(rleg, sfxFall + sfxSmoke + sfxFire + sfxExplode)
		Explode(pelvis, sfxShatter)
		return 2
	else
		Explode(lfoot, sfxFall + sfxSmoke + sfxFire + sfxExplode)
		Explode(lleg, sfxFall + sfxSmoke + sfxFire + sfxExplode)
		Explode(rfoot, sfxFall + sfxSmoke + sfxFire + sfxExplode)
		Explode(rleg, sfxFall + sfxSmoke + sfxFire + sfxExplode)
		Explode(pelvis, sfxShatter + sfxExplode)
		return 2
	end
end
