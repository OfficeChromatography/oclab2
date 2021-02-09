module supportedCube(x,y,z,space,thickness)
{
    width=space + thickness;
    color([0,1,0])lineup(0,width, x){ cube([thickness,y,z]) ;}
    
        
}

module lineup(start,step, end) 
{
    for (i = [start : step : end])
        {
            translate([ i, 0, 0 ]) children(0);
            
        }
}

 
supportedCube(20,20,20,2,2);
