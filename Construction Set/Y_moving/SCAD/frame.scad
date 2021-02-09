rahmen();

module rahmen() {
difference()  {
union() {
rotate([-19.8, 0, 0]) cube([103, 2, 7]);
translate([0, -105, 0]) rotate([19.8, 0, 0]) cube([103, 2, 7]);
translate([-2, -107, 0]) cube([2, 111, 7]);
}
translate([-2, -110, -1]) cube([120, 120, 1.5]);
translate([-2, -110, 6]) cube([120, 120, 1.5]);
}
}