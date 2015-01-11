#include "colors.inc"
#include "utils.inc"

#declare Desk = union{
	box {<-1,-1,-1>, <1,1,1> scale<3,3,.2> pigment{rgb_256(117,91,6)}}
	box {<-1,-1,-1>, <1,1,1> scale<.3,.3,1> pigment{Red} translate<2.5,2.5,1>}
	box {<-1,-1,-1>, <1,1,1> scale<.3,.3,1> pigment{Red} translate<-2.5,2.5,1>}
	box {<-1,-1,-1>, <1,1,1> scale<.3,.3,1> pigment{Red} translate<2.5,-2.5,1>}
	box {<-1,-1,-1>, <1,1,1> scale<.3,.3,1> pigment{Red} translate<-2.5,-2.5,1>}
}