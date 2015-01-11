#include "colors.inc"
#include "utils.inc"

#declare c = rgb_256(100,100,100);

#declare GameboyBody = box{<0,0,0>, <9,2,15> pigment{Gray}}
#declare GameboyScreen = box{<1,2,7>,<8,2.03,14> pigment{c}}
#declare GameboyArrow = union{
	box{<1,2,3>, <2,2.03,4>}
	box{<2,2,2>, <3,2.03,3>}
	box{<2,2,3>, <3,2.03,4>}
	box{<2,2,4>, <3,2.03,5>}	
	box{<3,2,3>, <4,2.03,4>}
	pigment{Black}
}
#declare GameboyButton = union{
	cylinder{<6,2,3>, <6,2.03,3>, 0.6 pigment{rgb_256(112,4,31)}}
	cylinder{<7.5,2,4>, <7.5,2.03,4>, 0.6 pigment{rgb_256(112,4,31)}}
}
	
#declare Gameboy = union {
	object{GameboyBody}
	object{GameboyScreen}
	object{GameboyArrow}
	object{GameboyButton}
}

#declare GameboyOpen = union {
	object{GameboyBody}
	object{GameboyScreen pigment{Black} }
	object{GameboyArrow}
	object{GameboyButton}
}

#macro Gameboy_Open(n)
	#if (n = 0)
		object{ Gameboy }
	#else
		object{ GameboyOpen }
	#end
#end