//created by Rexi
Droideka={
	params["_obj"];
	_obj addAction ["<t color='#00FF00'>Convert to moveable</t>", {
    Dspawner = _this select 0;
    [Dspawner] execVM "scripts\zeus3denScripts\ai_based\faction_based\opfor\cis\droideka\droideka_driver.sqf";
	removeallactions dspawner
	},[1],0,false,true,""," gunner  _target == _this "];
};

["SWOP_Droideka", "init",Droideka, false, [], false] call CBA_fnc_addClassEventHandler; 
["SWOP_DroidekaSupport", "init",Droideka, false, [], false] call CBA_fnc_addClassEventHandler; 
["SWOP_DroidekaCamo", "init",Droideka, false, [], false] call CBA_fnc_addClassEventHandler; 