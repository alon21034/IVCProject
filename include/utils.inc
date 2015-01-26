#include "colors.inc"

#macro time_macro(INIT, END,PERIOD, OFFSET)
	INIT + min(max(0,(clock - OFFSET)), PERIOD)/PERIOD * (END-INIT)
#end

#macro draw_point(X,Y,Z,C)
sphere{<X,Y,Z>,0.1 pigment{C}}
#end

#macro show_axes()
draw_point(0,0,0,Red)
draw_point(1,0,0,Blue)
draw_point(0,1,0,Yellow)
draw_point(0,0,1,Orange)
#end

#macro test(X,Y,Z)
camera {
	perspective 
	location < X, Y, Z>
	look_at < 0.0, 0.0, 0.0>
}
light_source {
	< 0.0, 100, 100>
	rgb <1.000000, 1.000000, 1.000000> * 1.0
}

#end

#macro rgb_256(R,G,B)
rgb<R/256,G/256,B/256>
#end

#macro rgba_256(R,G,B,A)
rgb<R/256,G/256,B/256,A>
#end

#macro draw_item_square(OBJ, X0, Y0, X1, Y1, Z)
union{
#for (X, X0, X1, 1)
	#for (Y, Y0, Y1, 1)
		object{OBJ translate<X, Z, Y>}
	#end
#end
}
#end

#macro draw_building( X, Y)
object{Building rotate<0,180,0> translate<2,0,4> translate<X, 0, Y>}
#end



