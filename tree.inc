#include "colors.inc"
#include "m_tree.inc"
#include "utils.inc"

// tree, origin<0,0,0> height 1z

#declare m_tree_orig = object{m_tree_inc scale<5,5,5> translate<-0.45,-.4,0>}

#local m_threshold = 0.185;

#declare m_tree_leaf = difference{
	object {m_tree_orig}
	box{<-1,-1,-0.3>,<1,1,m_threshold>}
	scale 1.2
}

#declare m_tree_stem = difference{
	object {m_tree_orig}
	box{<1,1,m_threshold>, <-1,-1,1.2>}
}

#declare m_tree = union{
	object{m_tree_leaf pigment{rgb_256(10,115,5)}}
	object{m_tree_stem pigment{Brown}}
	rotate<-90,0,0>
	translate<0.5,0,0.5>
	scale<0,3,0>
}

#macro draw_tree_square(X0,Y0,X1,Y1,Z)
	draw_item_square(m_tree, X0, Y0, X1, Y1, Z)
#end

//—Test—

//show_axes()
//
//camera {
//	perspective 
//	location < 5, 0, 0>
//	right x * 1
//	up y * 3/4
//	angle 60
//	look_at < 0.0, 0.0, 0.0>
//}
//light_source {
//	< 0.0, 100, 100>
//	rgb <1.000000, 1.000000, 1.000000> * 1.0
//}
//object{m_tree_leaf pigment{Green}}
//object{m_tree_stem pigment{Brown}}

// — End Test —


