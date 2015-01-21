#include "utils.inc"
#include "colors.inc"

#declare palm = box {
	<-1,-1,-1>, <1,1,1>
	scale<.8,.8,.4>
	texture{ HandTexture }
}

#declare finger = sphere_sweep {
	linear_spline, 2, 
	<0,0.6,0>, 0.25,
	<0,-0.6,0>, 0.25
	translate<0,1,0>
	texture{ HandTexture }
}

#declare hand = union {
	object{ palm scale 1.2}
	object{ finger scale<1,1,1> translate<-.2,.8,0> rotate<0,0,45,>}
	object{ finger translate<-.5,.8,0>}
	object{ finger scale<1,1,1> translate<-.2,.8,0> rotate<0,0,-10>}
	object{ finger scale<1,1,1> translate<.1,.8,0> rotate<0,0,-20>}
	object{ finger scale<1,.75,1> translate<.2,1,0> rotate<0,0,-40>}
}

//object{ hand }