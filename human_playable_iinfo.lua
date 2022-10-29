dofile(LockOn_Options.common_script_path.."devices_defs.lua")
indicator_type       = indicator_types.COMMON

-------PAGE IDs-------
page_subsets    = {LockOn_Options.script_path.."human_playable_iinfo_page.lua"}
----------------------
pages          = {{1}}
init_pageID    = 1
purposes       = {render_purpose.GROUND_UNIT_OPERATOR_SCREENSPACE}

ULX,ULY,SZX,SZY,GUI_scale = get_UIMainView()
ULX = ULX/GUI_scale
ULY = ULY/GUI_scale
SZX = SZX/GUI_scale
SZY = SZY/GUI_scale

aspect = SZX/SZY
dedicated_viewport		  = {ULX + SZX/2,
                             ULY + SZY/2*aspect,
							 SZX/2,
							 SZY/2*aspect}