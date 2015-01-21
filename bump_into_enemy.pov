#include "utils.inc"
#include "colors.inc"

camera {
	perspective 
	location < 0.0, 0.0, -5>
	right x * 1
	up y * 3/4
	angle 60
	look_at < 0.0, 0.0, 0.0>
}

background{ White }

light_source {
	< 0.0, 100, 100>
	rgb <1.000000, 1.000000, 1.000000> * 1.0
}

