local spGetUnitWeaponTarget = Spring.GetUnitWeaponTarget
local spGetProjectilePosition = Spring.GetProjectilePosition
local spGetUnitPosition = Spring.GetUnitPosition

local function GetUnitWeaponTargetPos(unitID, wNum)
	local x, y, z
	local res, isUserTarget, xVal = spGetUnitWeaponTarget(unitID, wNum)	

	if res == 1 then --unit
		_, _, _, x, y, z = spGetUnitPosition(xVal, false, true) --aimpos
	elseif res == 3 then --projectile
		x, y, z = spGetProjectilePosition(xVal)
	elseif res == 2 then --ground
		x, y, z = xVal[1], xVal[2], xVal[3]
	else
		x, y, z, xVal, isUserTarget = nil, nil, nil, nil, nil
	end
	
	return x, y, z, res, xVal, isUserTarget
end

Spring.Utilities.GetUnitWeaponTargetPos = GetUnitWeaponTargetPos