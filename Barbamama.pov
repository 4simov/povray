//base
camera {

        location <0,4,5>//maison
		//location<4,1.5,3>//fenetre
		//location<-4,1,5>//porte
        look_at <0, 3, 0>

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
background { color rgb <1, 1, 1> }

#macro fleur(a,b,c,r)
union {
	sphere{
		<2,2,4>
		1
		pigment{ rgb<1,1,0> }
		scale<1,1,0.3>
	}
	blob {
		threshold 0.5
		sphere {
			<2.2,3.8,4>
			1
			5
			pigment{ rgb<1,0,0> }
			scale<0.5,1,0.3>
			rotate<0,0,-18>
		}
		sphere {
			<5.2,2.6,4>
			1
			5
			pigment{ rgb<1,0,0> }
			scale<0.5,1,0.3>
			rotate<0,0,18>
		}
	}
	blob {
		threshold 0.5
		sphere {
			<2.2,3.8,4>
			1
			5
			pigment{ rgb<1,0,0> }
			scale<0.5,1,0.3>
			rotate<0,0,-18>
		}
		sphere {
			<5.2,2.6,4>
			1
			5
			pigment{ rgb<1,0,0> }
			scale<0.5,1,0.3>
			rotate<0,0,18>
		}
		rotate<0,0,-65>
		translate<-0.5,3,0>
	}
	blob {
		threshold 0.5
		sphere {
			<2.2,3.8,4>
			1
			5
			pigment{ rgb<1,0,0> }
			scale<0.5,1,0.3>
			rotate<0,0,-18>
		}
		sphere {
			<5.2,2.6,4>
			1
			5
			pigment{ rgb<1,0,0> }
			scale<0.5,1,0.3>
			rotate<0,0,18>
		}
		rotate<0,0,-125>
		translate<1.7,4.5,0>
	}
	
	blob {
		threshold 0.5
		sphere {
			<2.2,3.8,4>
			1
			5
			pigment{ rgb<1,0,0> }
			scale<0.5,1,0.3>
			rotate<0,0,-18>
		}
		sphere {
			<5.2,2.6,4>
			1
			5
			pigment{ rgb<1,0,0> }
			scale<0.5,1,0.3>
			rotate<0,0,18>
		}
		rotate<0,0,-190>
		translate<4,3.5,0>
	}
	blob {
		threshold 0.5
		sphere {
			<2.2,3.8,4>
			1
			5
			pigment{ rgb<1,0,0> }
			scale<0.5,1,0.3>
			rotate<0,0,-18>
		}
		sphere {
			<5.2,2.6,4>
			1
			5
			pigment{ rgb<1,0,0> }
			scale<0.5,1,0.3>
			rotate<0,0,18>
		}
		rotate<0,0,-265>
		translate<4,0.5,0>
	}
	scale<0.1,0.1,0.1>
	translate<a,b,c>
	rotate<-10,r,0>

}
#end

//yeux-------------------------------------------------
union {

sphere{
	<0,4.1,2.5>
	0.25
	pigment{ rgb<1,1,1> }
	scale<1,1,0.3>
	rotate<0,20,0>
}
sphere{//pupille
	<-0.05,4.05,2.7>
	0.05
	pigment{ rgb<0,0,0> }
	scale<1,1,0.3>
	rotate<0,20,0>
}	
	difference {//paupière
		sphere{
			<0,4.1,2.5>
			0.26
			pigment{ rgb<1,0,1> }
			scale<1,1,0.3>
			rotate<0,20,0>
		}
		sphere{
			<-0.02,4.05,2.55>
			0.26
			pigment{ rgb<0,1,1> }
			scale<1,1,0.3>
			rotate<0,20,0>
		}
	}
	translate<0,0.1,0.05>
}

union {

sphere{
	<0,4.1,2.5>
	0.25
	pigment{ rgb<1,1,1> }
	scale<1,1,0.3>
	rotate<0,-20,0>
}
sphere{//pupille
	<0.05,4.05,2.7>
	0.05
	pigment{ rgb<0,0,0> }
	scale<1,1,0.3>
	rotate<0,-20,0>
}	
	difference {//paupière
		sphere{
			<0,4.1,2.5>
			0.26
			pigment{ rgb<1,0,1> }
			scale<1,1,0.3>
			rotate<0,-20,0>
		}
		sphere{
			<0.02,4.05,2.55>
			0.26
			pigment{ rgb<0,1,1> }
			scale<1,1,0.3>
			rotate<0,-20,0>
		}
	}
	translate<0,0.1,0.05>
}

//bouche----------------------------------------
union {
	difference{
		sphere {
			<0,3.75,2>
			0.1
			pigment{ rgb<1,1,1> }
		}
		cylinder {
			<0,1.75,1.5>
			<0,1.75,2.5>
			0.5
			pigment{ rgb<1,1,1> }
			scale<1,3,1>
		}
		difference {
			cylinder {
				<0,1.70,1.5>
				<0,1.70,2.5>
				0.5
				pigment{ rgb<1,1,1> }
				scale<1,3,1>
			}
			cylinder {
				<0,1.73,1.5>
				<0,1.73,2.5>
				0.5
				pigment{ rgb<1,1,1> }
				scale<1,3,1>
			}
		}
	}

	scale<1.5,0.75,1>
	translate<0,0.85,-1.25>
}

//corps-----------------------------------------
blob  {

        threshold 0.75

        sphere {
                <0,5,0>
                0.5
                8
		scale<0.90,1,1>
        }
        sphere {
                <0,4,0>
                1
                8
		scale<0.90,1,1>
        }

        sphere {
                <0,2.2,0>
                2
                2
		scale<0.90,1,1>
        }
	sphere {
		<0,1,0>
    		0.5
               	2
		scale<0.90,1,1>
        }
        pigment { rgb <0,0,0> }

}
//bras--------------------------------------------

/*union {

	lathe{
		bezier_spline
		4,
		<0.2,0><0.05,0.3>,<0.4,1.3>,<0.01,1.5>
		sturm
		pigment { rgb<0,0,0> }
	 	scale<1,1,1>
		rotate<0,0,0>
		translate<2,1,0>                  
	}
	sphere {//paume
		<2,1,0>
		0.2
		pigment { rgb<0,1,0> }
	}
	sphere {//doigt
		<2,1,0>
		0.1
		pigment { rgb<0,0,1> }
		scale<1,0.40,0.40>
		rotate<0,0,0>
		translate<0.2,0.3,-0.7>
	}

	rotate<0,0,60>
	translate<1.7,0,0.5>
}*/
//couronne----------------------------------------

fleur(-0.2,4.5,1.2,0)
fleur(-0.3,4.5,1.2,50)
fleur(-0.2,4.5,1.2,-45)


// macro-0.2,4.5,1.2

