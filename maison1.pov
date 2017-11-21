//base
camera {

        location <0,4,10>//maison
		//location<4,1.5,3>//fenetre
		//location<-4,1,5>//porte
        look_at <0, 1, 0>

}

 

light_source {

        <15,30,15>

        rgb <1,1,1>

}

plane {
    y
    0
    pigment {
        rgb <0,0.5,1> 
    }
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

//Chambre
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








