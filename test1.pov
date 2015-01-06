#include "colors.inc"

#declare hemi_sphere = intersection{
 	sphere{<0,0,0>,1 scale<1,1,1>}
 	box{<-1,-1,-1>,<1,0,1>}
}

#declare equator = intersection {
	sphere{<0,0,0> 1}
	box{<-1,-1,0.1>, <1,1,1>}	
}

object {equator pigment{Gray50}}
// object { hemi_sphere  rotate<0, 0, 0> pigment{White}}
// object { hemi_sphere  rotate<0, 0, 180> pigment{Red}}


light_source { <300, 300, -300> White }

camera {
	perspective 
	location < 0.0, 0.0, -5>
	right x * 1
	up y * 3/4
	angle 60
	look_at < 0.0, 0.0, 0.0>
}
