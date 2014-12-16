#declare CenterRing = difference{
	intersection{
		sphere{<0,0,0>1}
		box{<-1,-.05,-1><1,.05,1>}
	}
	sphere{<0,0,0>0.8}
	texture{pigment{color<0,0,0>}}
	finish{ambient .2 phong 1 phong_size 70 reflection .1}
}

#declare TopHalf = difference{
	intersection{
		sphere{<0,0,0>1}
		box{<-1,.05,-1><1,1.1,1>}
	}
	sphere{<0,0,0>0.8}
	texture{pigment{color<1,0,0>}}
	finish{ambient .2 phong 1 phong_size 70 reflection .1}
}

#declare BottomHalf = difference{
	intersection{
		sphere{<0,0,0>1}
		box{<-1,-1.1,-1><1,-.05,1>}
	}
	sphere{<0,0,0>0.8}
	texture{pigment{color<1,1,1>}}
	finish{ambient .2 phong 1 phong_size 70 reflection .1}
}

#declare Button1 = union{
cylinder{<0,0,-1><0,0,-.9>.22 texture{pigment{color rgb<0,0,0>}}
finish{ambient .2 phong 1 phong_size 70 reflection .1}}
cylinder{<0,0,-1.05><0,0,-1>.15 texture{pigment{color rgb<1,1,1>}}
finish{ambient .2 phong 1 phong_size 70 reflection .1}}
cylinder{<0,0,-1.1><0,0,-1.05>.1 texture{pigment{color rgbf<1,1,1,.5>}}
finish{ambient .5 diffuse .1 reflection .25 specular 1 roughness .001}}
}

#declare Button2 = union{
cylinder{<0,0,-1><0,0,-.9>.22 texture{pigment{color rgb<0,0,0>}}
finish{ambient .2 phong 1 phong_size 70 reflection .1}}
cylinder{<0,0,-1.05><0,0,-1>.15 texture{pigment{color rgb<1,1,1>}}
finish{ambient .2 phong 1 phong_size 70 reflection .1}}
cylinder{<0,0,-1.1><0,0,-1.05>.1 texture{pigment{color rgbf<1,1,0,.5>}}
finish{ambient .5 diffuse .1 reflection .25 specular 1 roughness .001}}

}

#declare Pokball = union{
	object{CenterRing scale<.95,1,.95>}
	object{TopHalf}
	object{BottomHalf}
	object{Button1}
	object{Button2}
}

#macro open_pok_ball_animation ( A , P, Q, R)
union {
	object {TopHalf rotate<A,0,0> scale<1.01,1.01,1.01>}
	object{CenterRing scale<.95,.1,.95> rotate<A,0,0>}
	object{CenterRing scale<.95,.1,.95> rotate<-A,0,0>}
	object{BottomHalf rotate<-A,0,0>}
	difference{
		object{Button1}
		box{<-2,.05,-2><2,1.1,2>}
		rotate<-A,0,0>
	}
	difference{
		object{Button2 }
		box{<-2,-1.1,-2><2,-.05,2>}
		rotate<A,0,0>
	}
	rotate<P,Q,R>
	
}
#end




