#include "utils.inc"
#include "text.inc"
#include "title.inc"

#declare Camera_2_1 = camera {
	perspective 
	location < 0.0, 0.0, -5>
	right x * 1
	up y * 3/4
	angle 60
	look_at < 0.0, 0.0, 0.0>
}

#declare Camera_2_2 = camera {
	perspective 
	location < 0.0, 0.0, time_macro(-80, -5,1.5,1.5)>
	right x * 1
	up y * 3/4
	angle 60
	look_at < 0.0, 0.0, 10.0>
}

light_source {
	< 30, 30, -100>
	rgb <1.000000, 1.000000, 1.000000> * 1.0
}

background{ Black }

#if (clock <= 1.5 )
object{ m_Text  translate<time_macro(5,-15,2,0),0,0>}
camera{ Camera_2_1 }
#else
#if (clock <= 3.0)
camera{ Camera_2_2 }
object{ pokemon_logo }
#else
#if (clock <= 4.0)
camera{ Camera_2_2 }
object{ pokemon_logo }
#else // 5sec
camera{ Camera_2_2 }
object { pokemon_logo translate<0,0,time_macro(0,-5,1,4)>}
#end
#end
#end