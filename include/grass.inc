#include "m_grass.inc"
#include "utils.inc"
#include "mTexture.inc"

#declare m_grass_orig = object{ m_grass_inc }

#declare m_grass = object{
	m_grass_orig 
	pigment{GrassGreen} 
	finish{ambient .4 diffuse .4}
	rotate<-90,0,0>
	scale<5,5,5>
	translate<0,-.03,1>
}

#macro draw_grass_square(X0, Y0, X1, Y1, Z)
	draw_item_square(m_grass, X0, Y0, X1, Y1, Z)
#end
