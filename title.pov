#include "colors.inc"
#include "title_inside.inc"
#include "title_outside.inc"
#include "title_p_e.inc"

camera {
	perspective 
	location < 0.0, 0.0, -5>
	right x * 1
	up y * 3/4
	angle 60
	look_at < 0.0, 0.0, 0.0>
}
light_source {
	< 0.0, 0, -100>
	rgb <1.000000, 1.000000, 1.000000> * 1.0
}

background{ White }
#declare pokemon_logo = object {
	union {
		object { m_title_inside pigment{Yellow}}
		union{
			object { m_title_outside }
			object { m_title_p_e}
			pigment{Black}
		}
	}
	translate <-2,-3,0>
	rotate <180, 0, 90>
	scale <.7,.7,.7>
}

object {pokemon_logo finish{ambient .2 diffuse .4} }


