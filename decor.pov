#include "colors.inc"     
#include "textures.inc"

#declare Font="cyrvetic.ttf";
light_source{
	<-3,0,0>
	color White

}
light_source{
	<0,4,0>
	color White

}
light_source{
	<5.87,-6.5,6>
	color White

}
light_source{
	<10,-10,10>
	color White

}

camera{
	location<-15,-7,10>
	look_at<3,-6.5,3>
	sky <0,0,1>
	right<-image_width/image_height,0,0>
}
/*camera{
	location<1,10,3>
	look_at<0,0,0>
	sky <0,0,1>
	right<-image_width/image_height,0,0>
}*/

background { White}

plane{
    z,0
    //texture{    Jade }
    pigment{color PaleGreen}
}

//##################################################Maison1###########################################################################################################

union {//ensemble

light_source {

        <-1,1,2>

        rgb <1,1,1>

}




/*lathe{
	bezier_spline
	4,
	//<3.5,3>,<0.8,3.8>,<0.5,3>,<2.2,1.5>,<0.8,0>,<3.0,0>
	<0,0>,<1,0.2>,<2,3>,<4,4>
	sturm
    pigment{ rgb<1,0,0>}
 	scale<1,1,1>                  

}*/




union {

//Chambre-----------------------------------------------------------------------------
	difference {
		sphere {
			<2,1.5,0>
			2
			pigment { rgb<1,1,1> }
		}
		sphere {
			<2,1.5,0>
			1.9
			pigment { rgb<1,0,0> }
		}
		sphere {
			<2,1.5,2>
			0.7
			pigment { rgb<1,0,0> }
		}
	}

	//fenetre
	union {
		difference {
			cylinder {
				<-2,-0.1,-0.5>
				<-2,0.0,-0.5>
				0.7
				pigment { rgb<1,0,0> }
				rotate<90,0,0>
				translate<4,1,2>
			}
			cylinder {
				<-2,-0.11,-0.5>
				<-2,0.01,-0.5>
				0.6
				pigment { rgb<1,0,1> }
				rotate<90,0,0>
				translate<4,1,2>
			}
	
		}
			cylinder {
			<-2,-0.1,-0.5>
			<-2,-0.01,-0.5>
			0.6
			texture{
  				pigment{ rgb<1,1,1>}
				finish { diffuse 0
    	    	reflection 0.1
				diffuse 0.3
    	       	roughness 0.0003
    	       	phong 1
    	       	phong_size 400
					}
			}
			rotate<90,0,0>
			translate<4,1,2>
		}
		box {
			<2.6,1.4,1.9>
			<1.4,1.5,2>
			pigment { rgb<1,0,0> }
		}
		box {
			<1.95,0.9,1.9>
			<2.05,2.1,2>
			pigment { rgb<1,0,0> }
			rotate<0,0,0>
		}
		lathe{
			bezier_spline
			4,
			<3.18,0>,<3.3,0.3>,<3.5,0.5>,<3.9,1.5>
			sturm
			pigment { rgb<1,0,0> }
	 		scale<0.22,0.22,0.22>
			rotate<-90,0,0>
			translate<2,1.5,2>                  

		}

	}


//Couloir
	lathe{
		bezier_spline
		4,
		<3.46,0>,<3.3,0.3>,<3,0.5>,<3.9,1.5>
		sturm
		pigment { rgb<1,1,1> }
	 	scale<0.5,0.5,0.5>
		rotate<0,0,90>
		translate<1,1.5,0>                  

}

//Salon
	difference {
		sphere {
			<-2,1.5,0>
			3
			pigment { rgb<1,1,1> }
		}
		sphere {
			<-2,1.5,0>
			2.9
			pigment { rgb<1,0,1> }
		}
		sphere {
			<-2,0.5,3>
			1
			pigment { rgb<1,0,1> }
		}
		sphere {
			<-2,4,0>
			1.4
			pigment { rgb<1,0,1> }
		}
/*		box{
			<0,0,0>
			<-6,3,8>
		}*/

	}
	//toit
	difference {
		sphere {
			<-2,4,0>
			1.5
			pigment { rgb<1,1,1> }
		}
		sphere {
			<-2,4,0>
			1.4
			pigment { rgb<1,0,1> }
		}
		cylinder {
			<-2,5,0>
			<-2,6,0>
			0.75
		}
	}
	difference {
		sphere {
			<-2,5,0>
			0.85
			pigment { rgb<1,1,1> }
		}
		sphere {
			<-2,5,0>
			0.75
			pigment { rgb<1,0,1> }
		}
		cylinder {
			<-2,5,0>
			<-2,7,0>
			0.25
		}
	}
	difference {
		cylinder {
			<-2,5,0>
			<-2,6,0>
			0.25
			pigment { rgb<1,1,1> }
		}
		cylinder {
			<-2,5,0>
			<-2,7,0>
			0.15
			pigment { rgb<1,0,1> }
		}
	}
	//porte
	difference {
		cylinder {
			<-2,-1,-0.5>
			<-2,0.20,-0.5>
			1
			pigment { rgb<1,0,0> }
			rotate<90,0,0>
			translate<0,0,2.85>
		}
		cylinder {
			<-2,-1.5,-0.5>
			<-2,1,-0.5>
			0.80
			pigment { rgb<1,0,1> }
			rotate<90,0,0>
			translate<0,0,2.85>
		}
		sphere {
			<-2,1.5,0>
			2.9
			pigment { rgb<1,0,1> }
		}
		
	}
	difference {
		lathe{
			bezier_spline
			4,
			<2,0>,<2.5,0.3>,<2.3,0.5>,<2.5,3>//à améliorer
			sturm
			pigment { rgb<1,0,0> }
		 	scale<0.5,0.5,0.5>
			rotate<-90,0,0>
			translate<-2,0.5,3.05>                  
		}
		sphere {
			<-2,1.5,0>
			2.9
			pigment { rgb<1,0,1> }
		}
	}

	
}

rotate<90,0,-160>
translate<-3,-17,0>
}//ensemble


