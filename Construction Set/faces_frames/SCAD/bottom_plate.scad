//bottom plate

//front();
back();

module back() {
difference() {
cube([215, 135, 3]);
    //cut-out Nema 14
translate([88.5, 135-35, 0]) cube([35, 35, 3]);
translate([88.5+35, 135-35/2-5, 0]) cube([3, 10, 3]);
    //cut-out cables
translate([215-14, 135-14, 0]) cube([14, 14, 3]);
    translate([215-14, 135-14, 0]) cylinder(r=3, h=3);
    holes(); }
}
module front() {
    difference() {
        cube([215, 135, 3]);    
        holes();
    }
}
module holes() {
    for (i=[1:5])
        translate([6, i*30-10, 0]) cylinder(5, 2.5);
    for (i=[1:5])
        translate([215-6, i*30-10, 0]) cylinder(5, 2.5);
    for (i=[1:6])
        translate([i*30-10, 135-6, 0]) cylinder(5, 2.5);
}