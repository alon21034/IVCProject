#include "colors.inc"
#include "utils.inc"
#include "gameboy.inc"
#include "desk.inc"
#include "finger.inc"
#include "utils.inc"

#local camera_x = time_macro(100,0,1, 0);
#local camera_y = time_macro(100,20,1, 0);
#local camera_z = time_macro(-100,-20,1, 0);

#local camera_p = time_macro(0,40,1, 0);
#local camera_q = 0;
#local camera_r = 0;

#local camera_a = time_macro(0,3,1, 0);
#local camera_b = 0;
#local camera_c = time_macro(0,7,1, 0);

// initial 100,100, -100, 0,0,0, 0,0,0
// finish 0,    20,   -20,  40,0,0,  3,0,7

plane{ y, -20 texture{pigment{checker Black,White} scale 32 }}

#declare Camera_1_1 = camera {
	perspective 
	location < camera_x, camera_y, camera_z>
	right x * 1
	up y * 3/4
	look_at < 0.0, 0.0, 0.0>
	rotate <camera_p, camera_q, camera_r>
	translate <camera_a, camera_b, camera_c>
}

#declare Camera_1_2 = camera {
	perspective 
	location < 0, time_macro(20,5,0.5,3), time_macro(-20,-5,0.5,3)>
	right x * 1
	up y * 3/4
	look_at < 0.0, 0.0, 0.0>
	rotate <40, 0, 0>
	translate <time_macro(3,4,0.5,3), 0, time_macro(8,11.5,0.5,3)>
}

light_source {
	< 0.0, time_macro(100,40,2,0), 100>
	rgb <1.000000, 1.000000, 1.000000> * 1.0
}

#declare scene_1_desk = object{Desk rotate<90,0,0> scale<10,10,10> translate<0,-2,0>}

object{ scene_1_desk }

#if (clock <= 1)
	camera{ Camera_1_1 }
	Gameboy_Open(0)
#else
#if (clock <= 2)
	camera{ Camera_1_1 }
	Gameboy_Open(0)
	object{hand scale<5,5,5> rotate<90,-90,0> translate<time_macro(30,21.5,1,1),2,13>}
#else
#if (clock <= 2.5)
	camera{ Camera_1_1 }
	Gameboy_Open(0)
	object{hand scale<5,5,5> rotate<90,-90,0> translate<time_macro(21.5,30,0.5,2), 2,13>}
#else
#if (clock <= 3)
	camera{ Camera_1_1}
	Gameboy_Open(1)
#else // 4sec
	camera{Camera_1_2}
	Gameboy_Open(1)
#end
#end
#end
#end

