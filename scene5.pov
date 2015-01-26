#include "hand.inc"
#include "colors.inc"
#include "utils.inc"
#include "pokemon_ball.inc"
#include "mTexture.inc"

#declare Camera_3_0 = camera {
	location < 10, 0, 0>
	look_at < 0, 0.0, 0.0>
}

#declare Camera_3_1 = camera {
	location < -5,5,0>
	look_at <0,2,0>
}

light_source {
	< 100.0, 100, 100>
	rgb <1.000000, 1.000000, 1.000000> * 1.0
}

#declare m_Hand = object{ 
	m_hand 
	translate<-1.2273,-0.6280,-0.0003> 
	scale<130,130,130> 
	rotate<180,0,0>
}

#declare m_hand_ball = union {
	object{ m_Hand scale<2.1,2.1,2.1> texture{ HandTexture} }
	object{ Pokball rotate<0,30,30> scale<1.1,1.1,1.1> translate<-0.5,2.85,0.1>}
	no_shadow
}

background{ White }

camera{ Camera_3_0 }
object{ m_Hand  scale 2.1 texture{ HandTexture} }

//#if (clock <= 2.0)
//camera { Camera_3_0 }
//object { 
//	m_hand_ball
//	rotate<time_macro(-30,30,2,0),-120,time_macro(30,-90,2,0)> 
//	translate<time_macro(0,4.5,2,0),-4.3,time_macro(5,0,2,0)> 
//}
//// init: -30, -120, 30   0, -4.3, 5
//// final: 30, -120, -90 4.5, -4.3, 0
//#else // 4sec
//camera { Camera_3_1 }
//object {
//	m_hand_ball
//	rotate<0,0,time_macro(0,30,2,2)>
//	translate <time_macro(0,-4,2,2),0,0>	
//}
//#end