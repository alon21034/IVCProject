#include "colors.inc"
#include "body.inc"
#include "head.inc"
#include "eyes_1.inc"
#include "eyes_2.inc"
#include "hair_1.inc"
#include "hair_2.inc"
#include "leg_left.inc"
#include "leg_right.inc"
#include "neck.inc"
#include "tail1.inc"
#include "tail2.inc"
#include "tail3.inc"
#include "wing_left.inc"
#include "wing_right.inc"
#include "utils.inc"

#macro rgb_256 ( R , G ,  B )
rgb<R/256, G/256, B/256>
#end

#declare m_bird_wing_left_1 = difference{
	object{ m_bird_wing_left }
	difference{
	object { m_bird_wing_left }
	sphere{ <-0.3,1.2,3.1> 1.9 }
	}
}

#declare m_bird_wing_left_2 = difference{
	object { m_bird_wing_left }
	sphere{ <-0.3,1.2,3.1> 1.9 }
}

#declare m_bird_wing_left = union {
	object { m_bird_wing_left_1	pigment { rgb_256(117, 53, 26) }finish{ ambient .5 phong 1} scale<1.05,1.05,1.05>}
	object { m_bird_wing_left_2	pigment { rgb_256(240, 238, 44) }finish{ ambient .5 phong 1} scale<1.05,1.05,1.05>}
}

#declare m_bird_wing_left_model = union {
	object { m_bird_wing_left_1 }
	object { m_bird_wing_left_2 }	
}

#declare m_bird_wing_right_1 = difference{
	object{ m_bird_wing_right }
	difference{
	object { m_bird_wing_right }
	sphere{ <-0.3,1.2,3.1> 1.9 }
	}
}

#declare m_bird_wing_right_2 = difference{
	object{ m_bird_wing_right}
	sphere{ <-0.3,1.2,3.1> 1.9}	
}

#declare m_bird_wing_right = union {
	object { m_bird_wing_right_1	pigment { rgb_256(117, 53, 26) }finish{ ambient .5 phong 1}}
	object { m_bird_wing_right_2	pigment { rgb_256(240, 238, 44) }finish{ ambient .5 phong 1}}
}

#declare m_bird_wing_right_model = union {
	object { m_bird_wing_right_1 }
	object { m_bird_wing_right_2 }	
}

#declare m_bird_beak = difference {
	object { m_bird_head }
	sphere{<-0.3,2.17,2.5>, 1}
}

#declare m_bird_head_1 = difference {
	object { m_bird_head }
	m_bird_beak
}

#declare m_wing_open_left = object { m_bird_wing_left  rotate<-20,-20,20> translate<1.3,-.5,.6>}
#declare m_wing_open_right = object { m_bird_wing_right rotate<20,20,-20> translate<-1,.5,-.3>}

#declare m_bird_model = union {
object { m_bird_body 		}
object { m_bird_eyes_1 	}
object { m_bird_eyes_2 	}
object { m_bird_beak		}
object { m_bird_head_1 	}
object { m_bird_hair_1 	}
object { m_bird_hair_2 	}
object { m_bird_leg_left	}
object { m_bird_leg_right	}
object { m_bird_neck		}
object { m_bird_tail_1		}
object { m_bird_tail_2		}
object { m_bird_tail_3		}
object { m_bird_wing_left_model  }
object { m_bird_wing_right_model }
}

#declare m_bird = union {
object { m_bird_body 		pigment { rgb_256(250, 236, 47)} finish{ ambient .2 diffuse .2 phong 1}}
object { m_bird_eyes_1 	pigment { White } finish{ ambient .5 phong 1} }
object { m_bird_eyes_2 	pigment { Black } finish{ ambient .5 phong 1} }
object { m_bird_beak		pigment { rgb_256(237,149,151) }}
object { m_bird_head_1 	pigment { rgb_256(240, 238, 44) } finish{ ambient .5 phong 1} }
object { m_bird_hair_1 	pigment { rgb_256(224, 174, 65) } finish{ ambient .5 phong 1} }
object { m_bird_hair_2 	pigment { rgb_256(117, 53, 26) } finish{ ambient .5 phong 1} }
object { m_bird_leg_left	pigment { rgb_256(117, 53, 26) }}
object { m_bird_leg_right	pigment { rgb_256(117, 53, 26) }}
object { m_bird_neck		pigment { rgb_256(230, 202, 112) }}
object { m_bird_tail_1		pigment { rgb_256(133, 97, 57) }}
object { m_bird_tail_2		pigment { rgb_256(117, 53, 26) }}
object { m_bird_tail_3		pigment { rgb_256(133, 97, 57) }}
object { m_bird_wing_left }
object { m_bird_wing_right}
}

#macro get_bird_wind_open(C, O)
union {
object { m_bird_body 		pigment { rgb_256(250, 236, 47)} finish{ ambient .2 diffuse .2 phong 1}}
object { m_bird_eyes_1 	pigment { White } finish{ ambient .5 phong 1} }
object { m_bird_eyes_2 	pigment { Black } finish{ ambient .5 phong 1} }
object { m_bird_beak		pigment { rgb_256(237,149,151) }}
object { m_bird_head_1 	pigment { rgb_256(240, 238, 44) } finish{ ambient .5 phong 1} }
object { m_bird_hair_1 	pigment { rgb_256(224, 174, 65) } finish{ ambient .5 phong 1} }
object { m_bird_hair_2 	pigment { rgb_256(117, 53, 26) } finish{ ambient .5 phong 1} }
object { m_bird_leg_left	pigment { rgb_256(117, 53, 26) }}
object { m_bird_leg_right	pigment { rgb_256(117, 53, 26) }}
object { m_bird_neck		pigment { rgb_256(230, 202, 112) }}
object { m_bird_tail_1		pigment { rgb_256(133, 97, 57) }}
object { m_bird_tail_2		pigment { rgb_256(117, 53, 26) }}
object { m_bird_tail_3		pigment { rgb_256(133, 97, 57) }}
	object { m_bird_wing_left  
		rotate<time_macro(0,-20,C,O),time_macro(0,-20,C,O),time_macro(0,20,C,O)> 
		translate<time_macro(0,1.3, C, O),time_macro(0,-.5,C,O),time_macro(0,.6,C,O)>
	}
	object { m_bird_wing_right 
		rotate<time_macro(0,20,C,O),time_macro(0,20,C,O),time_macro(0,-20,C,O)> 
		translate<time_macro(0,-1,C,O),time_macro(0,.5,C,O),time_macro(0,-.3,C,O)>
	}
}
#end
//camera {
//	perspective 
//	location < 0.0, 10.0, -5>
//	right x * 1
//	up y * 3/4
//	angle 60
//	look_at < 0.0, 0.0, 0.0>
//}
//light_source {
//	< 0.0, 100, 100>
//	rgb <1.000000, 1.000000, 1.000000> * 1.0
//}
//
//object { m_bird rotate<-90,45,0> scale<2,2,2> translate<2, -5, 5>}
