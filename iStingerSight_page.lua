dofile(LockOn_Options.script_path.."common_defines.lua")

SetScale(FOV)

local RETICLE_MATERIAL_BLACK = MakeMaterial(LockOn_Options.script_path.."Resources/StingerSight.tga",{0,0,0,255});
local	rangeRing							= CreateElement "ceTexPoly"
		rangeRing.vertices               	= rectangleBasedOnCenter(0.0, 0.0, 2, 2)
		rangeRing.indices                	= default_box_indices
		rangeRing.material               	= RETICLE_MATERIAL_BLACK
		rangeRing.tex_coords             	= getTextureCoordsFromPixelCoords(25, 25, 95, 95, 256)
		rangeRing.use_mipfilter          	= true
		rangeRing.controllers				= {{"scale_to_fov", 1.5}}
		Add(rangeRing)

local LINES_MATERAIL = MakeMaterial(nil, {0,0,0,255})
local   verticalLine							= CreateElement "ceSimpleLineObject"
		verticalLine.name						= "verticalLine"
		verticalLine.material         			= LINES_MATERAIL
		verticalLine.vertices					= {{0, 0.04}, {0, 0.3}}
		verticalLine.width						= 0.003
		Add(verticalLine)

local   horizontalLine							= CreateElement "ceSimpleLineObject"
		horizontalLine.name						= "horizontalLine"
		horizontalLine.material         		= LINES_MATERAIL
		horizontalLine.vertices					= {{0.04/aspect, 0.0}, {0.35/aspect, 0.0}}
		horizontalLine.width					= 0.005
		Add(horizontalLine)

local   superelevationMarks					= CreateElement "ceTexPoly"
		superelevationMarks.vertices        = rectangleBasedOnCenter(0, -0.9, 2, 0.195)
		superelevationMarks.indices         = default_box_indices
		superelevationMarks.material        = RETICLE_MATERIAL_BLACK
		superelevationMarks.tex_coords      = getTextureCoordsFromPixelCoords(0, 150, 256, 175, 256)
		superelevationMarks.use_mipfilter   = true
		superelevationMarks.controllers		= {{"scale_to_fov", 11.8155}}
		Add(superelevationMarks)

-- background circle
createFOVMask({{"elevation_angle_offset", -0.05}}, 15*17, 60, false)
