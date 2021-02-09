// X_motor

difference() {
    start();
    translate([50, 25, 0]) cube([35, 10, 35], center=true);
    translate([27.25,10,4.5])
      cylinder (h = 30, r=4.15); //hole for 8-mm rod
    translate([71.75,10,4.5])
      cylinder (h = 30, r=4.15); //hole for 8-mm rod
    translate([42.5,10,26])
      cube([15,3,9]);
    rotate([90,0,0]) translate([50,17.5,-25])
      cylinder(h=30, r=12.5); //hole for motor
    translate([10,20,-10])
      cylinder (h = 30, r = 2.6); //M5 screw
    translate([90,20,-10])
      cylinder ( h=30, r=2.6); //M5 screw
//Sinkings for M5 screws
    translate([10,20,8])
      cylinder (h=10, r=5);
    translate([90,20,8])
      cylinder (h=10, r=5);
//Screws for motor Nema 14
    rotate([90,0,0]) translate([36.5,4.5,-25])
      cylinder (h=30, r=1.6);
    rotate([90,0,0]) translate([62.5,4.5,-25])
      cylinder (h=30, r=1.6);
    rotate([90,0,0]) translate([36.5,30.5,-25])
      cylinder (h=30, r=1.6);
    rotate([90,0,0]) translate([62.5,30.5,-25])
      cylinder (h=30, r=1.6);
//Sinkings for motor screws
    rotate([90,0,0]) translate([36.5,4.5,-12])
      cylinder (h=20, r=3.5);
    rotate([90,0,0]) translate([62.5,4.5,-12])
      cylinder (h=20, r=3.5);
    rotate([90,0,0]) translate([36.5,30.5,-12])
      cylinder (h=20, r=3.5);
    rotate([90,0,0]) translate([62.5,30.5,-12])
      cylinder (h=20, r=3.5);
//Port for endstop  
    translate([0,11,6])
      cube([22,1.7,4]);
}

module start(){
    cube([100,30,10]);
    translate([32,10,0])
     cube([35,10,35]);
}   