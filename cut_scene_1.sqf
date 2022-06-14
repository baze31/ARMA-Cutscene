// by ALIAS
// null = [] execVM "AL_movie\cut_scene_1.sqf";
// Tutorial: https://www.youtube.com/aliascartoons

//waitUntil {!isnil "video_done"};if (video_done) exitWith {};

if (!hasInterface) exitWith {};
cutText ["", "BLACK IN", 0];

/* ----- how to use camera script -----------------------------------------------------------------------

_camera_shot = [position_1_name, position_2_name, target_name, duration, zoom_level1, zoom_level_2, attached, x_rel_coord, y_rel_coord, z_rel_coord,screen_effect,transition_effect,transition_duration,sound_file_name] execVM "AL_movie\camera_work.sqf";

Where
_camera_shot	- string, is the name/number of the camera shot, you can have as many as you want see examples from down bellow
position_1_name - string, where camera is created, replace it with the name of the object you want camera to start from
position_2_name - string, the object where you want camera to move, if you don't want to move from initial position put the same name as for position_1_name
target_name   	- string, name of the object you want the camera to look at
duration 		- seconds, how long you want the camera to function on current shot
zoom_level_1 	- takes values from 0.01 to 2, FOV (field of view) value for initial position
zoom_level_2	- takes values from 0.01 to 2, FOV value for second position, if you don't to change you can give the same value as you did for zoom_level_1
attached		- boolean, if you want to attach camera to an moving object its value has to be true, otherwise must be false
					in this case position_1_name must have the same value as position_2_name
x_rel_coord		- meters, relative position to the attached object on x coordinate
y_rel_coord		- meters, relative position to the attached object on y coordinate
z_rel_coord		- meters, relative position to the attached object on z coordinate

screen_effect	- predefined values: "none", "nightvision", "thermal", "blackwhite", "grain", "blur", "wet","chromatic","invert"

transition_effect	- transition between shots, predefined values: "none", "black","white", "blur"

transition_duration	- seconds, the duration of transition between shots

sound_effect	- "NoSound" or sound file name you want to play during shots, be aware the file needs to exist under mission folder and must be defined in description.ext

last_shot		- boolean, true if is the last shot in your movie, false otherwise

====================== TEXT ========================================================================================
null = [_title_text,_title_duration,_title_pozition,_text_size,_text_color] execVM "AL_movie\txt_display.sqf";
title_text		- string, text you want to display on the screen
title_duration	- seconds, how long the text stays on screen
title_pozition	- predefined values: "top_right", "middle_right", "bottom_right", "center", "center_bottom", "center_top", "left_bottom", "left_middle", "left_top"
text_size		- number, text size
-----------------------------------------------------------------------------------------------------------*/

