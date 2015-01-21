#include "colors.inc"
#include "utils.inc"
#include "ground.inc"
#include "building.inc"
#include "character.inc"
#include "tree.inc"
#include "grass.inc"
#include "path.inc"

#declare Camera_3_1 = camera {
	perspective 
	location < 4, 2, 20>
	look_at <time_macro(100, 0, 1, 0), 80, time_macro(100, 0, 1, 0)>
}

#declare Camera_3_2 = camera { 
	perspective
	location < 4,2, 20 >
	look_at < time_macro(0, 4, 1, 1), time_macro(80, 2, 1, 1), time_macro(0, 4, 1, 1) >	
}

#declare Camera_3_3 = camera { 
	perspective
	location < time_macro(4, -12, 1, 2), time_macro(2, 6, 1, 2), time_macro(20, 4, 1, 2) >
	look_at <4,2,4>
}

#declare Camera_3_4 = camera { 
	perspective
	location <time_macro(-12, 8, 8, 3), time_macro(6, 4, 5, 3), 4>
	look_at < time_macro(4, 18, 8, 3) ,2, time_macro(4, 6, 8, 3)>	
}

light_source{<1500,1500,-2000> color White}

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
draw_building(0, 0)

draw_path_square(1,2,2,12,0)
draw_path_square(2,6,14,7,0)
draw_path_square(26, 6, 32, 7, 0)
draw_path_square(30, 8, 31, 16, 0)
draw_path_square(32, 15, 40, 16, 0)

draw_tree_square(4,0,12,4,0)
draw_tree_square(6,10,12,14, 0)
draw_tree_square(34, 0, 38, 12, 0)

draw_grass_square(16,0, 24, 16, 0)

#macro draw_character( X, Y, A, B)
object { get_walk_character(A) scale<.5,.5,.5> rotate<-90,-90*B,0> translate<1,0.6,1> translate<X, 0, Y>}
#end

#macro character_walk(X1,Y1, X2, Y2, B, C, O) 
draw_character(
	time_macro(X1,X2, C, O), 
	time_macro(Y1,Y2,C,O), 
	15 - abs(mod(time_macro(0,C*120, C, O),60) - 30),
	B
)
#end

#if (clock <= 1.0) 
	camera{ Camera_3_1 }
#else 
#if (clock <= 2.0)
	camera{ Camera_3_2 }
#else
#if (clock <= 3.0)
	camera{ Camera_3_3 }
	character_walk(2, 2, 2, 6, 2, 1, 2)
#else
#if (clock <= 11.0)
	camera{ Camera_3_4 }
	character_walk(2, 6, 18, 6, 1, 8, 3)
#else
	camera{ Camera_3_4 }
	draw_character(18, 6, 0, 1)
	text {
		ttf "courier-new.ttf" "!?" .5 0
		pigment { Black }
		rotate<0,90,0>
		translate<18,time_macro(3, 1.6, 1, 11),6>
	}
#end
#end
#end
#end