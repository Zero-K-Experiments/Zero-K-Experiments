function widget:GetInfo()
  return {
    name      = "Accidential construction prevention",
    desc      = "Accidential on-mex and on-geo construction prevention",
    author    = "ivand",
    date      = "2016",
    license   = "GNU GPL, v2 or later",
    layer     = -2, -- puts us before unit_initial_queue.lua
    enabled   = true,  --  loaded by default?
--	alwaysStart = true,
--	handler = true,
  };
end

local myTeamID = Spring.GetMyTeamID()
local myPlayerID = Spring.GetMyPlayerID()

local scrW, scrH = Spring.GetViewGeometry()


local guardedItems = {
	[-UnitDefNames["cormex"].id] = true,
	[-UnitDefNames["geo"].id] = true,
	[-UnitDefNames["amgeo"].id] = true,
}

local guardedAreas = {}

local function GetBuildingDimensions(uDefID, facing)
	local bDef = UnitDefs[uDefID]
	if (facing % 2 == 1) then
		return 4 * bDef.zsize, 4 * bDef.xsize
	else
		return 4 * bDef.xsize, 4 * bDef.zsize
	end
end

local function DoBuildingsClash(buildData1, buildData2)
	local w1, h1 = GetBuildingDimensions(buildData1[1], buildData1[5])
	local w2, h2 = GetBuildingDimensions(buildData2[1], buildData2[5])

	return math.abs(buildData1[2] - buildData2[2]) < w1 + w2 and
	       math.abs(buildData1[4] - buildData2[4]) < h1 + h2
end


