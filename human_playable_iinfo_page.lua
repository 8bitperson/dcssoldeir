dofile(LockOn_Options.script_path.."Scripts/GROUND_RADAR/ground_radar_usefull_definitions.lua")

gettext = require("i_18n")

_ = gettext.translate

local HUDmaterial 				= MakeMaterial(LockOn_Options.script_path.."Resources/universal_HUD.tga",DEFAULT_COLOR_1)
local _ARCADE_BLACK_  			= MakeMaterial(LockOn_Options.script_path.."Resources/arcade.tga",{0,0,0,255})

SetScale(FOV)
--SetCustomScale(1.0)

gettext = require("i_18n")

local 	info_clear_level = set_clear_level(1)

-- variant 1
--required_compass_size_in_px = 150;
--local 	compass_size = required_compass_size_in_px * kY

--variant 2
local	compass_size = 0.2

local margin_in_px = 5;
local margin = margin_in_px * kY

local	ammo_info							= CreateElement "ceStringPoly"
		ammo_info.name						= "ammo_info"
		ammo_info.material        			= _FNT2_PPI_
		ammo_info.init_pos        			= {GUIviewport_in_logic_coords.Right-margin,GUIviewport_in_logic_coords.Bottom+margin}
		ammo_info.alignment       			= "RightBottom"
        ammo_info.stringdefs      			= _FONT_SIZE_GROUND_RADAR_
        ammo_info.formats         			= {_("AMMO:").."%s"}
        ammo_info.controllers     			= {{"draw_ammo_info"}}
        ammo_info.additive_alpha  			= true
        ammo_info.use_mipfilter   			= true
        AddElement(ammo_info)

local   bottom_right_info                 = CreateElement "ceStringPoly"
        bottom_right_info.material        = _FNT2_PPI_
        bottom_right_info.init_pos        = {GUIviewport_in_logic_coords.Right-margin, GUIviewport_in_logic_coords.Bottom + margin}
        bottom_right_info.alignment       = "RightBottom"
        bottom_right_info.stringdefs      = _FONT_SIZE_GROUND_RADAR_
        bottom_right_info.formats         = {"%s\n"}
        bottom_right_info.controllers     = {{"draw_human_playable_info"}}
        bottom_right_info.additive_alpha  = true
        bottom_right_info.use_mipfilter   = true
        AddElement(bottom_right_info)