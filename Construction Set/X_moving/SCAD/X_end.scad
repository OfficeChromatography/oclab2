// X_end

difference() {
    union() {
        cube([100,30,10]);
        translate([40,0, 10])
        cube([20, 20, 10]); }
    translate([50, 25, 10]) cube([20, 10, 10], center=true);
    translate([42.5,5,-5])
      cube([15,10,40]);
    translate([27.25,10,4.5])
      cylinder (h = 10, r=4.15); //for 8-mm rod
    translate([71.75,10,4.5])
      cylinder (h = 10, r=4.15); //for 8-mm rod
    translate([10,20,-10])
      cylinder (h = 30, r = 2.6); //M5 screw
    translate([90,20,-10])
      cylinder (h = 30, r = 2.6); // M5 screw
//Sinkings for M5 screws
    translate([10,20,8])
      cylinder (h = 10, r = 5);
    translate([90,20,8])
      cylinder (h = 10, r = 5);
//hole for ball bearing screw
    rotate([90,0,0]) translate([50,11,-25])
      cylinder (h = 30, r = 1.75);
}