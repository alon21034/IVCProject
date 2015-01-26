#include "colors.inc"
#include "textures.inc"
#include "glass.inc"

#declare Hx = 2.00;
#declare Hy = 3.50;
#declare Hz = 4.00;
#declare Roof_Angle = 38; 
#declare Wall_D = 0.20 ;// the thickness of the Wall 

#declare Roof_D = 0.10; // the thickness of the roof
#declare Roof_O = 0.20; // overhang 
#declare Roof_L = Hx+0.80;// try it !!! 
// ---------------------------------------------------- Window_Positions
// front positions 
#declare Window_Positon_1f = <-Hx/2,0,Wall_D/3>;
#declare Window_Positon_2f = < Hx/2,0,Wall_D/3>;
// backside positions
#declare Window_Positon_1b = <-Hx/2,0,Hz-Wall_D/3>;
#declare Window_Positon_2b = < Hx/2,0,Hz-Wall_D/3>;
// right side positions
#declare Window_Positon_1r = < Hx-Wall_D/3,0,3*Hz/4>;
#declare Window_Positon_2r = < Hx-Wall_D/3,0,  Hz/4>;
// left side positions
#declare Window_Positon_1l = <-Hx+Wall_D/3,0,3*Hz/4>;
#declare Window_Positon_2l = <-Hx+Wall_D/3,0,  Hz/4>;
// ------------------------------------------------- end of Window_Positions

#declare Wall_Texture_1 = 
      texture { pigment{ color White*1.1}
                normal { bumps 0.5 scale 0.005} 
                finish { phong 1}
              } // end of texture
#declare Wall_Texture_2 = 
      texture { pigment{ color White*1.1}
                finish { phong 1}
              } // end of texture

#declare Roof_Texture = 
 // layered texture!!!
      texture { pigment{ color Scarlet*1.3}
                normal { gradient z scallop_wave scale<1,1,0.15>} 
                finish { phong 1}
              } // end of texture
 
      texture { pigment{ gradient x 
                         color_map{[0.00 color Clear]
                                   [0.90 color Clear]
                                   [0.95 color White*0.1]
                                   [1.00 color White*0.1]}
                          scale 0.25}
                 finish { phong 1}
              } // end of texture

//--------------------------------------------------------

//--------------------- Window -----------
#declare Window_Texture_1 = 
texture{pigment{ color White*1.3}
        finish { phong 0.1}}
#declare Window_Texture_2 = 
texture{pigment{ color White*1.2}
        finish { phong 0.1}}
//-----------------------------------------
#declare Window = union {
	difference{
		box{<-0.50,0.80,-0.02>,< 0.50,1.80,0.02>}
		box{<-0.45,0.85,-0.03>,<-0.03,1.27,0.03>}
		box{< 0.03,0.85,-0.03>,< 0.45,1.27,0.03>}
		box{<-0.45,1.33,-0.03>,<-0.03,1.75,0.03>}
		box{< 0.03,1.33,-0.03>,< 0.45,1.75,0.03>}
		texture{Window_Texture_1}
	} 
	box{<-0.49,0.81,0.0>,< 0.49,1.79,0.001>
	texture{T_Glass3}}
}

#declare Window_Hole = 
  box{<-0.50,0.80,-0.50>,< 0.50,1.80,0.50>
      texture{Window_Texture_2}}

#declare Door = union {
	difference{
		box{<-0.50,0.01,-0.02>,< 0.50,1.80,0.02>}
		box{<-0.45,0.85,-0.03>,<-0.03,1.27,0.03>}
		box{< 0.03,0.85,-0.03>,< 0.45,1.27,0.03>}
		box{<-0.45,1.33,-0.03>,<-0.03,1.75,0.03>}
		box{< 0.03,1.33,-0.03>,< 0.45,1.75,0.03>}
		texture{Window_Texture_1}
	}
	box{<-0.49,0.81,0.0>,< 0.49,1.79,0.001>
	texture{T_Glass3}} 
}

#declare Door_Hole = 
  box{<-0.50,0.01,-0.50>,< 0.50,1.80,0.50>
      texture{Window_Texture_2}}

#declare BuildingWall = difference {
	box { <-Hx,0,0>,< Hx,Hy,Hz>   
      	texture {Wall_Texture_1}  
      }
	plane{ <0,-1,0>,0 
      	texture {Wall_Texture_1}  
      	rotate<0,0,Roof_Angle>
      	translate<0,Hy,0>
     }
	plane{ <0,-1,0>,0 
      	texture {Wall_Texture_1}  
		rotate<0,0,-Roof_Angle>
       	translate<0,Hy,0>
	}
	box { <-Hx+Wall_D,0.10,Wall_D>,
      	<Hx-Wall_D,Hy,Hz-Wall_D>  
      	texture {Wall_Texture_2}  
     	}
	object{ Door_Hole   translate Window_Positon_1f}
	object{ Window_Hole translate Window_Positon_2f}
	
	object{ Window_Hole translate Window_Positon_1r}
	object{ Window_Hole translate Window_Positon_2r}
	
	object{ Window_Hole translate Window_Positon_1l}
	object{ Window_Hole translate Window_Positon_2l}
	
	object{ Window_Hole translate Window_Positon_1b}
	object{ Window_Hole translate Window_Positon_2b}
 }
 
#declare BuildingRoof = union {
box { < -Roof_L, 0.00, -Roof_O>,< Roof_D/2, Roof_D, Hz+Roof_O>  
      texture {Roof_Texture translate<-0.05,0,0>}  
      rotate<0,0, Roof_Angle>
      translate<0,Hy,0>
     }
box { < -Roof_L, 0.00, -Roof_O>,< Roof_D/2, Roof_D, Hz+Roof_O>  
      texture {Roof_Texture translate<-0.05,0,0>}  
      rotate<0,0, Roof_Angle>
      translate<0,Hy,0> scale<-1,1,1>
     }
}

#declare BuildingWindows = union {
	object{ Door   translate Window_Positon_1f }
	object{ Window translate Window_Positon_2f}
	object{ Window rotate<0,180,0> translate Window_Positon_1b}
	object{ Window rotate<0,180,0> translate Window_Positon_2b}
	object{ Window rotate<0,-90,0> translate Window_Positon_1r}
	object{ Window rotate<0,-90,0> translate Window_Positon_2r}
	object{ Window rotate<0, 90,0> translate Window_Positon_1l}
	object{ Window rotate<0, 90,0> translate Window_Positon_2l}
}

#declare Building = union {
	object { BuildingWall }
	object { BuildingWindows }
	object { BuildingRoof }
}
