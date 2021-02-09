//UVC-LED housing

UVC_housing();

module UVC_housing() {
difference() {
UVC_module();
    rotate([90, 270, 50]) translate([8, -49, -2.1])
    union() {
    translate([26.5, 8.4, 2]) cube([6.7, 22, 6.7]);
    translate([60.7, 8.4, 2]) cube([6.7, 22, 6.7]); 
    }
}    
rotate([90, 90, 50]) translate([-80, 0, 2]) filterholder();
}
module UVC_module() {
difference() {
linear_extrude(height = 104, scale = 1) 
polygon(points=[[0,0],[72,0],[16.713, 19.917]]);
translate([1,-2,2])
linear_extrude(height = 100, scale = 1) 
polygon(points=[[0,0],[72,0],[16.713,19.917]]);
    rotate ([0,0,50]) translate([2,-10,27]) cube([12,22,50]);
}
}
module filterholder() {
difference() {
cube([56, 16, 2.8]);
translate([2.5, 0, 0]) cube([51, 15, 2]);
translate([3.75, 0, 0]) cube([48.5, 13, 8]);
translate([3.75, 0, 0]) cube([48.5, 16, 8]);
}
}