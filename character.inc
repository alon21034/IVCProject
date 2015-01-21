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
#declare m_character_head = intersection {
	sphere {
		<0,0,1>, 1 
	}
	cylinder {
		<0,2,-4>, <0,-2,-4>, 5.4
	}
	pigment{ Yellow }
}

// hat
#declare m_character_hat = difference {
	sphere {
		<0,0,1>, 1	
	}
	cylinder {
		<0,2,-4>, <0,-2,-4>, 5.4	
	}
	pigment{ Blue }
}

// eyes
#declare m_character_eyes = union {
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
}
// mouth
// empty now…

// body
#declare m_character_body = cone {
	<0,0,-1>, 0.8,
	<0,0,0.2>, 0.5
	pigment{ Brown }	
}

// arm
#declare arm_left = union {
	sphere {
		<0.8, 0, -0.65>, 0.3
		pigment { Red }	
	}
	cone {
		<0.5, 0, 0.15>, 0.2
		<0.8, 0, -0.65>, 0.18
		pigment { Brown }	
	}
}
#declare arm_right = union {
	cone {
		<-0.5, 0, 0.15>, 0.2
		<-0.8, 0, -0.65> , 0.18
		pigment { Brown }	
	}
	sphere {
		<-0.8, 0, -0.65>, 0.3
		pigment { Red }	
	}
}
#declare m_character_arm = union {
	object { arm_right }
	object { arm_left }
}

#macro get_walk_arm(A)
	object { arm_right rotate<-3*A, 0, 0>}
	object { arm_left rotate<3*A,0,0> }
#end

// leg
#declare leg_right = intersection {
	sphere {
		<-0.4, 0, -1>, 0.4
		pigment { Blue }	
	}
	box {
		<-1.4, -1, -1>, <0.6, 1, 1>	
	}
	scale<0.9,2.2,0.8>
	translate<0,0.3,-0.4>
}

#declare leg_left = intersection {
	sphere {
		<0.4, 0, -1>, 0.4
		pigment { Blue }	
	}
	box {
		<-0.6, -1, -1>, <1.4, 1, 1>	
	}
	scale<0.9,2.3,0.8>
	translate<0,0.3,-0.4>
}

#declare m_character_leg = union {
	object { leg_right }
	object { leg_left }
}

#macro get_walk_leg(A)
union {
	object { leg_right rotate<A,0,0>}
	object { leg_left   rotate<-A,0,0>}
}
#end

#declare m_character = union {
	object { m_character_head }
	object { m_character_hat }
	object { m_character_eyes }
	object { m_character_body }
	get_walk_arm(0)
	get_walk_leg(0)
}

#macro get_walk_character(A)
union {
	object { m_character_head }
	object { m_character_hat }
	object { m_character_eyes }
	object { m_character_body }
	get_walk_arm(A)
	get_walk_leg(A)
}
#end

//object{ get_walk_character(0) rotate<0,0,90> }
