// Persistence of Vision Ray Tracer Scene Description File
// File: Pok?ball.pov
// Vers: 3.1
// Desc: Two Pok?balls based on the anime 'Pok?mon'.
// Date: 
// Auth: John F. Ashton-Keller (Strill@aol.com)
// Scle: Scale is probably 1 unit = 2.5 cm.
// There is no copyright on the object, but I'd be interested in seeing anything that the object is used in.


#declare CenterRing = intersection{
sphere{<0,0,0>1}
box{<-1,-.05,-1><1,.05,1>}
texture{pigment{color<0,0,0>}}
finish{ambient .2 phong 1 phong_size 70 reflection .1}
}

#declare TopHalf = intersection{
sphere{<0,0,0>1}
box{<-1,.05,-1><1,1.1,1>}
texture{pigment{color<1,0,0>}}
finish{ambient .2 phong 1 phong_size 70 reflection .1}
}

#declare BottomHalf = intersection{
sphere{<0,0,0>1}
box{<-1,-1.1,-1><1,-.05,1>}
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
#declare Pokball1 = union{
object{CenterRing scale<.95,1,.95>}
object{TopHalf}
object{BottomHalf}
object{Button1}
}

#declare Pokball2 = union{
object{CenterRing scale<.95,1,.95>}
object{TopHalf}
object{BottomHalf}
object{Button2}
}

camera{
location <0,3,-5>
direction 2.0*z
up        y
right     4/3*x
look_at   <1,0,0>}

light_source{<-30,30,-30>color red 1 green 1 blue 1}

object{Pokball1 scale<0.5,0.5,0.5>}
object{Pokball2 rotate<45,45,45>translate<2.1,0,0>}