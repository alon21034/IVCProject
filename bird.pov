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

camera {
	perspective 
	location < 0.0, 0.0, -10>
	right x * 1
	up y * 3/4
	angle 80
	look_at < 0.0, 0.0, 0.0>
}

light_source {
	< 100, 0, 100>
	rgb <1.000000, 1.000000, 1.000000> * 1.0
}

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

#declare m_bird_beak = difference {
	object { m_bird_head }
	sphere{<-0.3,2.17,2.5>, 1}
}

#declare m_bird_head_1 = difference {
	object { m_bird_head }
	m_bird_beak
}

#declare bird = union {
object { m_bird_body 		pigment { rgb_256(240, 238, 44)} finish{ ambient .2 diffuse .2 phong 1}}
object { m_bird_eyes_1 	pigment { White } finish{ ambient .5 phong 1} }
object { m_bird_eyes_2 	pigment { Black } finish{ ambient .5 phong 1} }
object { m_bird_beak		pigment { Red }}
object { m_bird_head_1 	pigment { rgb_256(240, 238, 44) } finish{ ambient .5 phong 1} }
object { m_bird_hair_1 	pigment { rgb_256(224, 174, 65) } finish{ ambient .5 phong 1} }
object { m_bird_hair_2 	pigment { rgb_256(117, 53, 26) } finish{ ambient .5 phong 1} }
object { m_bird_leg_left	pigment { rgb_256(117, 53, 26) }}
object { m_bird_leg_right	pigment { rgb_256(117, 53, 26) }}
object { m_bird_neck		pigment { rgb_256(230, 202, 112) }}
object { m_bird_tail_1		pigment { rgb_256(117, 53, 26) }}
object { m_bird_tail_2		pigment { rgb_256(117, 53, 26) }}
object { m_bird_tail_3		pigment { rgb_256(117, 53, 26) }}
object { m_bird_wing_left_1	pigment { rgb_256(117, 53, 26) }finish{ ambient .5 phong 1} scale<1.05,1.05,1.05>}
object { m_bird_wing_left_2	pigment { rgb_256(240, 238, 44) }finish{ ambient .5 phong 1} scale<1.05,1.05,1.05>}

object { m_bird_wing_right_1	pigment { rgb_256(117, 53, 26) }finish{ ambient .5 phong 1}}
object { m_bird_wing_right_2	pigment { rgb_256(240, 238, 44) }finish{ ambient .5 phong 1}}

}

object { bird rotate<-90,45,0> scale<2,2,2> translate<2, -5, 5>}
