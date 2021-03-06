#include "utils.inc"
#include "mTexture.inc"

#declare m_path =
box {
	<0,0,0>, <1,0.1,1>
	pigment { 
		agate
  		agate_turb 0.5
  		color_map { PathColorMap }
	}
}

#macro draw_path(X,Y, Z)
#local length = 0.5;
object{m_path translate<X*length*2, Z, Y*length*2>}
#end


// (TODO) change to use utils::draw_item_square
#macro draw_path_square(X0,Y0,X1,Y1,Z)
#for (X, X0, X1, 1)
	#for (Y, Y0, Y1, 1)
		draw_path(X,Y,Z)
	#end
#end
#end