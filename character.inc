#include "utils.inc"
#include "colors.inc"

camera {
	perspective 
	location < 0.0, 10.0, 0>
	right x * 1
	up y * 3/4
	angle 60
	look_at < 0.0, 0.0, 0.0>
}
light_source {
	< 0.0, 100, 100>
	rgb <1.000000, 1.000000, 1.000000> * 1.0
}

// head
intersection {
sphere {
	<0,0,1>, 1 
}
cylinder {
	<0,2,-4>, <0,-2,-4>, 5.4
}
pigment{ Yellow }
}
// hat
difference {
	sphere {
		<0,0,1>, 1	
	}
	cylinder {
		<0,2,-4>, <0,-2,-4>, 5.4	
	}
	pigment{ Blue }
}

// eyes
sphere {
	<0.2, 0.65, 1>, 0.4
	pigment{ White }	
}
sphere {
	<0.2,1.05,1>, 0.05
	pigment{ Black }	
}
sphere {
	<-0.2, 0.65, 1>, 0.4
	pigment{ White }	
}
sphere {
	<-0.2, 1.05, 1>, 0.05
	pigment{ Black }	
}
// mouth

// body
cone {
	<0,0,-1>, 0.8,
	<0,0,0.2>, 0.5
	pigment{ Brown }	
}
// arm
cone {
	<0.5, 0, 0.15>, 0.2
	<0.8, 0, -0.65>, 0.18
	pigment { Brown }	
}
cone {
	<-0.5, 0, 0.15>, 0.2
	<-0.8, 0, -0.65> , 0.18
	pigment { Brown }	
}
// hand
sphere {
	<0.8, 0, -0.65>, 0.3
	pigment { Red }	
}
sphere {
	<-0.8, 0, -0.65>, 0.3
	pigment { Red }	
}
// leg
intersection {
sphere {
	<-0.4, 0, -1>, 0.4
	pigment { Blue }	
}
box {
	<-1.4, -1, -1>, <0.6, 1, 1>	
}
scale<0.9,2,0.8>
translate<0,0.5,-0.4>
}

intersection {
sphere {
	<0.4, 0, -1>, 0.4
	pigment { Blue }	
}
box {
	<-0.6, -1, -1>, <1.4, 1, 1>	
}
scale<0.9,2,0.8>
translate<0,0.5,-0.4>
}
