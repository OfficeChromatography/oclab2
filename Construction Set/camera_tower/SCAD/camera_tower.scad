//camera tower

use <UVC_housing.scad>
use <UVA_housing.scad>

difference() {
union() {
    base();
    translate([0, 0, 3])
    cubus();
    }
    //UVC cutout 
    translate([-52,-50,41.5]) cube([104,100,70]);
    //UVA cutouts
    translate([-52,0,14.2]) rotate([0,18,0]) cube([8,76,11.8], center=true);
    translate([52,0,14.2]) rotate([0,-18,0]) cube([8,76,11.8], center=true);
    }
    rotate([180,0,90]) translate([-52,50,-22.5]) UVA_housing();
    rotate([180,0,270]) translate([-52,50,-22.5]) UVA_housing();
    rotate([180,0,90]) translate([-52,51.5,-22.87]) UVA_support();
    rotate([180,0,270]) translate([-52,51.5,-22.87]) UVA_support();
    rotate([0,270,90]) translate([41,52,-52]) UVC_housing();
    rotate([0,270,270]) translate([41,52,-52]) UVC_housing();
//tower mountings
difference() {
    union() {
    translate([-66,51,0]) cube([132,2,113]);
    }
    translate([57, 60, 9]) rotate([90,0,0])
    cylinder(h=130, r=2.5);
    translate([-57, 60, 9]) rotate([90,0,0])
    cylinder(h=130, r=2.5);
    translate([61, 60, 103]) rotate([90,0,0])
    cylinder(h=130, r=2.5);
    translate([-61, 60, 103]) rotate([90,0,0])
    cylinder(h=130, r=2.5);
}
module cubus() {
difference() {
    linear_extrude(height = 110, scale = 1) rectangular();
    translate([0, 0, 0])
    linear_extrude(height = 130, scale = 1) rectangular_inside();
    } 
}
module rectangular() {
    a = 52;
    b = 52;
    polygon(points=[[-a,-b],[a,-b],[a,b],[-a,b]]); 
}
module rectangular_inside() {
    a1 = 50;
    b1 = 50;
    polygon(points=[[-a1,-b1],[a1,-b1],[a1,b1],[-a1,b1]]); 
}
module rectangular_base() {
    x = 52;
    y = 52;
    polygon(points=[[-x,-y],[x,-y],[x,y],[-x,y]]); 
}
module rectangular_base_inside() {
    x = 51;
    y = 51;
    polygon(points=[[-x,-y],[x,-y],[x,y],[-x,y]]); 
}
module base() {
    difference() {
    linear_extrude(height = 4, scale = 1) rectangular_base();
    linear_extrude(height = 4, scale = 1) rectangular_base_inside();
    }    
}