// Y-end

x=215;

difference() {
    cube([215,20,20]);
    cube([215, 20, 6]);
    translate([109,15,29])
    rotate([90,0,0])
    cylinder(h=10, r=24);
//holes for 8-mm rods
    translate([71,10,9.5])
    cylinder (h = 20, r=4.15);
    translate([147,10,9.5])
    cylinder (h = 20, r=4.15); 
// M4 screws
    rotate([90,0,0])
    translate([50,10,-25])
    cylinder (h = 40, r = 2.2); 
    rotate([90,0,0]) 
    translate([x-50,10,-25])
    cylinder (h = 40, r=2.2);
//sinkings for M4   
    rotate([90,0,0])
    translate([50,10,-5])
    cylinder (h = 20, r=3.7);
    rotate([90,0,0])
    translate([x-50,10,-5])
    cylinder (h=20, r=3.7);
//hole for ball bearing screw
    rotate([90,0,0])
    translate([109,12,-30])
    cylinder (h=40, r=1.8); 
//sinkings for bearing screw
    rotate([90,0,0])
    translate([109,12,-3])
    cylinder (h=10, r=3.7);
    rotate([90,0,0])
    translate([109,12,-27.5])
    cylinder (h=10, r=3.7);
}
y_endstop();

module y_endstop() {
difference() {
    translate([19,5,20])
    cube([43,15,6]);
    translate([19,6,22])
    cube([40.5,1.65,4]);
    translate([19,5,22])
    cube([13,2,4]);
    }
translate([19,-5, 20])
cube([43, 10, 2]);
translate([19, -5, 20])
cube([43, 2, 17]);
}