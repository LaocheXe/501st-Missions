
personToApply=_this select 0;
	personToApply addEventHandler ["HandleDamage",
	{
		_namUnit=_this select 0;
		_namJumpData=_namUnit getVariable["jumpArray",[false,0,0,5,2]];
		_namIsJumping=(_namJumpData)select 0;
		_namResult=0;
		_namIsToggling=_namUnit getVariable["isTogglingJumpEH",true];
		
		if(_namIsJumping && {isTouchingGround _namUnit} ) then
		{		
			
			_namResult=0;
			_null = _this spawn
			{
				_namUnitSpawn=_this select 0;
				_namJumpDataSpawn=_namUnitSpawn getVariable["jumpArray",[false,0,0,5,2]];
				
				
				sleep 0.5;
				
				_namUnitSpawn setVariable ["jumpArray", [false,(_namJumpDataSpawn select 1),(_namJumpDataSpawn select 2),(_namJumpDataSpawn select 3),(_namJumpDataSpawn select 4)],true];
				
				
				
			};
			_namResult=0;
		
		}
		else
		{
		
		_namResult=_this call ACE_medical_fnc_handleDamage;
		};
		
		
		_namResult
		
	}];