//|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||FinMaison1|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||




















//##################################################Maison2###########################################################################################################
#declare Font="cyrvetic.ttf";
#declare zi=1.5;

union {//ensemble maison
light_source{
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

}

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
                  pigment{ color Blue}
            }
            sphere{
                  <-5,2,zi-2>
                  2.5
                  pigment{ color Blue}
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

repereortho()

rotate<0,0,-110>
translate<-4,0,0>
}//ensemble maison
//|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||FinMaison2|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||























//##################################################Maison3###########################################################################################################

light_source{
	<-3,0,0>
	color White

}
light_source{
	<0,4,0>
	color White

}
light_source{
	<5.87,-6.5,6>
	color White

}
light_source{
	<10,-10,10>
	color White

}

//rdc----------------------------------------
difference{
      //union{
            blob{
                  threshold 0.2
                  sphere{
                        <5,-5,3>
                        3
                        1
                        pigment{color White}
                  }
                  sphere{
                        <5,-8,3>
                        3
                        1
                         pigment{color White}
                  }
                  sphere{
                        <7.6,-6.5,3>
                        3
                        1
                        pigment{color White}
                  }
         
                  
	            sphere{
	                  <5.87,-6.5,6>
	                  3
	                  2
	                  pigment{color White}
	            }
		            
            }
            
            
            
      //}
      union{
             blob{
                  threshold 0.2
                  sphere{
                        <5,-5,3>
                        2.5
                        1
                        pigment{color Green}
                  }
                  sphere{
                        <5,-8,3>
                        2.5
                        1
                         pigment{color Red}
                  }
                  sphere{
                        <7.6,-6.5,3>
                        2.5
                        1
                        pigment{color Yellow}
                  }
                  sphere{
                        <5.87,-6.5,6>
                        2.5
                        2
                        pigment{color Brown}
                  }
            }
		  sphere{
				<2.4,-6.5,3>
				2
				pigment{color Red}
			}
    
		}
		sphere{	//afin de faire passer la fumÃ©e dans le toit
		//centre N rayon M
			<0,0,0>
			1
			
			translate <5.87,-6.5,6+3*0.7>
		}
}
//couloir---------------------------------------
difference {
	cylinder {
		<4.5,-6.5,2.8>
		<2,-6.5,2.8>
		2
		pigment{ color Green }
	}
	cylinder {
		<5,-6.5,2.9>
		<0,-6.5,2.9>
		1.5
		pigment{ color White }
	}
	sphere {
		<2, -3.5, 2.7>
		2.7
		pigment{ color White }
		scale<1,3,1>
	}
}
difference {     
	box{  //GJKL
		<3.7,-5.,1>
	   	<1,-8,2>
	    pigment{ Pink_Granite }  
	}
	difference {
		cylinder {
			<4,-6.5,2.8>
			<0,-6.6,2.8>
			3
			pigment{ color Green }
		}
		cylinder {
			<5,-6.5,2.9>
			<0,-6.5,2.9>
			1.5
			pigment{ color White }
		}
		sphere {
		<2, -3.5, 2.7>
		2.7
		pigment{ color White }
			scale<1,3,1>
		}
	}
}
difference {
	lathe{
            bezier_spline
           	4,
            <2,1.7>,
            <2,0.75>,
            <2,0.5>,
            <2.5,0> 
            rotate <0,0,90>
           	translate <3.7,-6.5,2.8>
            //translate <0,1,0>
            //translate <5.87,-3,6>
            pigment{color White}
	}
	sphere {
		<2, -3.5, 2.7>
		2.7
		pigment{ color White }
		scale<1,3,1>
	}
}
//entrée-----------------------------------------
difference {
	box{  //GJKL
		<2.5,-3,1>
	   	<-0.5,-20,2>
	    pigment{ Pink_Granite }  
	}
	difference {
		sphere {
			<2, -3.5, 2.7>
			5
			pigment{ color White }
			scale<1,3,1>
		}
		sphere {
			<2, -3.5, 2.7>
			2.7
			pigment{ color White }
			scale<1,3,1>
		}
	}

}
difference {
	sphere {
		<2, -3.5, 2.7>
		2.7
		pigment{ color White }
		scale<1,3,1>
	}
	sphere {
		<2, -3.5, 2.7>
		2.6
		pigment{ color White }
		scale<1,3,1>
	}
	//fenetres
	cylinder {
		<5,-6.5,2.9>
		<-3,-6.5,2.9>
		1.5
		pigment{ color White }
	}
	cylinder {
		<5,-10,3>
		<-3,-10,3>
		0.25
		pigment{ color White }
	}
	cylinder {
		<5,-12,3>
		<-3,-12,3>
		0.25
		pigment{ color White }
	}
	cylinder {
		<5,-14,3>
		<-3,-14,3>
		0.25
		pigment{ color White }
	}

}


