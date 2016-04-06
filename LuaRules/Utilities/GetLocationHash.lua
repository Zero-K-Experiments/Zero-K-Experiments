local mapSizeX = Game.mapSizeX
local mapSizeZ = Game.mapSizeZ
local minHeight = 100000 --assume no map is that deep

local function GetLocationHash(x, y, z)
	x, y, z = math.floor(x+0.5), math.floor(y+0.5), math.floor(z+0.5) --round
	
	return mapSizeX * mapSizeZ * x + mapSizeX * z + (y + minHeight) --should be a unique hash value of (x,y,z)
end

Spring.Utilities.GetLocationHash = GetLocationHash