//Connector Z_axis center

difference() {
    start();
        translate([0, -11, -5])
        cylinder (h=10, r=1.6);
    translate([0, 10, -5])
    cylinder (h=10, r=2.6);
}
module start() {
    cube([18, 30, 5], center = true);
        translate([0, -11, 2.5])
        cube([18, 5, 1.5], center=true);
        translate([0, 10, 2.5])
        rotate([0, 0, 90])
        cube([10, 5, 1.5], center=true);
    }