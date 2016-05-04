include "constants.lua"
include "spider_walking.lua"

local ALLY_ACCESS = {allied = true}

local notum = piece 'notum'
local gaster = piece 'gaster' 
local gunL, gunR, flareL, flareR, aimpoint = piece('gunl', 'gunr', 'flarel', 'flarer', 'aimpoint')
local shieldArm, shield, eye, eyeflare = piece('shield_arm', 'shield', 'eye', 'eyeflare')
local emitl, emitr = piece('emitl', 'emitr')

local nanoPieces = {[0] = gunL, [1] = gunR}

-- note reversed sides from piece names!
local br = piece 'thigh_bacl'	-- back right
local mr = piece 'thigh_midl' 	-- middle right
local fr = piece 'thigh_frol' 	-- front right
local bl = piece 'thigh_bacr' 	-- back left
local ml = piece 'thigh_midr' 	-- middle left
local fl = piece 'thigh_fror' 	-- front left

local smokePiece = {gaster, notum}

local SIG_WALK = 1

local PERIOD = 0.35

local sleepTime = PERIOD*1000

local legRaiseAngle = math.rad(20)
local legRaiseSpeed = legRaiseAngle/PERIOD
local legLowerSpeed = legRaiseAngle/PERIOD

local legForwardAngle = math.rad(12)
local legForwardTheta = math.rad(25)
local legForwardOffset = 0
local legForwardSpeed = legForwardAngle/PERIOD

local legMiddleAngle = math.rad(12)
local legMiddleTheta = 0
local legMiddleOffset = 0
local legMiddleSpeed = legMiddleAngle/PERIOD

local legBackwardAngle = math.rad(12)
local legBackwardTheta = -math.rad(25)
local legBackwardOffset = 0
local legBackwardSpeed = legBackwardAngle/PERIOD

local function Walk()
	Signal (SIG_WALK)
	SetSignalMask (SIG_WALK)
	while true do
		walk (br, mr, fr, bl, ml, fl,
			legRaiseAngle, legRaiseSpeed, legLowerSpeed,
			legForwardAngle, legForwardOffset, legForwardSpeed, legForwardTheta,
			legMiddleAngle, legMiddleOffset, legMiddleSpeed, legMiddleTheta,
			legBackwardAngle, legBackwardOffset, legBackwardSpeed, legBackwardTheta,
			sleepTime)
	end
end

local function RestoreLegs()
	Signal (SIG_WALK)
	SetSignalMask (SIG_WALK)
	restoreLegs (br, mr, fr, bl, ml, fl,
		legRaiseSpeed, legForwardSpeed, legMiddleSpeed,legBackwardSpeed)				
end

function script.Create()
	--Spring.SetUnitNanoPieces(unitID, nanoPieces)
	--Hide (gunL)
	--Hide (gunR)
	Move (aimpoint, z_axis, 9)
	Move (aimpoint, y_axis, 4)
	StartThread(SmokeUnit, smokePiece)
end

function script.Activate()
	Spring.SetUnitRulesParam(unitID, "shieldChargeDisabled", 0, ALLY_ACCESS)
end

function script.Deactivate()
	Spring.SetUnitRulesParam(unitID, "shieldChargeDisabled", 1, ALLY_ACCESS)
end

function script.StartMoving ()
	StartThread (Walk)
end

function script.StopMoving ()
	StartThread (RestoreLegs)
end

function script.StartBuilding()
	SetUnitValue(COB.INBUILDSTANCE, 1)
end

function script.StopBuilding()
	SetUnitValue(COB.INBUILDSTANCE, 0)
end


function script.Killed (recentDamage, maxHealth)
	local severity = recentDamage/maxHealth
	if severity <= .25 then
		return 1
	elseif severity <= .50 then
		Explode (shield, sfxFall)
		Explode (shieldArm, sfxFall)
		Explode (eye, sfxFall)
		Explode (br, sfxFall)
		Explode (ml, sfxFall)
		Explode (fr, sfxFall)
		return 1
	elseif severity <= .75 then
		Explode (bl, sfxFall)
		Explode (mr, sfxFall)
		Explode (fl, sfxFall)
		Explode (shield, sfxFall + sfxSmoke + sfxFire + sfxExplode)
		Explode (shieldArm, sfxFall + sfxSmoke + sfxFire + sfxExplode)
		Explode (eye, sfxFall + sfxSmoke + sfxFire + sfxExplode)
		Explode (br, sfxFall + sfxSmoke + sfxFire + sfxExplode)
		Explode (ml, sfxFall + sfxSmoke + sfxFire + sfxExplode)
		Explode (fr, sfxFall + sfxSmoke + sfxFire + sfxExplode)
		Explode (gaster, sfxShatter)
		return 2
	else
		Explode (shield, sfxFall + sfxSmoke + sfxFire + sfxExplode)
		Explode (shieldArm, sfxFall + sfxSmoke + sfxFire + sfxExplode)
		Explode (eye, sfxFall + sfxSmoke + sfxFire + sfxExplode)
		Explode (bl, sfxFall + sfxSmoke + sfxFire + sfxExplode)
		Explode (mr, sfxFall + sfxSmoke + sfxFire + sfxExplode)
		Explode (fl, sfxFall + sfxSmoke + sfxFire + sfxExplode)
		Explode (br, sfxFall + sfxSmoke + sfxFire + sfxExplode)
		Explode (ml, sfxFall + sfxSmoke + sfxFire + sfxExplode)
		Explode (fr, sfxFall + sfxSmoke + sfxFire + sfxExplode)
		Explode (gaster, sfxShatter)
		Explode (notum, sfxShatter)
		return 2
	end
end
