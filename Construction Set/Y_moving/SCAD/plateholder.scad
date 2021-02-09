use <frame.scad>

x=128;
y=120;
h=10;
platte_x=101;
platte_x_50=104;
platte_y=104;
platte_y_50=51;

    //***Select, please:***
//plate_holder();
plate_holder_tower_frame();
//tower_distance_check();

module plate_holder() {
difference() {
cube([x, y, h], center=true);
    translate([0, 0, 1])
cube([platte_x, platte_y, h-4], center=true);
    translate([0, 0, 6])
cube([platte_x+15, platte_y+15, h-5], center=true);
//chambers for magnets
    translate([60, 20, -2])
    cube([8, 8, 3], center=true);
    translate([60, -20, -2])
    cube([8, 8, 3], center=true);
    translate([-60, 20, -2])
    cube([8, 8, 3], center=true);
    translate([-60, -20, -2])
    cube([8, 8, 3], center=true);
// position hole
   translate([60, 0, -5]) 
   cylinder(d1=5.5, d2=3.5, h=3);
   mirror([1,0,0]) translate([60, 0, -5]) 
   cylinder(d1=5.5, d2=3.5, h=3);
}
//plate spacer
translate([30, platte_y/2-1.52, -4]) cube([2, 1.5, 5.5]);
translate([30, -platte_y/2, -4]) cube([2, 1.5, 5.5]);
translate([-30, platte_y/2-1.52, -4]) cube([2, 1.5, 5.5]);
translate([-30, platte_y/2-1.5, -4]) cube([2, 1.5, 5.5]);
translate([-10, platte_y/2-1.5, -4]) cube([2, 1.5, 5.5]);
translate([-51.5, 40, -4]) cube([1, 2, 5.5]);
translate([-51.5, 10, -4]) cube([1, 2, 5.5]);
translate([-51.5, -40, -4]) cube([1, 2, 5.5]);
translate([-30, -platte_y/2, -4]) cube([2, 1.5, 5.5]);
}
module plate_holder_tower_frame() {
difference() {
cube([x, y, h], center=true);
    translate([0, 0, 2])
cube([platte_x, platte_y, h-4], center=true);
//chambers for magnets
    translate([60, 20, -2])
    cube([8, 8, 3], center=true);
    translate([60, -20, -2])
    cube([8, 8, 3], center=true);
    translate([-60, 20, -2])
    cube([8, 8, 3], center=true);
    translate([-60, -20, -2])
    cube([8, 8, 3], center=true);
// position hole
   translate([60, 0, -5]) 
   cylinder(d1=5.5, d2=3.5, h=3);
   mirror([1,0,0]) translate([60, 0, -5]) 
   cylinder(d1=5.5, d2=3.5, h=3);
}
//plate spacer
translate([30, platte_y/2-1.52, -4]) cube([2, 1.5, 5.5]);
translate([30, -platte_y/2, -4]) cube([2, 1.5, 5.5]);
translate([-30, platte_y/2-1.52, -4]) cube([2, 1.5, 5.5]);
translate([-30, platte_y/2-1.5, -4]) cube([2, 1.5, 5.5]);
translate([-10, platte_y/2-1.5, -4]) cube([2, 1.5, 5.5]);
translate([-51.5, 40, -4]) cube([1, 2, 5.5]);
translate([-51.5, 10, -4]) cube([1, 2, 5.5]);
translate([-51.5, -40, -4]) cube([1, 2, 5.5]);
translate([-30, -platte_y/2, -4]) cube([2, 1.5, 5.5]);
//tower frame on plate holder
rotate([0, 0, 90]) translate([-platte_y/2+1.5-2, 50.5+1, 4.5]) rahmen();
}
module tower_distance_check() {
    difference() {
    union() {
    cube([100, 100, 7], center=true);
    translate([0, 0, 3]) cube([103, 103, 1], center=true);
    }
    cube([90, 90, 8], center=true);
    }
}