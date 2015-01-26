#include "colors.inc"
#include "title_inside.inc"
#include "title_outside.inc"
#include "title_p_e.inc"

#declare pokemon_logo = object {
	union {
		object { m_title_inside pigment{Yellow}}
		union{
			object { m_title_outside }
			object { m_title_p_e}
			pigment{Blue}
		}
	}
	translate <-1,-3.5,0>
	rotate <180, 0, 90>
	scale <.7,.7,.7>
	finish{ambient .2 diffuse .4}
}


