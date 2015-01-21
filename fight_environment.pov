#include "colors.inc"
#include "utils.inc"
#include "tree.inc"
#include "ground.inc"
#include "building.inc"
#include "bird.pov"
#include "bug.inc"
#include "grass.inc"
#include "tornado.inc"

#declare Camera_4_0 = 
camera { 
	perspective
	location <8, time_macro(2, 10, 4, 0), time_macro(6, -6, 4, 0)>
	look_at <0,4,0>
}
// 0-4
// throw ball

#declare Camera_4_1 = 
camera {
	perspective
	location<time_macro(8, -4, 4, 4), 10, time_macro(-6,-20,4,4)>
	look_at<0,time_macro(4,8,4,4),0>			
}

//4-8
// start skill(back)

#declare Camera_4_2 = 
camera { 
	perspective
	location<time_macro(-4,-8,2,8), time_macro(10,6,2,8), time_macro(-20,-12,2,8)>
	look_at<0,time_macro(8,7,2,8),0>	
}

//8-10
// start tornado

#declare Camera_4_3 = 
camera {
	perspective
	location <time_macro(-8,-10,3,10),time_macro(6,4,3,10),time_macro(-12,-16,3,10)>
	look_at<0,time_macro(7,4,6,10),0>
}


light_source{<1500,1500,1500> color White}

sky_sphere {
		pigment { 
			bozo turbulence 0.76
			color_map { 
				[0.4 rgb <0.20, 0.20, 1.0>]
				[0.55 rgb <1,1,1>]
				[1.0 rgb <0.5,0.5,0.5>]
			}
		}
    	scale 2
    	translate -1
	emission rgb <0.8,0.8,1>
}

fog{fog_type   2
    distance   50
    color      White
    fog_offset 0.1
    fog_alt    2.0
    turbulence 0.8}

draw_ground_sqar(-100,-100,131,121,0)
object { draw_tree_square(-12,-12, -11, 9, 1)  }
object { draw_tree_square(-11,9, 9, 10, 1) }
object{ draw_grass_square(-4,-4,4,4, 0) scale 4 finish{ phong 1}}

#if (clock <= 4.0)
camera{ Camera_4_0 }
object { 
	m_bug 
	translate<0,4,0> 
	rotate<10 - abs (mod(time_macro(0, 80, 4, 0), 40) - 20),0, 0>
}
#else
#if (clock <= 8.0)
camera{ Camera_4_1 }
object { m_bug translate<0,4,0> }
object { m_bird  rotate<-90,90,0> translate<10,8,0>}
#else
#if (clock <= 10.0)
camera{ Camera_4_2 }
object { m_bug translate<0,4,0> }
object { get_bird_wind_open(2, 8) rotate<time_macro(-90,-60,2,8),90,0> translate<time_macro(10,20,2,8), 8, 0>}
#else
#if (clock <= 13.0)
camera{ Camera_4_3 }
object { m_bug translate<0,4,0> }
object { m_bird  rotate<time_macro(-60,-90,0.5,10),90,0> translate<20,8,0>}
object { tornado_cone rotate<-90,time_macro(0,1440,3,10),0> scale<.8,1.3,.8> translate<time_macro(15,3,3,10),0,0>}
#else
camera{ Camera_4_3 }
object { m_bird  rotate<-90,90,0> translate<20,8,0>}
union {
	object { tornado_cone 	
		rotate<-90,time_macro(0,1080,3,13),0> 
		scale<time_macro(.8,1.4,3,13),time_macro(1.3,1.6,3,13),time_macro(.8,1.4,3,13)> 
		translate<time_macro(3,-15,3,13),0,0> 
	}
	object { m_bug 
		translate<0,time_macro(4,19,3,13),0>
		rotate<0,-time_macro(0,720,3,13),0>
		translate<time_macro(0,-12,3,13),0,0>
	}
}
#end
#end
#end
#end


