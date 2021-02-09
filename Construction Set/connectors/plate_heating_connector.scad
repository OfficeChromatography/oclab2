//Connector holder plate heating

difference() {
    cube([18, 30, 4], center = true);    
    translate([0, -11, -5])
        cylinder (h=10, r=1.6);
    translate([0, 10, -5])
    cylinder (h=10, r=2.6);
}
