local function GetMass(metal, maxHealth)
	--alternative
	-- return ((metal/2 + maxHealth/10)^0.55)*9
	return (((metal/2) + (maxHealth/8))^0.6)*6.5
end

Spring.Utilities.GetMass = GetMass