#include "colors.inc"
#include "pokemon_ball.pov"
#include "head.inc"
#include "utils.inc"

light_source { <500, 0, -1000> White } 

camera {
	location 0.5*<-10,-10,-10>
	look_at<0,0,0>	
}

#local P = 0;
#local Q = -20;
#local R = -15;

#if (clock < 3)
#local P = clock*360; // 1 sec 1 round
#local Q = -20 + clock*20; // 1 sec 20 degree
#local R = -15 + clock* 10; // 1 sec 10 degree
object{ Pokball rotate<P,Q,R>}
#else // clock >= 3
#local P = 0 + (clock-3)*10;
#local Q = 40 + (clock-3)*10;
#local R = 15 + (clock-3)*10;
open_pok_ball_animation((clock-3)*15, P, Q, R)
#end
