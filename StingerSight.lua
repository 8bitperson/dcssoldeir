devices = {}
devices["SIGHT"] = 0;
devices["IFF"] = 1;


creators = {}
creators[devices.SIGHT] =          {"devGCommonSight", LockOn_Options.script_path.."StingerSight/Reticle_params.lua"}
creators[devices.IFF]   =          {"devGroundIFF", LockOn_Options.script_path.."StingerSight/IFF_params.lua"}

indicators = 
{
    {"ccGenericGC",     LockOn_Options.script_path.."StingerSight/iStingerSight.lua", devices.SIGHT},
    {"ccGC_Info",       LockOn_Options.script_path.."human_playable_iinfo.lua"},
    {"ccGC_Info",       LockOn_Options.script_path.."iinfo2.lua"},
	{"ccGC_AimHelper",  LockOn_Options.script_path.."iiso_crosshair_for_missile.lua", devices.SIGHT},
    {"ccGC_MainHelper", LockOn_Options.script_path.."imain_helper.lua"},
}
