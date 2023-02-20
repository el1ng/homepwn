


box_length = 15;
box_width = 4.5;
box_height = 6;
box_height_extra = 5;
pin_pad = 0.5;
pin_width = 1.2;
nop_width = 1.5;
nop_height = 1.5;

sidepin_width = 2.5;

module holebox(x = 0, y = 0, z = 0, withHoles = 1){
    translate([x,y,z+0.5]){
        difference(){
            translate([0,0,box_height_extra/2])
            cube([box_length, box_width, box_height+box_height_extra], center = true);
        
            if (withHoles != 0){
                for ( i = [-3 : 3]){
                    if (i != -3){
                        translate([i*2, box_width/2-1, 0])
                            cube([pin_width, pin_width, box_height+1+box_height_extra*2], center = true);
                        
                        //sideholes
                        translate([i*2-pin_width/2,box_width/2-1,box_height])
                            cube([pin_width,1,2]);
                    }
                    if (i == 0)
                    translate([i*2, -(box_width/2-1), 0])
                        cube([pin_width, pin_width, box_height+1+box_height_extra*2], center = true);
                }
            }
        }
        

        //pin
        translate([0, box_width/2 + nop_width/2, box_height/2-nop_height/2 - pin_pad])
            cube([nop_width, nop_width, nop_height], center = true);
        translate([0, box_width/2 + nop_width/2, box_height/2-nop_height/2])
            cube([nop_width, nop_width, nop_height], center = true);
        
        
        //sidepin right
        translate([box_length/2 + nop_width/2, 0, 0])
            cube([nop_width, sidepin_width, box_height], center = true);

        //sidepin left
        translate([-(box_length/2 + nop_width/2), 0, 0])
            cube([nop_width, sidepin_width, box_height], center = true);
        
    }
}

support_len = 2;
support_width = 4;
thickness = 1;
module foot(x = 0, y = 0, z = 0){
    
    leg_len = 4;
    
    translate([x-support_width/2,y-support_len/2,z]){
        translate([0,0,1])
            cube([support_width,2,1]);

/*        
        translate([0,0,-leg_len/2])
        rotate([-90,0,0])
        rotate([0,90,0])
        color("blue")
        cylinder(support_width,1,1,$fn=3);

        
        translate([0,-0.5,0])
        rotate([0,0,0]){
            translate([0,0,-leg_len+2])
                cube([support_width,thickness,leg_len]);                    
        }
*/
    }
}

module hole(x = 0, y = 0, z = 0){
    translate([x,y,z-1]){
        cylinder(3,1.25,1.25);
    }
}


module adapter(x = 0, y = 0, z = 0){
    plate_length = box_width + 8;
    plate_width = box_length + 8;
    plate_thickness = 1;
    
    plate_conn = 4;
    
    fplate_radius = 23;
    
    pull_cylinder_radius = 2;
    pull_cylinder_height = 10;
    
    translate([x,y,z]){
        difference(){
            translate([0,0,nop_height+plate_thickness+0.5])
                color("green")
                cube([plate_width, plate_length, plate_thickness], center = true);            
            translate([0,0,1])
                holebox(0,0,0,0);
        }
        color("red") 
        holebox(0,0,0);
        
        translate([0,0,nop_height+plate_thickness])
        difference(){
            cylinder(1, fplate_radius, fplate_radius);
            cube([plate_width-plate_conn, plate_length-plate_conn, plate_thickness+5], center = true);            

            for ( i = [1,2,5,6]){
                rotate([0,0,51*i + 180])
                    hole(0,-fplate_radius+4,0);
            }
            
            translate([-20,18,-1])
                cube([50,10,3]);
            translate([-30,-30,-1])
                cube([100,20,3]);
        }

/* 
        for ( i = [0:6]){
            rotate([0,0,51*i])
                foot(0,-fplate_radius,nop_height);            
        }
*/
    }
}


//holebox(0,0,0);

adapter(0,0,0);


