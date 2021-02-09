// Y_motor Nema 14

x=215;
 
difference() {
    start();
    cube([215, 20, 6]);
    color("yellow", 1.0) {    
    //Holes for rods
    translate([68,10,9.5])
    cylinder (h = 20, r=4.15);
    translate([144, 10, 9.5])
    cylinder (h = 20, r=4.15);
}    
//Hole for motor
color("blue", 1.0 ) {
    rotate([90,0,0])
    translate([109,37.5,-25])
    cylinder(h=30, r=12.5);}
//Holes for M4 screws
color( "black", 1.0) {
    rotate([90,0,0])
    translate([50,10,-30])
    cylinder (h = 40, r = 2.1);
    rotate([90,0,0])
    translate([x-50,10,-30])
    cylinder (h=40, r=2.1);
//Sinkings for M4 screws
    rotate([90,0,0])
    translate([50,10,-6])
    cylinder (h = 6, r=3.6);
    rotate([90,0,0])
    translate([x-50,10,-6])
    cylinder (h=6, r=3.6);    
//Holes for M3 screws, motor mounting
    rotate([90,0,0])
    translate([96,24.5,-25])
    cylinder (h=30, r=1.75);
    rotate([90,0,0])
    translate([122,24.5,-25])
    cylinder (h=30, r=1.75);
    rotate([90,0,0])
    translate([96,50.5,-25])
    cylinder (h=30, r=1.75);
    rotate([90,0,0])
    translate([122,50.5,-25])
    cylinder (h=30, r=1.75); }
//Sinkings for M3 screws
    rotate([90,0,0])
    translate([96,24.5,-13])
    cylinder (h=20, r=3.5);
    rotate([90,0,0])
    translate([122,24.5,-13])
    cylinder (h=20, r=3.5);
    rotate([90,0,0])
    translate([96,50.5,-13])
    cylinder (h=20, r=3.5);
    rotate([90,0,0])
    translate([122,50.5,-13])
    cylinder (h=20, r=3.5);
}
module start(){
cube([215,20,20]);
        color( "red", 1.0 ){
        translate([91.5,10,20])
        cube([35,10,35]);}
}  