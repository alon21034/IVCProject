#include "utils.inc"
#include "colors.inc"

#declare tornado_cone = cone {
	<0,0,0>, 1,
	<0,0,10>, 4
	pigment { Gray }
	
	      texture{ pigment{ 
				 gradient <0,0.4,1> turbulence 0.8
                         color_map {
                                     [0.1 rgb <0.1,0.1,0.1>]
                                     [0.3 rgb <0.2,0.2,0.2>]
                                     [0.4 rgb <0.5,0.5,0.5>]
                                     [0.5 rgb <0.9,0.9,0.9>]
                                     [0.6 rgb <0.5,0.5,0.5>]
                                     [0.9 rgb <0.2,0.2,0.2>]
                        }
                       }
                scale 2
                finish {ambient 1 diffuse 0} }    
}

//sphere {
//	<0,0,0>, 1
//	scale<2,0.4,0.1>
//	pigment{ Black }	
//}