// - do not edit or delete the lines downbelow, this line must be before first camera shot
loopdone = false;
while {!loopdone} do {
//^^^^^^^^^^^^^^^^^^^^^^ DO NOT EDIT OR DELETE ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


// EXAMPLES------ insert your lines for camera shots starting from here -----------------------------------------

// Start
_txt_1 = ["Operation Lost and Found",5,"center","3","#FFF000"] execVM "AL_movie\txt_display.sqf";
// -------------------------------------
_firstshot = [cam1, cam1, tgt1, 7, 0.2, 0.2, false, 0, 0, 0,"grain","black",4,"none",FALSE] execVM "AL_movie\camera_work.sqf";
waitUntil {scriptdone _firstshot};

// Bottom cam looking at chopper
_txt_2 = ["Created by Cpt.F.Pepe",5,"center_bottom","1","#FF0000"] execVM "AL_movie\txt_display.sqf";
// -------------------------------------
_secondshot = [v1, v1, v1, 5, 0.7, 0.7, true, 12, 50, -20,"grain","none",0,"none",FALSE] execVM "AL_movie\camera_work.sqf";
waitUntil {scriptdone _secondshot};

// Train tracks guy
_txt_3 = ["",30,"top_right","0.5","#FFFFFF"] execVM "AL_movie\txt_display.sqf";
// -------------------------------------
_thirdshot = [cam2, cam2, tgt2, 10, 0.7, 0.7, false, 0, 0, 0,"none","black",0,"op1",FALSE] execVM "AL_movie\camera_work.sqf";
waitUntil {scriptdone _thirdshot};

// Jetfire
_txt_4 = ["Jetfire - They did what to the midget?!",1,"center_bottom","0.5","#FFFFFF"] execVM "AL_movie\txt_display.sqf";
// -------------------------------------
_4thshot = [cam3, cam3, tgt4, 3, 0.5, 0.5, false, 0, 0, 0,"none","none",0,"convo",FALSE] execVM "AL_movie\camera_work.sqf";
waitUntil {scriptdone _4thshot};

// Intrax
_txt_5 = ["Intrax - Yeah, Took him hostage. It was hilarious",2,"center_bottom","0.5","#FFFFFF"] execVM "AL_movie\txt_display.sqf";
// -------------------------------------
_5thshot = [cam4, cam4, tgt3, 3, 0.5, 0.5, false, 0, 0, 0,"none","none",0,"op2",FALSE] execVM "AL_movie\camera_work.sqf";
waitUntil {scriptdone _5thshot};

// Tetre
_txt_6 = ["Tetre - It does sound like a fun night out, i'll admit that!",2,"center_bottom","0.5","#FFFFFF"] execVM "AL_movie\txt_display.sqf";
// -------------------------------------
_6thshot = [cam6, cam6, tgt5, 4, 0.5, 0.5, false, 0, 0, 0,"none","none",0,"snip1",FALSE] execVM "AL_movie\camera_work.sqf";
waitUntil {scriptdone _6thshot};

// Woods cam
_txt_7 = ["",5,"center_bottom","0.5","#FFFFFF"] execVM "AL_movie\txt_display.sqf";
// -------------------------------------
_7thshot = [cam5, cam5, v1, 4, 1.2, 0.6, false, 0, 0, 0,"none","none",0,"none",FALSE] execVM "AL_movie\camera_work.sqf";
waitUntil {scriptdone _7thshot};

// Tetre
_txt_8 = ["Tetre - Where are we going? And why the flight over night? Seems a little secretive if you ask me",3,"center_bottom","0.5","#FFFFFF"] execVM "AL_movie\txt_display.sqf";
// -------------------------------------
_8thshot = [cam6, cam6, tgt5, 5, 0.5, 0.5, false, 0, 0, 0,"none","none",0,"snip1",FALSE] execVM "AL_movie\camera_work.sqf";
waitUntil {scriptdone _8thshot};

// Pepe
_txt_9 = ["Pepe - Some base all the way north, SOCOM got angsty after some failed coup, so we'll be stationed here and doing regular patrols",4,"center_bottom","0.5","#FFFFFF"] execVM "AL_movie\txt_display.sqf";
// -------------------------------------
_9thshot = [cam7, cam7, tgt6, 7, 0.5, 0.5, false, 0, 0, 0,"none","none",0,"none",FALSE] execVM "AL_movie\camera_work.sqf";
waitUntil {scriptdone _9thshot};



// Lake shot	
// no text here
// -------------------------------------
_10thshot = [cam8, cam9, tgt7, 10, 0.7, 0.3, false, 0, 0, 0,"none","none",0,"snip5",FALSE] execVM "AL_movie\camera_work.sqf";
waitUntil {scriptdone _10thshot};


// Ruski shot
// no text here
// -------------------------------------
_11thshot = [cam10, cam10, tgt8, 3, 1, 1, false, 0, 0, 0,"none","none",0,"snip6",FALSE] execVM "AL_movie\camera_work.sqf";
waitUntil {scriptdone _11thshot};

// 
_txt_12 = ["I'm hoping we won't hike during the night, i'm getting real tired of these NVG's!",2,"center_bottom","0.5","#FFFFFF"] execVM "AL_movie\txt_display.sqf";
// -------------------------------------
_12thshot = [cam6, cam6, tgt5, 5, 0.5, 0.5, false, 0, 0, 0,"none","none",0,"snip1",FALSE] execVM "AL_movie\camera_work.sqf";
waitUntil {scriptdone _12thshot};

// Intrax
_txt_13 = ["Intrax - I'm sure we'll be fine no matter what time of day, ain't that right peps?",4,"center_bottom","0.5","#FFFFFF"] execVM "AL_movie\txt_display.sqf";
// -------------------------------------
_13thshot = [cam4, cam4, tgt3, 6, 0.5, 0.5, false, 0, 0, 0,"none","none",0,"op2",FALSE] execVM "AL_movie\camera_work.sqf";
waitUntil {scriptdone _13thshot};

// Pepe
_txt_14 = ["Pepe - Sounds good, let's keep it that way too, huh?",1,"center_bottom","0.5","#FFFFFF"] execVM "AL_movie\txt_display.sqf";
// -------------------------------------
_14thshot = [cam7, cam7, tgt6, 3, 0.5, 0.5, false, 0, 0, 0,"none","none",0,"none",FALSE] execVM "AL_movie\camera_work.sqf";
waitUntil {scriptdone _14thshot};

// Pepe
_txt_15 = ["What the hell?! Missile, missile, missile!",1,"center_bottom","0.5","#FFFFFF"] execVM "AL_movie\txt_display.sqf";
// -------------------------------------
_15thshot = [cam7, cam7, tgt6, 2, 0.5, 0.5, false, 0, 0, 0,"none","none",0,"none",FALSE] execVM "AL_movie\camera_work.sqf";
waitUntil {scriptdone _15thshot};

// Explosion
// -------------------------------------
_16thshot = [cam13, tgt9, v1, 8, 0.7, 0.3, false, 0, 0, 0,"none","none",0,"none",FALSE] execVM "AL_movie\camera_work.sqf";
waitUntil {scriptdone _16thshot};

// Ground shot of chopper falling
// -------------------------------------
_17thshot = [cam11, v1, v1, 5, 0.7, 0.7, false, 0, 0, 0,"none","none",0,"none",FALSE] execVM "AL_movie\camera_work.sqf";
waitUntil {scriptdone _17thshot};

// -------------------------------------
_18thshot = [cam14, cam15, v1, 10, 0.5, 0.5, false, 0, 0, 0,"thermal","none",0,"none",FALSE] execVM "AL_movie\camera_work.sqf";
waitUntil {scriptdone _18thshot};

// -------------------------------------
_19thshot = [cam12, cam12, tgt9, 7, 0.2, 0.2, true, 0, 0, 0,"none","none",0,"none",TRUE] execVM "AL_movie\camera_work.sqf";
waitUntil {scriptdone _19thshot};

// --------------->> end of camera shots <<---------------------------------------------------------
};
cutText [" ", "BLACK IN", 3];
_camera = "camera" camCreate (getpos player);
_camera cameraeffect ["terminate", "back"];
camDestroy _camera;
"dynamicBlur" ppEffectEnable true;   
"dynamicBlur" ppEffectAdjust [100];   
"dynamicBlur" ppEffectCommit 0;     
"dynamicBlur" ppEffectAdjust [0.0];  
"dynamicBlur" ppEffectCommit 4;