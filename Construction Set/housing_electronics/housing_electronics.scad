//Housing for electronics

cubus();

module cubus() {
difference() {
    linear_extrude(height = 45, scale = 1) rectangular();
    translate([0, 0, 3])
    linear_extrude(height = 45, scale = 1) rectangular_inside();
//Holes for cables
    translate([-100, 25, -10]) cube([10, 40, 30], center=true);
    translate([-100, -36, -10]) cube([10, 40, 30], center=true);
    translate([18, -47, -10]) cube([10, 20, 30], center=true);
    translate([35, 35, 5]) cube([70, 30, 20]);
//Hole to reach the sd card
  translate([90, -40, 3])
  cube([30, 25, 20]);
//Hole above pi camera
  cube([40, 40, 10], center=true);
//Screw hole for Ramps 1.4
  translate([-90, 43.5, 0]) cylinder(h=10, r=1.6);
  translate([-8, 43.5, 0]) cylinder(h=10, r=1.6);
  //Cut-out and srew holes for Inkshield
  translate([-93, -65, 3]) cube([100, 20, 20]);
  translate([-90.5, -11, 0]) cylinder(h=10, r=1.6);
  translate([8, -44.5, 0]) cylinder(h=10, r=1.6);
  //translate([6, 35, 0]) cylinder(h=10, r=1.6);
//Mounting holes for Raspbery Pi 4
  //translate([43, 48, 0]) cylinder(h=10, r=2.5);
  //translate([43, -20, 0]) cylinder(h=10, r=2.5);  
//Mounting holes for M3 screws
    translate([77.5, 70, 41])
    rotate([90,0,0])
    cylinder(h=150, r=1.7);  
    translate([-77.5, 70, 41])
    rotate([90,0,0])
    cylinder(h=150, r=1.7);
}
//Support Raspberry Pi 4
  translate([25, 0, 0]) cube([80, 4, 8]);
//test RPI
//translate([20, -56.5, 0]) cube([5, 56, 6]);
}
module rectangular() {
    a = 107;
    b = 59.5;
    polygon(points=[[-a,-b],[a,-b],[a,b],[-a,b]]); 
   }
module rectangular_inside() {
    a1 = 105;
    b1 = 57;
    polygon(points=[[-a1,-b1],[a1,-b1],[a1,b1],[-a1,b1]]); 
   }