#include "utils.inc"

#declare m_path =
box{
	<0,0,0>, <1,0.1,1>
	pigment { 
		agate
  		agate_turb 0.5
  		color_map{
  			[0.1 rgb_256(201,194,173)]
  			[0.2 rgb_256(256,256,256)]
  		}
	}
}

#macro draw_path(X,Y, Z)
#local length = 0.5;
object{m_path translate<X*length*2, Z, Y*length*2>}
#end

#macro draw_path_square(X0,Y0,X1,Y1,Z)
#for (X, X0, X1, 1)
	#for (Y, Y0, Y1, 1)
		draw_path(X,Y,Z)
	#end
#end
#end