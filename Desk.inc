#include "colors.inc"
#include "utils.inc"
#include "woods.inc"

#declare Desk = union{
	box {<-1,-1,-1>, <1,1,1> scale<3,3,.2> texture{T_Wood1}}
	box {<-1,-1,-1>, <1,1,1> scale<.3,.3,1> translate<2.5,2.5,1> texture{T_Wood6}}
	box {<-1,-1,-1>, <1,1,1> scale<.3,.3,1> translate<-2.5,2.5,1> texture{T_Wood6}} 
	box {<-1,-1,-1>, <1,1,1> scale<.3,.3,1> translate<2.5,-2.5,1> texture{T_Wood6}}
	box {<-1,-1,-1>, <1,1,1> scale<.3,.3,1> translate<-2.5,-2.5,1> texture{T_Wood6}}
}