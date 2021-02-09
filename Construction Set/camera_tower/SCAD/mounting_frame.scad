//mounting camera tower
a=243;
b=90-16;
c=114;

difference() {
    union() {
        translate([0,0,0])
        cube([a, 20, 7]);
        translate([0,0,0])
        cube([20, c, 7]);
        translate([a-20, 0, 0])
        cube([20, c, 7]);
        translate([0, b+20, 0])
        cube([a, 20, 7]);
    }
translate([1.5+2.5, 10, -10])
cylinder(h=20, r=2.1);
translate([a-(1.5+2.5), 10, -10])
cylinder(h=20, r=2.1);
translate([1.5+2.5, 10, 4])
cylinder(h=20, r=3.6);
translate([a-(1.5+2.5), 10, 4])
cylinder(h=20, r=3.6);
translate([(a-122)/2, 10, 0]) cube([30, 5, 30], center=true);
translate([a-((a-122)/2), 10, 0]) cube([30, 5, 30], center=true);
translate([1.5+2.5, c-10, -10])
cylinder(h=20, r=2.1);
translate([a-(1.5+2.5), c-10, -10])
cylinder(h=20, r=2.1);
translate([1.5+2.5, c-10, 4])
cylinder(h=20, r=3.6);
translate([a-(1.5+2.5), c-10, 4])
cylinder(h=20, r=3.6);
translate([(a-114)/2, c-10, 0]) cube([30, 5.2, 20], center=true);
translate([a-((a-114)/2), c-10, 0]) cube([30, 5.2, 20], center=true);    
}