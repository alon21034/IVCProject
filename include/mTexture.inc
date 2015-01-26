#include "utils.inc"

// scene1
#declare FingerColor = rgb_256(227,198,152);
// scene3
#declare GrassGreen = rgb_256(13,140,13);
#declare GroundBrown = rgb_256(196, 165, 81);
#declare TreeGreen = rgb_256(10,115,5);

// scene4
#declare BirdBodyColor = rgb_256(245,233,38);
#declare BirdBeakColor = rgb_256(237,149,151);
#declare BirdHeadYellowColor = rgb_256(240, 238, 44);
#declare BirdHairBrownColor = rgb_256(117, 53, 26);
#declare BirdHairYellowColor = rgb_256(224, 174, 65);
#declare BirdLegColor = rgb_256(110,24,4);
#declare BirdNeckColor = rgb_256(230, 202, 112);
#declare BirdTailBrownColor = rgb_256(117, 53, 26);
#declare BirdTailYellowColor = rgb_256(133, 97, 57);
#declare BirdWingYellowColor = rgb_256(240, 238, 44);
#declare BirdWingBrownColor = rgb_256(133, 75, 13);
#declare BirdEyeWhite = rgb_256(194,186,184);

#declare PathColorMap = color_map {
	[0.1 rgb_256(201,194,173)]
	[0.2 rgb_256(256,256,256)]
}

// scene5
#declare HandColor = rgb_256(240,199,86);

//========

// scene1
#declare FingerTexture = texture {
	pigment{ FingerColor }
	normal { bozo 2.0 scale 0.2 }
}

// scene 4
#declare TornadoTexture =  texture{ 
	pigment { 
		gradient <0,0.4,1> turbulence 0.8
		color_map {
			[0.1 rgb <0.1,0.1,0.1>]
			[0.3 rgb <0.2,0.2,0.2>]
			[0.4 rgb <0.5,0.5,0.5>]
			[0.5 rgb <0.8,0.8,0.8>]
			[0.6 rgb <0.5,0.5,0.5>]
			[0.9 rgb <0.2,0.2,0.2>]
		}
	}
	scale 2
	finish {ambient 1 diffuse 0 } 
}

// scene 5
#declare HandTexture = texture {
	pigment{ FingerColor }
	normal { bozo 2.0 scale 0.2 }
}      
                
                
                