#include "colors.inc"
#include "utils.inc"
#include "tree.inc"
#include "path.inc"
#include "ground.inc"

// Main Start
show_axes()

//draw_path(0,0)
//draw_path(1,0)
//draw_path(1,1)
//draw_path(1,2)
//draw_path(1,3)
//draw_path(0,3)
//draw_path(2,0)
//draw_path(3,0)
//draw_path(4,0)
//draw_path(4,1)
//draw_path(4,2)
//draw_path(4,3)
//draw_path(5,3)
//draw_path(6,3)
//draw_path(7,3)
//draw_path(8,3)
//
//draw_path(7,2)
//draw_path(7,1)
//draw_path(7,0)
//
//draw_path(8,2)
//draw_path(8,1)
//draw_path(8,0)

// WorkSpace


// Camera
#declare Camera_0 = 
	camera { 
		/*ultra_wide_angle*/ 
		angle 47        
		location 10*<-1.7,3.0,-2.5>
		right     x*image_width/image_height
		look_at < -0.2, 1.0, 0.75>
	}
camera{ Camera_0 rotate<0,20,0> translate<8,0,8>} 

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
       
// Ground
draw_ground_sqar(0,0,31,21,0)

draw_ground_sqar(9,0,11,15,1)
draw_ground_sqar(11,0,31,21,1)

draw_ground_sqar(20,0,23,5,2)
draw_ground_sqar(23,0,31,21,2)

draw_ground_sqar(27,0,31,4,3)