#include "colors.inc"
#include "pokemon_ball.pov"
#include "head.inc"

light_source { <500, 0, -1000> White } 

camera {
	location<0,0,-20>
	look_at<0,0,0>	
}

#declare obj_1 = sphere{
	<0,0,0> , 2
	pigment{ Red  transmit .5}	
}

object { Pokball translate<0,0,-15>}
object {
	open_pok_ball_animation(40)
	scale<1.2,1.2,1.2>
	translate <9,0,-10>
	rotate<0,40,0>
}
