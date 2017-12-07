#include "colors.inc"
#include "textures.inc"
/*light_source{
	<-3,0,0>
	color White

}*/
light_source{
	<0,4,0>
	color Red

}
/*light_source{
	<5.87,-6.5,6>
	color White

}*/
/*light_source{
	<10,-10,10>
	color White

}*/

camera{
	location<3,-8,2>
	look_at<3,3,2>
	sky <0,0,1>
	right<-image_width/image_height,0,0>
}
/*camera{
	location<1,10,3>
	look_at<-2,0,0>
	sky <0,0,1>
	right<-image_width/image_height,0,0>
	rotate<0,0,-110>
	translate<-4,0,0>
}*/

background { White}

/*plane{
    z,0
    //texture{    Jade }
    pigment{color PaleGreen}
}*/

//##################################################Maison2###########################################################################################################
#declare Font="cyrvetic.ttf";
#declare zi=1.5;

union {//ensemble maison
/*light_source{
	<2,2,2>
	color White

}
light_source{
	<-5,2,zi>
	color Yellow

}
light_source{
	<-5,12,3>
	color White

}*/

difference{ //pour creuser la maison
      union{

            cylinder{
                  <-5,10,zi>
                  <-5,15,zi>
                  3
                  pigment{ color White}
            }


            difference{
                 sphere{     //sphere rouge
                              <-5,2,zi>
                              3
                               pigment{ color White}
                 }
                        
                  
                  sphere{     //afin de faire la fenetre
                              <-2,2,zi>
                              1
                               pigment{ color Brown}
                  }
                  cylinder{   //afin de faire la porte entre la sphere et le lathe
                        <-5,4,zi>
                        <-5,6,zi>
                        2.5
                        pigment{ color Green}
                  }
                  sphere{     //afin de faire la porte entre la sphere et le lathe 
                        <-5,5,zi>
                        2.5
                         pigment{ color Yellow}
                  }
                  
            }
            
            
            lathe{      //relie le cylindre et la sphere
                  bezier_spline
                  4,
                  <2.79,1.09>,
                  <2.09,2.89>,
                  <2.02,5.59>,
                  <3,8>
                   pigment{ color White}
                   
                   translate <-5,2,zi>
            }
      }
      
       union{     //on faire l'union du cylindre et de la sphere qui creusent la maison
            cylinder{
                  <-5,9,zi>
                  <-5,14.5,zi>
                  2.5
                  pigment{ color White}
            }
           
            sphere{
                  <-5,2,zi>
                  2.5
                  pigment{ color White}
            }
                  
            
            
           
      
      }
  
}


union{//fenetre 
                        
      
      lathe{ //ACDB
            bezier_spline
            4,
            <1,0>,
            <1,0.2>,
            <0.99,0.07>,
            <0.99,0.14>
            pigment{ color Black}
            rotate <0,0,90>
            translate<-2-0.05,2,zi> 
      }
      cylinder{
            <-2.5,2-1,zi>
            <-2.5,2+1,zi>
            0.1
            pigment{ color Black}
      }
      cylinder{
            <-2.5,2,zi-1>
            <-2.5,2,zi+1>
            0.1
            pigment{ color Black}
      }
}

//porte



rotate<0,0,-110>
translate<-4,0,0>
}//ensemble maison
//|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||FinMaison2|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

#macro fleche(A,S,Coul1,Coul2,alph,rCyl,rCon,text1,sca,rot,trans)


	# local B=A*alph+S*(1-alph);



	cylinder{
	A B rCyl
	 	pigment{
			color Coul1
		}
	}
	cone {
		B rCon S 0
		pigment{
			color Coul2
		}
	} 
	text {
                ttf Font  
                text1
	        0.1, 0    
	        pigment{
			    color Coul1
		    }
                scale sca 
                rotate rot
                translate trans   
    } 


#end



#macro repereortho()
	fleche(<0,0,0>,<1,0,0>,Red,Red,0.3,0.1,0.15,"X",<0.3,0.3,0.3>,<90,0,0>,<0.5,0,0.2>)
	fleche(<0,0,0>,<0,1,0>,Cyan,Cyan,0.3,0.1,0.15,"Y",<0.3,0.3,0.3>,<90,0,90>,<0,0.5,0.2>)
	fleche(<0,0,0>,<0,0,1>,Green,Green,0.3,0.1,0.15,"Z",<0.3,0.3,0.3>,<90,0,90>,<0,0.2,0.5>)
	
#end

//repereortho()






