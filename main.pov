#include "colors.inc"
#include "utils.inc"
#include "tree.inc"
#include "path.inc"
#include "ground.inc"
#include "grass.inc"
//#include "building.inc"

#local height = 0.5;

// Main Start
//show_axes()

// WorkSpace


// Camera
#declare Camera_0 = 
	camera { 
		/*ultra_wide_angle*/ 
		angle 47        
		location (1.2+clock*1.8)*<-1.7,3.0,-2.5>
		right     x*image_width/image_height
		look_at < -0.2, 1.0, 0.75>
	}
camera{ Camera_0 rotate<-20+clock*7,40+3*clock,-10> translate<20-clock*2,0,12-clock*0.8>} 

// initial 1.2, <-20,40,-10>, <20,0,12>
// end 	10, <20,	60,-10>, <8,0,8>

// Sun
light_source{<1500,1500,-2000> color White}

// Sky
//plane{<0,1,0>,1 hollow  
//       texture{ pigment{ bozo turbulence 0.76
//                         color_map { [0.5 rgb <0.20, 0.20, 1.0>]
//                                     [0.6 rgb <1,1,1>]
//                                     [1.0 rgb <0.5,0.5,0.5>]}
//                       }
//                finish {ambient 1 diffuse 0} }      
//       scale 10000}

// ::::::::Path::::::::
draw_path_square(0,7,9,9,0)
draw_path_square(9,7,13,9,1*height)
draw_path_square(11,9,13,15,1*height)
draw_path_square(11,13,23,15,1*height)
//draw_path_square(19,7,23,13,1*height) // grass
draw_path_square(23,7,25,9,2*height)
draw_path_square(25,7,27,13,2*height)
draw_path_square(27,11,28,13,2*height)

// ::::::::Ground::::::::
draw_ground_sqar(0,0,31,21,0)
draw_ground_sqar(9,0,11,15,1*height)
draw_ground_sqar(11,0,31,21,1*height)
draw_ground_sqar(20,0,23,5,2*height)
draw_ground_sqar(23,0,31,21,2*height)
draw_ground_sqar(27,0,31,4,3*height)

// ::::::::Tree::::::::

// comment now, render too slow
//draw_tree_square(0,0,1,6,0)
draw_tree_square(0,16,10,21,0)
draw_tree_square(4,4,8,4,0)
draw_tree_square(11,17,22,21,1*height)
draw_tree_square(9,4,14,5,1*height)
draw_tree_square(23,17,30,21,2*height)
draw_tree_square(27,0,30,3,3*height)

// ::::::::Grass::::::::
draw_grass_square(19,7,22,12,1*height)


// :::::::Building::::::::
//draw_building(10,10,2,2,3*height,1*height)



