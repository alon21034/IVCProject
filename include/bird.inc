#include "colors.inc"
#include "bird/body.inc"
#include "bird/head.inc"
#include "bird/eyes_1.inc"
#include "bird/eyes_2.inc"
#include "bird/hair_1.inc"
#include "bird/hair_2.inc"
#include "bird/leg_left.inc"
#include "bird/leg_right.inc"
#include "bird/neck.inc"
#include "bird/tail1.inc"
#include "bird/tail2.inc"
#include "bird/tail3.inc"
#include "bird/wing_left.inc"
#include "bird/wing_right.inc"
#include "utils.inc"
#include "mTexture.inc"

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
	object { m_bird_wing_left_1	pigment { BirdWingBrownColor }finish{ ambient .5 phong 1} scale<1.05,1.05,1.05>}
	object { m_bird_wing_left_2	pigment { BirdWingYellowColor }finish{ ambient .5 phong 1} scale<1.05,1.05,1.05>}
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
	object { m_bird_wing_right_1	pigment { BirdWingBrownColor }finish{ ambient .5 phong 1}}
	object { m_bird_wing_right_2	pigment { BirdWingYellowColor }finish{ ambient .5 phong 1}}
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

#declare m_bird_hair = union {
	object { 
		m_bird_hair_1
		pigment { BirdHairYellowColor } 
		finish{ ambient .5 phong 1}
	}
	object { 
		m_bird_hair_2 	
		pigment { BirdHairBrownColor } 
		finish{ ambient .5 phong 1} 
	}
	translate -1 * <-0.112862423062, 1.74698328972, 3.72397685051>
	scale 1.2
	translate <-0.112862423062, 1.4, 4>
}

#declare m_wing_open_left = object { m_bird_wing_left  rotate<-20,-20,20> translate<1.3,-.5,.6>}
#declare m_wing_open_right = object { m_bird_wing_right rotate<20,20,-20> translate<-1,.5,-.3>}

#declare m_bird_model = union {
	object { m_bird_body 		}
	object { m_bird_eyes_1 	}
	object { m_bird_eyes_2 	}
	object { m_bird_beak		}
	object { m_bird_head_1 	}
	object { m_bird_hair 	}
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
	object { m_bird_body
		pigment { BirdBodyColor }
		normal { bozo 2.0 scale 2 }
		finish{ phong 10 ambient .2 diffuse .2 phong 1}
	}
	object { m_bird_eyes_1 	pigment { BirdEyeWhite } finish{ ambient .5 phong 1} }
	object { m_bird_eyes_2 	pigment { Black } finish{ ambient .5 phong 1} }
	object { m_bird_beak		pigment { BirdBeakColor }}
	object { m_bird_head_1 	pigment { BirdHeadYellowColor } finish{ ambient .5 phong 1} }
	object { m_bird_hair }
	object { m_bird_leg_left	pigment { BirdLegColor }}
	object { m_bird_leg_right	pigment { BirdLegColor }}
	object { m_bird_neck		pigment { BirdNeckColor }}
	object { m_bird_tail_1		pigment { BirdTailYellowColor }}
	object { m_bird_tail_2		pigment { BirdTailBrownColor }}
	object { m_bird_tail_3		pigment { BirdTailYellowColor }}
	object { m_bird_wing_left }
	object { m_bird_wing_right}
}

#macro get_bird_wind_open(C, O)
union {
	object { m_bird_body 		pigment { BirdBodyColor } finish{ ambient .2 diffuse .2 phong 1}}
	object { m_bird_eyes_1 	pigment { BirdEyeWhite } finish{ ambient .5 phong 1} }
	object { m_bird_eyes_2 	pigment { Black } finish{ ambient .5 phong 1} }
	object { m_bird_beak		pigment { BirdBeakColor }}
	object { m_bird_head_1 	pigment { BirdHeadYellowColor } finish{ ambient .5 phong 1} }
	object { m_bird_hair_1 	pigment { BirdHairYellowColor } finish{ ambient .5 phong 1} }
	object { m_bird_hair_2 	pigment { BirdHairBrownColor } finish{ ambient .5 phong 1} }
	object { m_bird_leg_left	pigment { BirdLegColor }}
	object { m_bird_leg_right	pigment { BirdLegColor }}
	object { m_bird_neck		pigment { BirdNeckColor }}
	object { m_bird_tail_1		pigment { BirdTailYellowColor }}
	object { m_bird_tail_2		pigment { BirdTailBrownColor }}
	object { m_bird_tail_3		pigment { BirdTailYellowColor }}
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

test(-10,10,10)
object { get_bird_wind_open(2, 0) rotate<0,90,90> scale<2,2,2> translate<2, -5, 0>}
