#include "colors.inc"
#include "pokemon_ball.inc"
#include "utils.inc"
#include "bird.inc"
#include "glass.inc"

light_source { <500, 0, -1000> White } 

#declare Camera_6_1 = camera {
	location 0.5*<-10,-10,-10>
	look_at<0,0,0>	
}

#declare Camera_6_2 = camera {
	location <-5,time_macro(-5,3,4,6),-5>
	look_at <0,0,0>	
}

#declare Camera_6_3 = camera {
	location <-5,3,-5>
	rotate <0,time_macro(0,-720,2,10),0>
	translate<time_macro(0,-3,2,10),time_macro(0,1,2,10),time_macro(0,-3,2,10)>
	look_at <0,0,0>	
}

background { White }

#local P = 0;
#local Q = -20;
#local R = -15;

#if (clock <= 3.0)
	camera{ Camera_6_1 }
	#local P = clock*360; // 1 sec 1 round
	#local Q = -20 + clock*20; // 1 sec 20 degree
	#local R = -15 + clock* 10; // 1 sec 10 degree
	object{ Pokball rotate<P,Q,R> translate<time_macro(8,0,3,0),0,0>}
#else
#if (clock <= 6.0)
	camera{ Camera_6_1 }
	#local P = 0 + (clock-3)*10;
	#local Q = 40 + (clock-3)*10;
	#local R = 15 + (clock-3)*10;
	open_pok_ball_animation((clock-3)*15, P, Q, R)
	sphere {
		<0,0,0> 0.2
		rotate <time_macro(0,360,3,3), time_macro(0,270,3,3), time_macro(0,180,3,3)>
		scale time_macro(1,4,2,4)
		translate<time_macro(0,-2,2.5,3.5),time_macro(0,1,1,5),0>
		texture { 
			pigment{ 
				bozo turbulence 1.5
				scale 2
				color_map {
					[0.2 rgb <1,0,0>]
					[0.4 rgb <1,1,0>]
					[0.6 rgb <0,1,0>]
					[0.7 rgb <0,1,1>]
					[0.8 rgb <0,0,1>]
					[0.9 rgb <1,0,1>]
					[1.0 rgb <1,1,1>]
				}
			}
		}
	}
#else
#if (clock <= 10.0)
	camera { Camera_6_2 }
	#local tran = time_macro(0,1,4,6);
	object {
		open_pok_ball_animation(45, 30, 70, 45)
		translate time_macro(1,10,4,6) * <1,1,1>	
	}
	sphere {
		<0,0,0> 0.2
		rotate <time_macro(0,360,4,6), time_macro(0,270,4,6), time_macro(0,180,4,6)>
		scale time_macro(4,5,4,6)
		translate <-2, 1, 0>
		texture { 
			pigment{ 
				bozo turbulence 1.5
				scale 2
				color_map {
					[0.2 rgbt <1,0,0,tran>]
					[0.4 rgbt <1,1,0,tran>]
					[0.6 rgbt <0,1,0,tran>]
					[0.7 rgbt <0,1,1,tran>]
					[0.8 rgbt <0,0,1,tran>]
					[0.9 rgbt <1,0,1,tran>]
					[1.0 rgbt <1,1,1,tran>]
				}
			}
		}
	}
	object{ m_bird rotate<-135,60,-30> scale time_macro(.1,.5,4,6)  translate<-1.5,0.6,0> }
#else //12
	camera { Camera_6_3 }
	object{ m_bird rotate<-135,60,-30> scale time_macro(.5,.7,2,10)  translate<-1.5,0.6,0> }
#end
#end
#end

