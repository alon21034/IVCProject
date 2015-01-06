#include "utils.inc"

#local grass_green = rgb_256(117, 224, 84);
#local ground_brown = rgb_256(196, 165, 81);

#declare ground_unit = 
	box { <0,-1,0>, <1,0,1>
		texture{ 
			pigment{ color ground_brown}
			normal { bumps 0.75 scale 0.015}
			finish { phong 0.1}
		}
	}

#macro draw_ground_sqar(X0,Y0,X1,Y1,Z)
	draw_item_square(ground_unit, X0, Y0, X1, Y1, Z)
#end

