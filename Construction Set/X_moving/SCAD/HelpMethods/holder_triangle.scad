// holder triangle
use <triangle.scad>

module holder_triangle(space=[20,20],clearance=2, fillout=1)
    {
      translate([0,-space[0]/2,0])rotate([0,-90,0]) linear_extrude(height = space[1]*fillout, center = true) {rightangular_triangle(clearance,clearance);}
    }
    
 holder_triangle();