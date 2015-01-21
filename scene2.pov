#include "utils.inc"
#include "text.pov"
#include "title.pov"

#declare CAMERA_SCENE_2_1 = camera {
	perspective 
	location < 0.0, 0.0, -5>
	right x * 1
	up y * 3/4
	angle 60
	look_at < 0.0, 0.0, 0.0>
}

#declare CAMERA_SCENE_2_2 = camera {
	perspective 
	location < 0.0, 0.0, time_macro(-100, 5,1.5,1.5)>
	right x * 1
	up y * 3/4
	angle 60
	look_at < 0.0, 0.0, 10.0>
}

light_source {
	< 0.0, 0, -100>
	rgb <1.000000, 1.000000, 1.000000> * 1.0
}

background{ Black }

camera{ CAMERA_SCENE_2_1 }

#if (clock <= 1.5 )
object{ m_Text  translate<time_macro(5,-15,2,0),0,0>}
#else
camera{ CAMERA_SCENE_2_2 }
object{ pokemon_logo }
#end