#include "colors.inc"
#include "m_tree.inc"
#include "utils.inc"
#include "mTexture.inc"

// tree, origin<0,0,0> height 1z

#declare m_tree_orig = object{m_tree_inc scale<5,5,5> translate<-0.45,-.4,0>}

#local m_threshold = 0.185;

#declare m_tree_leaf = difference{
	object {m_tree_orig}
	box{<-1,-1,-0.3>,<1,1,m_threshold>}
	scale 1.2
}

#declare m_tree_stem = difference {
	object {m_tree_orig}
	box{<1,1,m_threshold>, <-1,-1,1.2>}
}

#declare m_tree = union{
	object{ m_tree_leaf pigment{ TreeGreen } scale<1.2,1.2,3> translate<0,0,-0.4>}
	object{ m_tree_stem pigment{ Brown } scale < 1.3,1.3,2.5>}
	rotate<-90,0,0>
	translate<0.5,0,0.5>
}

#macro draw_tree_square(X0,Y0,X1,Y1,Z)
	draw_item_square(m_tree, X0, Y0, X1, Y1, Z)
#end

//test(0,0,10)
//object { m_tree }