local function GetGuardedAreas()

	local mexUDId = UnitDefNames["cormex"].id
	local geoUDId = UnitDefNames["geo"].id
	local fakeUDId = UnitDefNames["fakeunit"].id
	
	local bx, bz
	local spot
	
	for i = 1, #WG.metalSpots do
		spot = WG.metalSpots[i]
		bx, bz = spot.x, spot.z
		guardedAreas[i] = { mexUDId, bx, 0, bz, 0 }
	end
	
	local fDefId
	for idx, fId in ipairs(Spring.GetAllFeatures()) do
		if Spring.ValidFeatureID(fId) then
			fDefId = Spring.GetFeatureDefID(fId)
			if FeatureDefs[fDefId].geoThermal then
				bx, _, bz = Spring.GetFeaturePosition(fId)
				guardedAreas[#guardedAreas+1] = { fakeUDId, bx, 0, bz, 0 }
			end
		end
	end
end

local selBuildData = nil

function widget:Initialize()
	GetGuardedAreas()
end

function widget:Shutdown()

end


function widget:CommandNotify(cmdID, cmdParams, cmdOptions)
	if cmdID and cmdID < 0 and (not guardedItems[cmdID]) then
		--return selBuildData~=nil
		local buildFacing = Spring.GetBuildFacing()
		local bx, by, bz = cmdParams[1], cmdParams[2], cmdParams[3]
		
		tmpBuildData = {-cmdID, bx, by, bz, buildFacing}
		
		for _, guardedData in ipairs(guardedAreas) do
			if DoBuildingsClash(tmpBuildData, guardedData) then
				return true
			end
		end
	end
	return false
end

local function MouseHandler()
	local mx, my = Spring.GetMouseState()
	local cmdIdx, cmdID = Spring.GetActiveCommand()	
	if cmdID and cmdID < 0 then
		if guardedItems[cmdID] then --don't do anything about guardedItems
			selBuildData = nil
			return
		end
	else
		selBuildData = nil
		return
	end
	
	local _, pos = Spring.TraceScreenRay(mx, my, true)
	if pos then
		local bx, by, bz = Spring.Pos2BuildPos(-cmdID, pos[1], pos[2], pos[3])
		local buildFacing = Spring.GetBuildFacing()
		local bw, bh = GetBuildingDimensions(-cmdID, buildFacing)
		
		if Spring.TestBuildOrder(-cmdID, bx, by, bz, buildFacing) > 0 then --buildable
			tmpBuildData = {-cmdID, bx, by, bz, buildFacing}
			local height = Spring.GetUnitDefDimensions(-cmdID).height
			
			local vertices = {}			
			local canBuild = true			
			for _, guardedData in ipairs(guardedAreas) do
				if DoBuildingsClash(tmpBuildData, guardedData) then
					canBuild = false
					
					local gx, gz = guardedData[2], guardedData[4]
					local gw, gh = GetBuildingDimensions(guardedData[1], guardedData[5])					
					
					--bottom plane					
					vertices[#vertices + 1] = {v = {gx - gw, by, gz - gh}}
					vertices[#vertices + 1] = {v = {gx - gw, by, gz + gh}}
					vertices[#vertices + 1] = {v = {gx + gw, by, gz + gh}}
					vertices[#vertices + 1] = {v = {gx + gw, by, gz - gh}}
					
					--top plane
					vertices[#vertices + 1] = {v = {gx - gw, by + height, gz - gh}}
					vertices[#vertices + 1] = {v = {gx - gw, by + height, gz + gh}}
					vertices[#vertices + 1] = {v = {gx + gw, by + height, gz + gh}}
					vertices[#vertices + 1] = {v = {gx + gw, by + height, gz - gh}}
					
					--back (front) plane
					vertices[#vertices + 1] = {v = {gx - gw, by, gz + gh}}
					vertices[#vertices + 1] = {v = {gx - gw, by + height, gz + gh}}
					vertices[#vertices + 1] = {v = {gx + gw, by + height, gz + gh}}
					vertices[#vertices + 1] = {v = {gx + gw, by, gz + gh}}					

					--front (back) plane
					vertices[#vertices + 1] = {v = {gx - gw, by, gz - gh}}
					vertices[#vertices + 1] = {v = {gx - gw, by + height, gz - gh}}
					vertices[#vertices + 1] = {v = {gx + gw, by + height, gz - gh}}
					vertices[#vertices + 1] = {v = {gx + gw, by, gz - gh}}
					
					--left plane					
					vertices[#vertices + 1] = {v = {gx - gw, by, gz - gh}}
					vertices[#vertices + 1] = {v = {gx - gw, by + height, gz - gh}}
					vertices[#vertices + 1] = {v = {gx - gw, by + height, gz + gh}}
					vertices[#vertices + 1] = {v = {gx - gw, by, gz + gh}}

					--right plane					
					vertices[#vertices + 1] = {v = {gx + gw, by, gz - gh}}
					vertices[#vertices + 1] = {v = {gx + gw, by + height, gz - gh}}
					vertices[#vertices + 1] = {v = {gx + gw, by + height, gz + gh}}
					vertices[#vertices + 1] = {v = {gx + gw, by, gz + gh}}						
					
					break
				end
			end
			
			if canBuild then
				selBuildData = nil
			else
				selBuildData = {-cmdID, bx, by, bz, buildFacing, vertices}
			end
		else --unbuildable, don't do anything
			selBuildData = nil
		end
	end	
end


local function DrawBuilding(buildData, teamID)
	local bDefID, bx, by, bz, facing = buildData[1], buildData[2], buildData[3], buildData[4], buildData[5]
	
	local vertices = buildData[6]
	
	local bw, bh = GetBuildingDimensions(bDefID, facing)	
	
	gl.DepthTest(GL.LEQUAL)
	gl.DepthMask(true)	
	
	gl.Color(1, 0.5, 0.5, 0.8)
	
	gl.Shape(GL.QUADS, vertices)
	
	gl.PushMatrix()
		gl.Translate(bx, by, bz)
		gl.Rotate(90 * facing, 0, 1, 0)
		gl.Texture("%"..bDefID..":0") --.s3o texture atlas for .s3o model
		gl.UnitShape(bDefID, teamID, false, true, false)
		
		gl.Texture(false)
	gl.PopMatrix()

	gl.Lighting(false)
	gl.DepthTest(false)
	gl.DepthMask(false)
end

local function DrawWorldFunc()
	if not selBuildData then
		return
	end
	
	gl.LineWidth(1.49)
	DrawBuilding(selBuildData, myTeamID)	
	gl.Color(1.0, 1.0, 1.0, 1.0)
	gl.LineWidth(1.0)	
end

local frequency = 1/60
local dtCum = 2*frequency

function widget:Update(dt)
	if dtCum >= frequency then --pace to frequency
		MouseHandler()
		dtCum = 0
	else
		dtCum = dtCum + dt
	end
end

function widget:DrawWorld()
	DrawWorldFunc()
end

function widget:ViewResize(vsx, vsy)
	scrW = vsx
	scrH = vsy
end
