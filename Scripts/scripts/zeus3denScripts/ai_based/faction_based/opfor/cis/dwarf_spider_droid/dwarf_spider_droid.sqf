//created by Rexi
DSD={
	params["_obj"];
	[_obj, false] call ace_dragging_fnc_setCarryable;
	[_obj, false] call ace_dragging_fnc_setdraggable;
	_obj addAction ["<t color='#00FF00'>Convert to moveable</t>", {
    Dspawner = _this select 0;
    [Dspawner] execVM (cisQuick+dwarfSpiderDroidPath+dwarfDriver);
	removeallactions dspawner
	},[1],0,false,true,""," gunner  _target == _this "];
};

["SpiderDSD", "init",DSD, true, [], false] call CBA_fnc_addClassEventHandler; 


