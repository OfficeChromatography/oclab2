// PRUSA iteration3
// Bearing holders
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org
use <polyholes.scad>

bearing_diameter = 14.95;

module horizontal_bearing_base(bearings=1){
 translate(v=[0,0,6]) cube(size = [24,8+bearings*25,12], center = true);	
}
module horizontal_bearing_holes(bearings=1){
 cutter_lenght = 10+bearings*25;
 one_holder_lenght = 8+25;
 holder_lenght = 8+bearings*25;
 
 // Main bearing cut
 difference(){
  translate(v=[0,0,12]) rotate(a=[90,0,0]) translate(v=[0,0,-cutter_lenght/2]) cylinder(h = cutter_lenght, r=(bearing_diameter/2)+0.2, $fn=50);
  // Bearing retainers
  translate(v=[0,1-holder_lenght/2,3]) cube(size = [24,6,8], center = true);
  translate(v=[0,-1+holder_lenght/2,3]) cube(size = [24,6,8], center = true);
 }
 
 // Ziptie cutouts
 ziptie_cut_ofset = 0;
 for ( i = [0 : bearings-1] ){
  // For easier positioning I move them by half of one 
  // bearing holder then add each bearign lenght and then center again
  translate(v=[0,-holder_lenght/2,0]) translate(v=[0,one_holder_lenght/2+i*25,0]) difference(){
   union(){
    translate(v=[0,2-8.5,12]) rotate(a=[90,0,0]) translate(v=[0,0,0]) cylinder(h = 4, r=11.5, $fn=50);
    translate(v=[0,2+8.5,12]) rotate(a=[90,0,0]) translate(v=[0,0,0]) cylinder(h = 4, r=11.5, $fn=50);
   }
   translate(v=[0,12,12]) rotate(a=[90,0,0]) translate(v=[0,0,0]) cylinder(h = 24, r=9, $fn=50);
  }
 }
 
}

module horizontal_bearing(NoB_top, NoB_bot, space=45){ 
rotate([0,0,90]){
difference()
   {
  // top bearings
  translate([space/2,0,0]) horizontal_bearing_base(NoB_top);
  translate([space/2,0,0]) horizontal_bearing_holes(NoB_top);
   }
   difference(){
  // bottom bearings
  translate([-space/2,0,0]) horizontal_bearing_base(NoB_bot);
  translate([-space/2,0,0]) horizontal_bearing_holes(NoB_bot);
 }
}
   echo("<b>top_bearing(x1,x2,y1,y2,z1,z2): </b>",hoB_calc(2,1)[0]);
   echo("<b>bot_bearing(x1,x2,y1,y2,z1,z2): </b>",hoB_calc(2,1)[1]);
}

function hoB_calc(NoB_top,NoB_bot,space=45)= [[-(8+NoB_top*25)/2,(8+NoB_top*25)/2,space/2-12,space/2+12,0,12],[-(8+NoB_bot*25)/2,(8+NoB_bot*25)/2,-space/2-12,-space/2+12,0,12]];
{

}
horizontal_bearing(2,1);
