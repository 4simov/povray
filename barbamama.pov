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

//corps
blob  {

        threshold 0.5

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
                <0,2.5,0>
                1.5
                5
		scale<0.90,1,1>
        }
	sphere {
		<0,1.25,0>
    		0.5
               	2
		scale<0.90,1,1>
        }
        pigment { rgb <1,0,0> }

}

//couronne
	//fleur
union {
	sphere{
		<2,2,4>
		1
		pigment{ rgb<1,0,1> }
		scale<1,1,0.3>
	}
	blob {
		threshold 0.5
		sphere {
			<2.2,3.8,4>
			1
			5
			pigment{ rgb<0,1,1> }
			scale<0.5,1,0.3>
			rotate<0,0,-18>
		}
		sphere {
			<5.2,2.6,4>
			1
			5
			pigment{ rgb<0,1,1> }
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
			pigment{ rgb<0,1,1> }
			scale<0.5,1,0.3>
			rotate<0,0,-18>
		}
		sphere {
			<5.2,2.6,4>
			1
			5
			pigment{ rgb<0,1,1> }
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
			pigment{ rgb<0,1,1> }
			scale<0.5,1,0.3>
			rotate<0,0,-18>
		}
		sphere {
			<5.2,2.6,4>
			1
			5
			pigment{ rgb<0,1,1> }
			scale<0.5,1,0.3>
			rotate<0,0,18>
		}
		rotate<0,0,-125>
		translate<1.7,4.5,0>
	}




}
