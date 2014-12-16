#include "utils.inc"

#local grass_green = rgb_256(117, 224, 84);

#declare ground_unit = 
	box { <0,-1,0>, <1,1,1>
		texture{ 
			pigment{ color grass_green}
			normal { bumps 0.75 scale 0.015}
			finish { phong 0.1}
		}
	}

#macro draw_ground_sqar(X0,Y0,X1,Y1,Z)
union{
#for (X, X0, X1, 1)
	#for (Y, Y0, Y1, 1)
		object{ ground_unit translate<X,Z*2,Y>}
	#end
#end
}
#end

