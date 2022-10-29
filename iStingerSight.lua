dofile(LockOn_Options.common_script_path.."devices_defs.lua")

indicator_type       = indicator_types.COMMON
-------PAGE SUBSETs-------
local id_subsets = {
	COMMON = 1,
}

page_subsets    = {}
page_subsets[id_subsets.COMMON] = LockOn_Options.script_path.."StingerSight/iStingerSight_page.lua"

----------------------
-------PAGEs-------
local id_pages = {
	PRIMARY = 1,
	EMPTY = 2
}
pages          = {}
pages[id_pages.EMPTY] = {}
pages[id_pages.PRIMARY] = {id_subsets.COMMON}

init_pageID    = id_pages.PRIMARY
-----MODES-------
pages_by_mode                 = {}
clear_mode_table(pages_by_mode,1,2,1)
function get_page_by_mode(master,L2,L3,L4)
	return get_page_by_mode_global(pages_by_mode,init_pageID,master,L2,L3,L4)
end

local id_modes = {
	PRIMARY	= 1,
}
pages_by_mode[1][1][id_modes.PRIMARY][0]		  	= id_pages.PRIMARY
pages_by_mode[1][2][id_modes.PRIMARY][0]		  	= id_pages.EMPTY
pages_by_mode[1][1][id_modes.PRIMARY][1]		  	= id_pages.EMPTY
pages_by_mode[1][2][id_modes.PRIMARY][1]		  	= id_pages.EMPTY

purposes       = {render_purpose.GROUND_UNIT_OPERATOR_SCREENSPACE}

dofile(LockOn_Options.script_path.."gu_dedicated_viewport.lua")
