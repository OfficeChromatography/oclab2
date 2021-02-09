//camera holder

cover_plate();

module cover_plate() {
difference() {
    ground_plate();
//cut-out Pi camera
    translate([0, -4, -10]) cube([12, 18, 40], center = true);
//holes for camera screws
    translate([-10.5, 0, -10]) cylinder(40, 1.2);
    translate([10.5, 0, -10]) cylinder(40, 1.2);
//cut-outs for LED strips
    translate([42, 0, -10]) cube ([10.5, 51.3, 40], center = true);
    translate([-42, 0, -10]) cube ([10.5, 51.3, 40], center = true);
//holes for screws to catch the cover plate
    translate([40, -40, 0]) cylinder(r=2.6, h=3);
    translate([40, 40, 0]) cylinder(r=2.6, h=3);
}
//holder for diffusing foils
translate([-39, 0, 4]) rotate([0, 0, 90]) diffusor_carrier();
translate([39, 0, 4]) rotate([0, 0, 90]) diffusor_carrier();
}
module ground_plate() {
    linear_extrude(height = 3, scale = 1) rectangular();
}
module rectangular(center=true) {
    a = 50.8;
    b = 50.8;
    polygon(points=[[-a,-b],[a,-b],[a,b],[-a,b]]); 
   }
module diffusor_carrier() {
difference() {
    cube([60, 19, 5], center=true);
//cut-out for LED strip
    cube ([53, 16.5, 40], center = true);
//slit for diffusor foil
    translate([2, 0, 0]) cube([62, 18, 2], center=true);
}
}