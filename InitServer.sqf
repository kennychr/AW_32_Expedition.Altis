


//[AiCacheDistance(players),TargetFPS(-1 for Auto),Debug,CarCacheDistance,AirCacheDistance,BoatCacheDistance]execvm "zbe_cache\main.sqf";


[{[1000,-1,true,500,1000,1000]execvm "zbe_cache\main.sqf";}, [], 5] call CBA_fnc_waitAndExecute;
