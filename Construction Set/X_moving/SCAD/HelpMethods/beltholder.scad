x=54/2;
y=18/2;
z=7;
module solid()
{
   
    // Belt holder base
    translate([0,0,7/2]) cube([2*x,2*y,z],true);
 
    // belt holders
    translate([-10,0,0])cylinder(r=4.5, h=14, $fn=25);
    translate([+10,0,0])cylinder(r=4.5, h=14, $fn=25); 
    translate([-10,0,14])cylinder(r1=4.5, r2=3.8, h=2, $fn=25);
    translate([+10,0,14])cylinder(r1=4.5, r2=3.8, h=2, $fn=25);
     
    // Belt Insert L
    translate([-x,-y+5,0]) cube([10,5,15]);
    translate([-x,-y+5+5+2.3,0]) cube([10,2*y-10-2.3,15]);
    // Belt Insert R
    translate([x-10,-y+5,0]) cube([10,5,15]);
    translate([x-10,-y+5+5+2.3,0]) cube([10,2*y-10-2.3,15]);
}

module cut_out()
{
    // chamfer L
    translate([-x+10,-y+10+2.3/2,15]) rotate([0,0,45])cube([4,4,16],true);
    // chamfer R
    translate([x-10,-y+10+2.3/2,15]) rotate([0,0,45])cube([4,4,16],true);    
}

module beltholder()
{
    difference()
    {
        solid();
        cut_out();
    }   
    echo("<b>beltholder(x1,x2,y1,y2,z1,z2): </b>",[-x,x,-y,y,0,16]);
}  

beltholder();