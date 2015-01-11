#include "colors.inc"
#include "utils.inc"
#include "gameboy.pov"
#include "desk.inc"
#include "finger.inc"

#local camera_x = 0;
#local camera_y = 20;
#local camera_z = -20;

#local camera_p = 0;
#local camera_q = 0;
#local camera_r = 0;

#local camera_a = 0;
#local camera_b = 0;
#local camera_c = 0;

// initial 100,100,-100, 0,0,0, 0,0,0
// finish 0,20,-20,  40,0,0,  3,0,7

camera {
	perspective 
	location < camera_x, camera_y, camera_z>
	right x * 1
	up y * 3/4
	look_at < 0.0, 0.0, 0.0>
	rotate <camera_p, camera_q, camera_r>
	translate <camera_a, camera_b, camera_c>
}

light_source {
	< 0.0, 100, 100>
	rgb <1.000000, 1.000000, 1.000000> * 1.0
}

#if (clock < 1)
	Gameboy_Open(0)
	object{Gameboy}
	object{Desk rotate<90,0,0> scale<10,10,10> translate<0,-2,0>}
	//object{hand scale<5,5,5> rotate<90,-90,0> translate<40,2,13>}
#else
	
#end

