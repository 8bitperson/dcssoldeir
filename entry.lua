local self_ID = "Infantry"
declare_plugin(self_ID,
{
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,

displayName  = _("Infantry"),
fileMenuName = _("Infantry"),
version		 = "EA",
state		 = "installed",
info		 = _(""),





InputProfiles =
{
    ["Infantry"] = current_mod_path .. '/Input',
},




Skins	=
	{
		{
			name	= _("Infantry"),
			dir		= "Theme"
		},
	},
	
Missions =
	{
		{
			name		    = _("Infantry"),
			dir			    = "Missions",
		},
	},		
Options = 
	{
		{
			name		= _("Infantry"),
			nameId		= "Infantry",
			dir			= "Options",
		},
	},
LogBook =
	{
		{
			name		= _("Infantry"),
			type		= "Infantry",
		},
	},		
})

mount_vfs_liveries_path(current_mod_path ..  "/Liveries")
mount_vfs_model_path   (current_mod_path ..  "/Cockpit/Shape")
mount_vfs_texture_path (current_mod_path ..  "/Theme/ME")--for simulator loading window

mount_vfs_sound_path   (current_mod_path ..  "/Sound")

local support_cockpit = current_mod_path..'/Cockpit/Scripts/'

----------------------------------------------------------------------------------------
MAC_flyable('Yak-40', support_cockpit, nil, current_mod_path..'/comm.lua')
----------------------------------------------------------------------------------------

dofile(current_mod_path.."/Views.lua") --View Settings.

make_view_settings('Infantry', ViewSettings, SnapViews) 

plugin_done()
