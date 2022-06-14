
private _posATL = v1 modelToWorld [0,0,0];


private _ps0 = "#particlesource" createVehicleLocal _posATL;
_ps0 setParticleParams [
	["\A3\Data_F\ParticleEffects\Universal\Universal", 16, 10, 32], "", "Billboard",
	0, 1, [0, 0, 0.5], [0, 0, 50], 1, 1, 0.9, 0.3, [1.5],
	[[1,1,1, 0.0], [1,1,1, 0.3], [1,1,1, 0.0]],
	[0.75], 0, 0, "", "", _ps0, rad -45];
_ps0 setParticleRandom [0.2, [1, 1, 0], [0.5, 0.5, 0], 0, 0.5, [0, 0, 0, 0], 0, 0];
_ps0 setDropInterval 0.3;


private _ps1 = "#particlesource" createVehicleLocal _posATL;
_ps1 setParticleParams [
	["\A3\Data_F\ParticleEffects\Universal\Universal", 16, 7, 1], "", "Billboard",
	1, 3, [0, 0, 0.5], [0, 0, 50], 1, 1.275, 1, 0.066, [4, 5, 10, 10],
	[[0.3, 0.3, 0.3, 0.33], [0.4, 0.4, 0.4, 0.33], [0.2, 0.2, 0, 0]],
	[0, 1], 1, 0, "", "", _ps1];
_ps1 setParticleRandom [0, [0, 0, 0], [0.33, 0.33, 0], 0, 0.25, [0.05, 0.05, 0.05, 0.05], 0, 0];
_ps1 setDropInterval 0.05;


private _ps2 = "#particlesource" createVehicleLocal _posATL;
_ps2 setParticleParams [
	["\A3\Data_F\ParticleEffects\Universal\Universal", 16, 9, 1], "", "Billboard",
	1, 5, [0, 0, 0.5], [0, 0, 50], 1, 1.275, 1, 0.066, [4, 5, 10, 10],
	[[0.1, 0.1, 0.1, 0.75], [0.4, 0.4, 0.4, 0.5], [1, 1, 1, 0.2]],
	[0], 1, 0, "", "", _ps2];
_ps2 setParticleRandom [0, [0, 0, 0], [0.5, 0.5, 0], 0, 0.25, [0.05, 0.05, 0.05, 0.05], 0, 0];
_ps2 setDropInterval 0.06;

while {true} do {
_ps0 setPos (getPos v1);
_ps1 setPos (getPos v1);
_ps2 setPos (getPos v1);
sleep 0.1;
};