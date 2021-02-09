//LED housing UVA top

module UVA_housing() {
difference() {
union() {
translate([0,-8.38,14.54]) 
    cube([104,10,5]);
    rotate ([72,0,0]) cube([104,16,14]); 
    translate([0, 0.8, -8]) rotate([72,0,0])
    color("red") {
    cube([104,8,17.24]); }
    }
color("yellow") {
    translate([14,2,2]) rotate([72,0,0]) 
    cube([76,12,14]);
    }
color("blue") {
    translate([29, 4, 1.8]) rotate([162,0,0]) 
    cube ([46,18,12]); }
    translate([0,0,-8])
    cube([104,20,28]);
    translate([26.5,0,-6.5]) rotate([72,0,0])
    cube([51,8,25.5]);
    }
}

//Support for UVA board
module UVA_support() {
difference() {
    rotate([0,90,0]) translate([-2.65,0,0])
linear_extrude(height = 104, scale = 1) 
polygon(points=[[0,0],[10.5,0],[6, 14.409]]);
    rotate([0,90,0]) translate([-5,0,15])
    cube([40,30,74]);
    }
}
UVA_housing();
UVA_support();