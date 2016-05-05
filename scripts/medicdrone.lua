include "constants.lua"

--pieces
local base, fan, barrel, flare, thrust1, thrust2 = piece('base', 'fan', 'barrel', 'flare', 'thrust1', 'thrust2')
local blades = {piece('b1', 'b2', 'b3', 'b4', 'b5', 'b6')}

local smokePiece = {base}

--constants
local rotorSpeed = math.rad(1080)
local rotorAccel = math.rad(240)
--variables


--signals
local SIG_Aim = 1

----------------------------------------------------------

function script.Create()
	Spring.SetUnitNanoPieces(unitID, {fan})
	for i=1,#blades do
		Turn(blades[i], y_axis, math.rad((i-1)*60))
	end
	Spin(fan, y_axis, rotorSpeed, rotorAccel)	
end

function script.StartMoving()
end

function script.StopMoving()
end

function script.StartBuilding(heading, pitch)
	SetUnitValue(COB.INBUILDSTANCE, 1)
end

function script.StopBuilding()
	SetUnitValue(COB.INBUILDSTANCE, 0)
end

function script.Killed(recentDamage, maxHealth)
	local severity = (recentDamage/maxHealth)
	if severity < .5 then
		Explode(base, sfxNone)
		Explode(barrel, sfxFall)
		Explode(fan, sfxFall)
	elseif severity < 1 then
		Explode(base, sfxNone)
		Explode(barrel, sfxSmoke)
		Explode(fan, sfxSmoke)
	else
		Explode(base, sfxShatter)
		Explode(barrel, sfxSmoke + sfxExplode)
		Explode(fan, sfxSmoke + sfxExplode)
	end
end
