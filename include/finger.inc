#include "utils.inc"
#include "colors.inc"
#include "mTexture.inc"

#declare palm = box {
	<-1,-1,-1>, <1,1,1>
	scale<.8,.8,.4>
	texture{ FingerTexture }
}

#declare finger = union {
	sphere_sweep {
		linear_spline, 2, 
		<0,0.6,0>, 0.25,
		<0,-0.6,0>, 0.25
		translate<0,1,0>
		texture{ FingerTexture }
	}
	
	lathe {
		bezier_spline 4,
		<0.1,0.4>, 
		<0.08,0.52>,
		<0.1,0.6>,
		<0,0.6>
		pigment{ rgba_256(180,180,180,0.5) }
		finish{ phong 1 ambient 0.2 diffuse 0.2}
		scale < 1.6, 1.5, 0.4>
		translate <0,0.83,-0.23>
		rotate<0,8,0>
	}	
}

#declare hand = union {
	object{ palm scale 1.2}
	object{ finger scale<1,1,1> translate<-.2,.8,0> rotate<0,0,45,>}
	object{ finger translate<-.5,.8,0>}
	object{ finger scale<1,1,1> translate<-.2,.8,0> rotate<0,0,-10>}
	object{ finger scale<1,1,1> translate<.1,.8,0> rotate<0,0,-20>}
	object{ finger scale<1,.75,1> translate<.2,1,0> rotate<0,0,-40>}
}

//test(0,5,-1)
//object{ hand }

