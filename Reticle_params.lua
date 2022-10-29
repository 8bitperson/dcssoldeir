-- this file contents parameters for the sight
ULX,ULY,SZX,SZY,GUI_scale = get_UIMainView()
ULX = ULX/GUI_scale
ULY = ULY/GUI_scale
SZX = SZX/GUI_scale
SZY = SZY/GUI_scale
aspect = SZX/SZY

--ReticleLightDefaultOn = false
--[[
SmoothZoom = true
minZoom = 1
maxZoom = 1.5
zoomChangeSpeed = 2.0
]]
SecondarySightPresent = true

zoomFactors_by_mode = {
	[1] = {
		{1.5},
		{1}
	},
}

need_to_be_closed = true -- close lua state after initialization 