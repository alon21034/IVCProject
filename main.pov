#include "colors.inc"
#include "utils.inc"
#include "tree.inc"

#local grass_green = rgb_256(117, 224, 84);

// ———Main Start———
show_axes()

m_tree

// ———Camera——
#declare Camera_0 = 
	camera { 
		/*ultra_wide_angle*/ 
		angle 47        
		location 3*<-1.7,1.0,-2.5>
		right     x*image_width/image_height
		look_at < -0.2, 1.0, 0.75>
	}
camera{ Camera_0 } 

// ———Sun————
light_source{<1500,1500,-2000> color White}

// ———Sky————
plane{<0,1,0>,1 hollow  
       texture{ pigment{ bozo turbulence 0.76
                         color_map { [0.5 rgb <0.20, 0.20, 1.0>]
                                     [0.6 rgb <1,1,1>]
                                     [1.0 rgb <0.5,0.5,0.5>]}
                       }
                finish {ambient 1 diffuse 0} }      
       scale 10000}
       
// ———Ground——
plane { <0,1,0>, 0 
        texture{ pigment{ color grass_green}
	         normal { bumps 0.75 scale 0.015}
                 finish { phong 0.1}
               } // end of texture
      } // end of plane