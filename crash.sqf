{_x allowDamage false} forEach allPlayers;
{_x allowDamage false} forEach [v1, v1]; //disables damage for all players, the helicopter, and heli pilot
execVM "route.sqf"; //name of the playback script
v1 engineOn true;
sleep 84; //time before helicopter damage (in seconds)
execVM "fire.sqf";
expl setDamage 1;
addCamShake [10, 10, 25]; // Adds camera shake
sleep 25; //Time before heli gets close to crashing
cutText ["", "BLACK OUT", 1]; //fades player screen
sleep 1;
{_x allowDamage true} forEach [v1, v1d];
{v1 deleteVehicleCrew _x } forEach crew v1;
{deleteVehicle _x} forEach [v1, v1d];
{_x hideObjectGlobal false} forEach [w1, w2, w3, w4];
cutText ["", "BLACK FADED", 3];
sleep 3;
cutText ["", "BLACK IN", 3];
{_x allowDamage true;} forEach allPlayers;        