intersection{
      box{  //GJKL
            <2,-2,1>
            <10.6,-11,2>
            pigment{ Pink_Granite } 
      
      }
      
      blob{
                  threshold 0.2
                  sphere{
                        <5,-5,2>
                        2.5
                        1
                        pigment{color Green}
                  }
                  sphere{
                        <5,-8,2>
                        2.5
                        1
                         pigment{color Red}
                  }
                  sphere{
                        <7.6,-6.5,2>
                        2.5
                        1
                        pigment{color Yellow}
                  }
       }
            
      
}
//#declare H=<1.5,3.48>;
lathe{ //IHGD
            linear_spline
           2,
            
             <2.31,0.66>,
            <1,6>
            //<1.08,5.33>,
            //<0.2*1,0.2*6> 
            rotate <90,0,0>
            translate <5.87,-6.5,6>
            
            pigment{color White}
}
lathe{ //DJLK
            bezier_spline
           4,
            <1,6>,
             <1,3.28>,
            <1,2.4>,
            <1,0.06> 
            rotate <90,0,0>
           translate <5.87,-6.5,6>
            //translate <0,1,0>
            //translate <5.87,-3,6>
            pigment{color White}
}


/*cylinder{
	<1,6>
	<1,0>
	1
	translate <5.87,-6.5,6>
	
}*/



blob{
      threshold 0.05
      #for (i,0,3)
            sphere{
                  <0.5,0.5,0.5+i*0.5>
                  0.5
                  0.5
                  pigment{color Silver}
            }      
            
            sphere{
                  <0.5,1,0.75+i*0.5>
                  0.5
                  0.5
                  pigment{color Silver}
            }
            sphere{
                  <0.75,0.75,0.75+i*0.5>
                  0.5
                  0.5
                  pigment{color Silver}
            }
      #end
      scale <4,4,5>
      translate <4,-9,11>
      
      
}

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

repereortho()

//|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||FinMaison3|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||













