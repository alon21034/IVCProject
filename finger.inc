#include "utils.inc"
#include "colors.inc"

#declare palm = box {
	<-1,-1,-1>, <1,1,1>
	pigment{ Yellow }
	scale<.8,.8,.4>
}

#declare finger = box {
	<-1,-1,-1>, <1,1,1>
	scale<.25,1.5,.25>
	translate<0,1,0>
	pigment{Blue}
}

#declare hand = union {
	object{ palm }
	object{ finger scale<1,.4,1> translate<-.2,.8,0> rotate<0,0,45,>}
	object{ finger translate<-.5,0,0>}
	object{ finger scale<1,.4,1> translate<-.2,.8,0> rotate<0,0,-10>}
	object{ finger scale<1,.4,1> translate<.1,.8,0> rotate<0,0,-20>}
	object{ finger scale<1,.3,1> translate<.2,1,0> rotate<0,0,-40>}
}