//printhead for connection with pin contact cable

// libaries
use <HelpMethods/holder_triangle.scad>
use <HelpMethods/SnapLib.0.36.scad>

//<<<<<<<<<<<<<<<Execution>>>>>>>>>>>>>>
//printhead_bottom();
printhead_top();
//plate_clamp();
//<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>
// functions
// import
//------------------------------
// variables in mm, select NP_width
//nozzle plate big
NP_height = 1.3;
//NP_width = 6.9;
NP_offset_z = 9;

//nozzle plate small
NP_width = 6.8;
 
CPNP_distance = 9;

//plate holder
PH_length = 3;
PH_width = 1;
PH_distance = 15;
PH_offset = 2;  

fill_window_x = NP_width;
fill_window_y = 10;
fill_window_z = 12;

// contact plate
CP_width = 30.5;
CP_depth= 20.5;
CP_height = 2;

// printhead top
PT_outside_x = 34.3; // old =34.3
PT_outside_y = 5;
PT_outside_z = 36;

PT_inside_x = 20;
PT_inside_y = 1;
PT_inside_z = PT_outside_z - NP_offset_z;

//plate clamp hole
PC_snap_width_z = 2;
PC_snap_play = 1;
PC_snap_height_y = PT_outside_y - PT_inside_y + NP_height;
PC_snap_deep_x = 2;
PC_space =  NP_width + 3.8 ; //war vorher + 4
PC_snap_space = PC_space / PC_snap_play;
PC_offset_z = 11;

PC_hole_width_z = PC_snap_width_z + 1;
PC_hole_height_x = 3;
PC_hole_deep_y = PT_outside_y;

PC_hole_position_x = PC_space/2 + PC_hole_height_x;
PC_hole_position_y = CPNP_distance;
PC_hole_position_z = NP_offset_z + PC_offset_z + PC_hole_width_z;

// plate clamp 
PC_clamp_thick = 2;
PC_clamp_width = PC_snap_space + 2*PC_snap_deep_x;
PC_clamp_height= PC_snap_width_z;

PC_clamp_position_x = PC_clamp_width/2;
PC_clamp_position_y = CPNP_distance + PT_inside_y - PC_clamp_thick -NP_height;
PC_clamp_position_z = NP_offset_z + PC_offset_z + PC_clamp_height; 

// printhead bottom
PB_outside_x = 40;
PB_outside_y = 9;
PB_outside_z = 37;

PB_inside_x = CP_width;
PB_inside_y = PB_outside_y - CP_height;
PB_inside_z = 25;

// printspace
PS_x = 30;
PS_y = 10;
PS_z = 10;

// snap
snap_play = 0.98;
snap_distance = 17;
snap_offset_z = 10;

// stop and windstopper printhead top
SPT_x = 2;
SPT_y = 9;
SPT_z = 10.5; //war 10
SPT_offset_z = 25.5; //war 25

// stop contact plate
SCP_x = 5;
SCP_y = 2;
SCP_z = 2;

// Nozzleplate big
module NozzlePlate(){
     translate([0,9,-14.2]) import("nozzle platine/Nozzle Plate Hp big.stl");
}

// spring contacts
module contacts(){
     translate([0,1.5,-16]) import("contact platine/contact platine solo.stl");
}
//--------------------------------
module printhead_top(){
    difference(){
// outside
    translate([-PT_outside_x/2,CPNP_distance,-PT_outside_z])cube([PT_outside_x,PT_outside_y,PT_outside_z]);
	union(){
// inside
    translate([-PT_inside_x/2,CPNP_distance,-PT_outside_z])cube([PT_inside_x,PT_inside_y,PT_inside_z]);
// fillwindow
    translate([-fill_window_x/2,CPNP_distance,-PT_outside_z])cube([fill_window_x,fill_window_y,fill_window_z]);
// print clamp hole
    printhead_clamp_hole();
    mirror ([1,0,0]) printhead_clamp_hole();
        }
	}
    difference() {
    translate([0, 9, -31]) cube([20, 3, 10], center=true);
    translate([0, 8, -31]) cube([5.5, 5, 10], center=true);
    translate([-NP_width/2, 8.5, -36]) cube([NP_width, 2, 10]);
    }
    
// printhead clamp_hole
module printhead_clamp_hole(){
    translate ([-PC_hole_position_x, PC_hole_position_y, -PC_hole_position_z ]) cube([PC_hole_height_x, PC_hole_deep_y, PC_hole_width_z]);
}
//stopper
module stopper(){
    translate([-SPT_x - PT_inside_x/2,CPNP_distance - SPT_y,-SPT_offset_z - SPT_z]) cube([SPT_x, SPT_y, SPT_z]);
    }
    stopper();
    mirror ([1,0,0]) stopper();
//plate holder
    Plate();
}
// bottom
module printhead_bottom(){    
    difference() {  
    translate([-PB_outside_x/2,0,-PB_outside_z]) cube([PB_outside_x,PB_outside_y,PB_outside_z]);
    // plate space
    union(){
// Contact plate space
	translate([-PB_inside_x/2,CP_height, -PB_inside_z]) cube([PB_inside_x, PB_inside_y, PB_inside_z]);
// Print space
    translate([-PS_x/2,0,-PB_outside_z])cube ([PS_x,PS_y,PS_z]);
    }
//holes for mounting screws (to X_moving)
    translate([17.75, 4.5, -7]) cylinder(h=10, r=1); 
    translate([-17.75, 4.5, -7]) cylinder(h=10, r=1); 
    }
    snap();
    mirror([1,0,0])snap();
    translate([0,0,-snap_distance])snap();
    mirror([1,0,0]) translate([0,0,-snap_distance])snap();

    // contactplate stop
    translate([-CP_width/2,CP_height, -PB_inside_z + CP_depth-0.4]) cube([SCP_x,SCP_y,SCP_z]);
    mirror([1,0,0]) translate([-CP_width/2,CP_height, -PB_inside_z + CP_depth-0.4]) cube([SCP_x,SCP_y,SCP_z]);
//snap
module snap(){
    translate([PT_outside_x/2/snap_play, PB_outside_y, -snap_offset_z]) rotate([0,0,90])SnapY(l=PT_outside_y,h=2,a=35,b=5,f=0.5);
}
}
//Plateholder
module Plate(){
    plate_holder();
    translate ([0,0,-PH_distance - PH_length]) plate_holder();
    // holder
    module plate_holder(){
        translate([-NP_width/2 - PH_width,CPNP_distance,-NP_offset_z - PH_length - PH_offset ]) cube([PH_width,PH_width,PH_length]);
        mirror([1,0,0]) translate([-NP_width/2 - PH_width,CPNP_distance,-NP_offset_z - PH_length - PH_offset ]) cube([PH_width,PH_width,PH_length]);
    }
}

//Plate clamp
module plate_clamp(){
     translate([-PC_clamp_position_x,PC_clamp_position_y,-PC_clamp_position_z])cube([PC_clamp_width, PC_clamp_thick,PC_clamp_height]);
     // snap
     clamp();
     mirror ([1,0,0]) clamp();
     module clamp(){
	  translate([PC_snap_space/2,PC_clamp_position_y+PC_clamp_thick,-PC_clamp_position_z]) rotate([0,0,90]) SnapY(l=PC_snap_height_y,h=PC_snap_deep_x,a=35,b=PC_snap_width_z,f=0.5);
	  }
}