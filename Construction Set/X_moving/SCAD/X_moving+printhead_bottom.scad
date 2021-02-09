use <HelpMethods/bearing.scad>
use <printhead.scad>

//x_carriage_base
difference() {
    start();
    // Small bearing holder holes cutter
    translate([-33/2,0,0]) rotate([0,0,90])    horizontal_bearing_holes(1);
    // Small bearing holder holes cutter
    translate([-33/2,44.5,0]) rotate([0,0,90]) horizontal_bearing_holes(1);
    }
//Cube for end stop
translate([5, -12, 0]) cube([12, 5, 10]);

//Belt holders
    translate([-22, 24.5, 2])cylinder(r=3.5, h=12, $fn=25);
    translate([-11,24.5,2])cylinder(r=3.5, h=12, $fn=25); 
    translate([-22 ,24.5,14])cylinder(r1=3.5, r2=3, h=2, $fn=25);
    translate([-11,24.5,14])cylinder(r1=3.5, r2=3, h=2, $fn=25);
 //Belt Insert R
    difference() {
        union() {
        translate([-4.5,19.5,7]) cube([10,6,8]);
        translate([-4.5,28,7]) cube([10,4.5,8]);
    }
    translate([-9,27,7]) rotate([0,0,-45]) cube([5,5.5,10]);
    }
//Belt Insert L
    difference() {
        union() {
        translate([-38.5, 19.5,0]) cube([10,6,15]);
        translate([-38.5,28,0]) cube([10,4.5,15]);
        }
    translate([-31.5,27,7]) rotate([0,0,-45]) cube([5,5.5,10]);
    }
translate([-16, -12, 0])
    printhead_bottom();
    
module start() {
    // Small bearing holder
    translate([-16.5,0,0]) rotate([0,0,90]) horizontal_bearing_base(1);
    // Small bearing holder
    translate([-16.5,45,0]) rotate([0,0,90]) horizontal_bearing_base(1);
    // Base plate
    translate([-38.5,-12,0]) cube([44,69,7]);
}