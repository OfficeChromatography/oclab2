//mounting frames for faces

    //Select, please: uncomment "//"

drilling_jig();
//front();
//back_top();
//back_bottom();
//axis_top(); //for detachable cover, instead x-profile plus cover_mounting()
//cover_top();
//oc_lab(); //lettering OC_Lab
//left_front_cable_channel();
//right_front();
//sides_back();  //2 needed
//bottom_front();
//bottom_back();
//cover_mounting();

x = 215;
y1 = 130; //front
y2 = 120; //back
yb = 246; //bottom
overlap = 12;
y1_o=y1-2*overlap; //y1 for cover
z = 210 - 2 * overlap; //210 mm - 2 x 12 mm
z2=z-20; //-20=y_end and y_motor
h = 17;
d = 5;
r1 = 1.5;
offset=6.5;

module drilling_jig() {
difference() {
    union() {
    cube([215, 210, 5]);
    translate([-10, 70, 0]) cube([10, 150, 8]);
    translate([0, 210, 0]) cube([215, 10, 8]);
    }
    //HDMI plug, center for 23-mm drill
    translate([27, 210-40, 0]) cylinder(h=10, r=3);
    //12-V plug
    translate([215-27, 210-124, 0]) cylinder(h=10, r=4.15); 
    //Adafruit 4218 - USB-C plug, center for 23-mm drill
    translate([185, 210-40, 0]) cylinder(h=5, r=3);
    //USB-Hub mounting with zip ties
    translate([25, 190, 0]) cylinder(h=10, r=1.6);
    translate([25, 190-30, 0]) cylinder(h=10, r=1.6);
    translate([85, 190, 0]) cylinder(h=10, r=1.6);
    translate([85, 190-30, 0]) cylinder(h=10, r=1.6);
    translate([6, 210-40, 0]) cylinder(h=15, r=r1);
    translate([40, 210-6, 0]) cylinder(h=15, r=r1);
    cube([215, 70, 5]);
    }
}
module bottom_front() {
difference() {
    union() {
    x_axis();
    translate([-5, h, 5]) rotate([180, 0, 90]) yb_axis_left();
    translate([x+5, h+yb, 5]) rotate([180, 0, 270]) yb_axis_right();
    translate([x, 2*h+yb, 0]) rotate([180, 180, 0]) x_axis();
    }
translate([-5, 135, -2]) cube([x+10, 180, 20]);
}
}
module bottom_back() {
difference() {
    union() {
    x_axis();
    translate([-5, h, 5]) rotate([180, 0, 90]) yb_axis_left();
    translate([x+5, h+yb, 5]) rotate([180, 0, 270]) yb_axis_right();
    translate([x, 2*h+yb, 0]) rotate([180, 180, 0]) x_axis();
    }
translate([-5, 0, -2]) cube([x+10, 155, 20]);
translate([89, 100, -2]) cube([37, 200, 10]);
}
}
module sides_back() {
difference() {
    union() {
    y2_axis();   
    translate([y2+d, h, 0]) rotate([0, 0, 90]) z_axis();
    translate([-5, z+h, 0]) rotate([0, 0, 270]) z_axis();
    rotate([0, 0, 180]) translate([-y2, -(z+h+17), 0]) y2_axis();
    }
translate([0, 110, 0]) cube([30, 146, 10], center=true);
}
}
module right_front() {
y1_axis();   
translate([y1+d, h, 0]) rotate([0, 0, 90]) z_axis();
translate([-5, z+h, 0]) rotate([0, 0, 270]) z_axis();
rotate([0, 0, 180]) translate([-y1, -(z+h+17), 0]) y1_axis();
}
module left_front_cable_channel() {
y1_axis();   
translate([y1+5, h, 0]) rotate([0, 0, 90]) z_axis();
translate([-5, z+h, 0]) rotate([0, 0, 270]) z_axis_cable_channel();
rotate([0, 0, 180]) translate([-y1, -(z+h+17), 0]) y1_axis_cable_channel();
}
module oc_lab() {
translate([0, 0, 0])
linear_extrude(3) text("OCLab2", size =20, direction = "ltr", spacing =1);
translate([0, -2, 0]) cube([101, 2, 3]);
translate([100.8, 19, 0])
linear_extrude(3) text("GM", size =8, direction = "ltr", spacing =1);
    translate([110, 23, 0])
    difference() {
    cylinder(r=10, h=3);
    cylinder(r=9, h=3);
    }
    translate([94, 18.4, 0]) cube([25, 1, 3]);
}
module cover_top() {
 x_magnet();
    rotate([0,0,-90]) translate([-(y1-overlap),-5,1.5])
 y1_axis_oB();
    rotate([0,0,90]) translate([overlap,-(x+5),1.5])
 y1_axis_oB();
}
//axis_top for detachable cover instead x-profile plus z_axis??
module axis_top() {
difference() {
    union() {
    cube([x-0.5, 20, 20]);
    translate([0, -12, 6]) cube([x-0.5, overlap, 6.5]);
    translate([0, 7.5, 20]) cube([x-0.5, 6.5, overlap]);
    }
    translate([15, -(overlap-3), 0])
    cylinder(h=30, r=1.5);
    translate([x-0.5-15, -(overlap-3), 0])
    cylinder(h=30, r=1.5);
    rotate([90, 0, 0])
    translate([15, 20+overlap-3, -20])
    cylinder(h=30, r=1.5);
    rotate([90, 0, 0])
    translate([x-0.5-15, 20+overlap-3, -20])
    cylinder(h=30, r=1.5);
}
}
module front() {
    difference() {
    union() {
    rotate([180,0,0]) translate([0, -12, -6.5])
    x_axis_front();
    rotate([180,0,90]) translate([overlap, -5, -5]) 
    z2_axis_front();
    rotate([180,0,270]) translate([-(z2+overlap), -(x+5), -5]) z2_axis_front();
    }
    translate([108, 8.5, 4]) cube([140, 8, 10], center=true);
}
}
module back_top() {
difference() {
union() {
rotate([180,0,90]) translate([0, -5, -5]) 
    z_axis_cable_channel_back();
rotate([180,0,270]) translate([-(z+overlap), -(x+5), -5]) z_axis_back();
translate([x,z+h+overlap,0]) rotate([0,0,180]) x_axis();
    }
    //translate([5, 183, -10])
    //cube([10, 15, 20]);
    translate([-10, 0, -10])
    cube([230, 100, 20]);
    }
}
module back_bottom() {
difference() {
union() {
rotate([180,0,90]) translate([0, -5, -5]) 
    z_axis_cable_channel_back();
rotate([180,0,270]) translate([-(z+overlap), -(x+5), -5]) z_axis_back();
translate([x,z+h+overlap,0]) rotate([0,0,180]) x_axis();
    }
    translate([-10, 100, -10])
    cube([230, 120, 20]);
    }
}
module x_axis() {
difference() {
    union() {
    cube([x, h, d]);
    translate([0,5,0])
    cube([x, overlap, offset]);
    }
}
}
module x_axis_front() {
    cube([x, overlap, offset]);
    translate([-5,0,1.5])
    cube([5,12,d]);
    translate([x, 0, 1.5])
    cube([5,12,d]);
}
module x_axis_back() {
difference() {
    union() {
    cube([x, overlap, offset]);
    translate([-5,0,1.5])
    cube([5,12,5]);
    translate([x, 0, 1.5])
    cube([5,12,5]);
    }
}
}
module y1_axis() {
difference() {
    union() {
    cube([y1, h, d]);
    translate([0, 5, -1.5])
    cube([y1, overlap, offset]);
    }
}
}
module y1_axis_oB() {
    union() {
    cube([y1_o, h, d]);
    translate([0,5,-1.5])
    cube([y1_o, overlap, offset]);
    }
}
module y1_axis_cable_channel() {
difference() {
    union() {
    cube([y1, h, d]);
    translate([0,5,-1.5])
    cube([y1, overlap, offset]);
    translate([6, 11, 5])
    cube([y1-12, 6, 7.5]);
    }
}
}
module y2_axis() {
difference() {
    union() {
    cube([y2, h, d]);
    translate([0,5,-1.5])
    cube([y2, overlap, offset]);
    }
}
}
module yb_axis_left() {
difference() {
    union() {
    cube([yb, h, d]);
    translate([0,5,-1.5])
    cube([yb, overlap, offset]);
    }
}
}
module yb_axis_right() {
difference() {
    union() {
    cube([yb, h, d]);
    translate([0,5,-1.5])
    cube([yb, overlap, offset]);
    }
}
}
module z_axis() {
difference() {
    union() {
    cube([z, h, d]);
    translate([0, d, -1.5])
    cube([z, overlap, offset]);
    }
}
}
module z_axis_back() {
difference() {
    union() {
    cube([z+overlap, h, d]);
    translate([0, d, -1.5])
    cube([z+overlap, overlap, offset]);
    }
}
}
module z_axis_front() {
    cube([z, h, d]);
    translate([0, 5, -1.5])
    cube([z, overlap, offset]);
}
module z_axis_cable_channel() {
difference() {
    union() {
    cube([z, h, d]);
    translate([0,5,-1.5])
    cube([z, overlap, offset]);
    translate([6, 11, 5])
    cube([z-12, 6, 7.5]);
    }
}
}
module z_axis_cable_channel_back() {
difference() {
    union() {
    cube([z+overlap, h, d]);
    translate([0,5,-1.5])
    cube([z+overlap, overlap, offset]);
    translate([6, 11, 5])
    cube([z, 6, 7.5]);
    }
}
}
module z2_axis_front() {
    cube([z2, h, d]);
    translate([0, 5, -1.5])
    cube([z2, overlap, offset]);
}
module x_magnet() {
difference() {
    union() {
    cube([x, h-5, 10]);
    translate([0, -5, 1.5]) cube([x, 5, 5]);
    }
    translate([25, 2, 0])
    cube([8.5, 8.5, 3.5]);
    translate([25.2, 2, 5])
    cube([8.1, 10.5, 3.1]);
    translate([x-25-10, 2, 0])
    cube([8.5, 8.5, 3.5]);
    translate([x-24.8-10, 2, 5])
    cube([8.1, 10.5, 3.1]);
}
}
module x_magnet_2() {
difference() {
    union() {
    cube([x, h-5, 10]);
    translate([-5, 0, 2])
    cube([5,12,5]);
    translate([x, 0, 2])
    cube([5,12,5]);
    }
    translate([25, 2, 0])
    cube([8.5, 8.5, 3.5]);
    translate([25.2, 2, 5])
    cube([8.1, 10.5, 3.1]);
    translate([x-25-10, 2, 0])
    cube([8.5, 8.5, 3.5]);
    translate([x-24.8-10, 2, 5])
    cube([8.1, 10.5, 3.1]);
}
}
module cover_mounting() {
    translate([0, -2.5, -5])
x_axis_cover();
translate([x-1, -5, -7.5]) rotate([270, 0, 180])
x_axis_cover();
    translate([35, -5, -17.5])
cube([50, 12.5, 4.5]);
    translate([35, 3, -15])
cube([50, 4.5, 12.5]); 
    translate([135, -5, -17.5])
cube([50, 12.5, 4.5]);
    translate([135, 3, -16])
cube([50, 4.5, 12.5]);
}
module x_axis_cover() {
difference() {
    union() {
    cube([x-1, h, d-0.2]);
    translate([0,5,0])
    cube([x-1, overlap, offset]);
    }
    translate([15, h-3, -2])
    cylinder(h = 10, r=r1);
    translate([x-1-15, h-3, -2])
    cylinder(h = 10, r=r1);
    translate([(x-1)/2, h-8, -2])
    cylinder(h = 10, r=r1);
}
}