#include "utils.inc"
#include "colors.inc"

#declare ball = sphere {
	<0,0,0>, 1
	pigment{ rgb_256(230,227,71) }	
}

#declare ball_feet = union {
	object { ball }
	sphere {
		<0.8,0,0.6>, 0.2
		pigment{ Red }	
	}
	sphere {
		<0.8,0,-0.6>, 0.2
		pigment{ Red }	
	}
}

#declare ball_head = union {
	object { ball }
	cone {
		<0.2,0.8,0>, 0.4
		<0.4,1.7,0>, 0
		pigment{ Gray }
		finish { phong 100 }
	}	
	sphere {
		<0.7,0,0.5>, 0.2
		pigment{ Black }	
	}
	sphere {
		<0.7,0,-0.5>, 0.2
		pigment{ Black }	
	}
	sphere {
		<0.82,0,0.62>, 0.05
		pigment{ White }	
	}
	sphere {
		<0.82,0,-0.62>, 0.05
		pigment{ White }	
	}
	sphere {
		<0.75,-0.3,0>, 0.3
		scale<1,0.8,1.2>
		pigment{ Red }	
	}
}

#declare ball_tail = union {
	object { ball }
	cone {
		<-0.2,0.8,0>, 0.3
		<-0.4,2.2,0>, 0
		pigment{ Gray }
		finish { phong 60 }
	}	
}

#declare m_bug = union {
	object{ ball_head }
	object{ ball_feet scale<0.9,0.9,0.9> translate<-0.2,-1.6, 0>}
	object{ ball_feet scale<0.8,0.8,0.8> translate<-1, -2.5, 0>}
	object{ ball_feet scale<0.7,0.7,0.7> translate<-2, -3, 0>}
	object{ ball scale<0.7,0.7,0.7> translate<-3, -3.2, 0>}
	object{ ball scale<0.65,0.65,0.65> translate<-4,-3.4, 0>}
	object{ ball_tail scale<0.6,0.6,0.6> translate<-5,-3.5, 0>}
}