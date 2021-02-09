use <bearing.scad>

difference() {
    //long bearing holder
    cube ([54, 128, 15], center = true);
    //long bearing holder holes cutter
    translate([0,38,-3.75]) rotate([0,0,90]) horizontal_bearing_holes(2);
    translate([0,-38,-3.75]) rotate([0,0,90]) horizontal_bearing_holes(2);
    // Belt holder base
    translate([0,0,5]) cube([70,20,10], center=true);
    union(){
            for(i = [-1,1]){
                for(j = [-1,1]){
                    translate([i,j*1,0]) 
                    translate([i*20,j*59,-4])                cube([8.1,8.1,3.2],center=true);
                    }
            }
    }           
}
// belt holders
    translate([10,0,0])cylinder(r=4.5, h=5.5, $fn=25);
    translate([-10,0,0])cylinder(r=4.5, h=5.5, $fn=25); 
    translate([10,0,5.5])cylinder(r1=4.5, r2=3.8, h=2, $fn=25);
    translate([-10,0,5.5])cylinder(r1=4.5, r2=3.8, h=2, $fn=25);
// belt insert R
difference() {
    union() {
    translate([20,-4,0]) cube([7,8,7.5]);
    translate([20,-10.3,0]) cube([7,4,7.5]);
    }
   translate([17.5,-2,0]) rotate([0,0,-40]) cube([6,2.5,10]);
}
// belt insert L
difference() {
   union() {
        translate([-27,-4,0]) cube([7,8,7.5]);
        translate([-27,-10.3,0]) cube([7,4,7.5]);
     }
   translate([-23.5,-4, 0]) rotate([0,0,-45]) cube([2.5,6,10]);
    }
//positions for plate holder
for(i = [-1,1]){
    translate([0,i*60,-9.5]) 
    cylinder(d1=3,d2=5,h=2,center=false); }