use <frame.scad>

x=128;
y=120;
h=10;
platte_x=101;
platte_x_50=104;
platte_y=104;
platte_y_50=51;

//plate_holder();
plate_holder_tower_frame();

module plate_holder() {
difference() {
cube([x, y, h], center=true);
    translate([0, 0, 0])
cube([platte_x, platte_y, h-2], center=true);
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
   cylinder(d1=5.4, d2=3.4, h=3);
   mirror([1,0,0]) translate([60, 0, -5]) 
   cylinder(d1=5.4, d2=3.4, h=3);
//heating foil cables
   translate([38, 0,-3])
   cube([26, 36, 4], center=true);
   translate([50, 6, -3])
   cube([30, 2, 4], center=true);
   translate([50, -6, -3])
   cube([30, 2.5, 4], center=true);
//thermistor
    translate([-40, 30, -5])
    cube([110, 4, 4]);
}
//plate spacer
translate([30, platte_y/2-1.52, -4]) cube([2, 1.5, 4.5]);
translate([30, -platte_y/2, -4]) cube([2, 1.5, 4.5]);
translate([-30, platte_y/2-1.52, -4]) cube([2, 1.5, 4.5]);
translate([-30, platte_y/2-1.5, -4]) cube([2, 1.5, 4.5]);
translate([-10, platte_y/2-1.5, -4]) cube([2, 1.5, 4.5]);
translate([-51.5, 40, -4]) cube([1, 2, 4.5]);
translate([-51.5, 10, -4]) cube([1, 2, 4.5]);
translate([-51.5, -40, -4]) cube([1, 2, 4.5]);
translate([-30, -platte_y/2, -4]) cube([2, 1.5, 4.5]);
}

module plate_holder_tower_frame() {
difference() {
cube([x, y, h], center=true);
translate([0, 0, 2]) cube([platte_x, platte_y, h-4], center=true);
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
   cylinder(d1=5.4, d2=3.4, h=3);
   mirror([1,0,0]) translate([60, 0, -5]) 
   cylinder(d1=5.4, d2=3.4, h=3);
//heating foil cables
   translate([38, 0,-3])
   cube([26, 36, 4], center=true);
   translate([50, 6, -3])
   cube([30, 2, 4], center=true);
   translate([50, -6, -3])
   cube([30, 2.5, 4], center=true);
//thermistor
   translate([-40, 30, -5])
   cube([110, 4, 4]);
}
//plate spacer
translate([30, platte_y/2-1.52, -4]) cube([2, 1.5, 4.5]);
translate([30, -platte_y/2, -4]) cube([2, 1.5, 4.5]);
translate([-30, platte_y/2-1.52, -4]) cube([2, 1.5, 4.5]);
translate([-30, platte_y/2-1.5, -4]) cube([2, 1.5, 4.5]);
translate([-10, platte_y/2-1.5, -4]) cube([2, 1.5, 4.5]);
translate([-51.5, 40, -4]) cube([1, 2, 4.5]);
translate([-51.5, 10, -4]) cube([1, 2, 4.5]);
translate([-51.5, -40, -4]) cube([1, 2, 4.5]);
translate([-30, -platte_y/2, -4]) cube([2, 1.5, 4.5]);
//tower frame on plate holder
rotate([0, 0, 90]) translate([-platte_y/2+1.5-2, 50.5+1, 4.5]) rahmen();
}