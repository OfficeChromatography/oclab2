
module triangle(c, height, betha)
{ 
    c_right=height*cos(betha);
    c_left=-c+height*cos(betha);
    // draw triangle c=x, C=[0,heigth]
    polygon(points=[ [c_left,0], [c_right,0], [0,height] ]);
}

module isosides_triangle(a)
{
      height= sin(60)*a;
    // draw triangle c=x, C=[0,heigth]
      polygon(points=[ [-a/2,0], [a/2,0], [0,height] ]);
}

module isosceles_triangle(c,height)
{
    // draw triangle c=x, C=[0,heigth]
     polygon(points=[ [-c/2,0], [c/2,0], [0,height] ]);
}

module rightangular_triangle(width, height)
{
      // draw triangle c=x, C=[0,heigth]
     polygon(points=[ [0,0], [width,0], [0,height] ]);
}

rightangular_triangle(2,2);