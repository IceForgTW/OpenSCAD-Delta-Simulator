// Data Set for ATOM 3D Delta printer - Clarence  July, 6, 2016
Delta_name = "ATOM3dp";
atom = 1;

housing_base=0; 
housing_opening = 300; // defines height of the opening in the housing
beam_int_radius = 175; // radius inside the columns - used as reference radius
hbase= 50; // height of the base structure (Mini Kossel = 3x extrusion)
htop = 20;  // height of top structure
htotal= 710; // total height, including base and top structure

bed_level = 8; 
extrusion = 20; // 

car_hor_offset= 30; 
hcar = 46; 
car_vert_dist = 20;
top_clearance= 20; // clearance between top of the carriage and top structure

eff_hor_offset= 39.1276; 
eff_vert_dist = 13; 
arm_space= 46; // space between the arms

delta_angle = 60; 
arm_length = 227.8; // supersedes delta_angle - some arms are set at 215mm
mini_angle = 22.3; // 25.4could be lower, set to have defined working diameter at 200mm
// note that reachable diameter could be larger with 20°, however Traxxas end may not be capable of required angles.

hotend_vert_dist = 17;
dia_ball= 12.6;
dia_arm = 10;
railthk =5.6; 
railwidth =9; 
rail_base= 110; 
frame_corner_radius=50; 
corner_offset=5;
frame_face_radius= 0;

belt_dist=25;
spool_diam = 175;  
spool_thk = 60;   

$vpd=camPos?1750:$vpd;   // camera distance: work only if set outside a module
$vpr=camPos?[80,0,42]:$vpr;   // camera rotation
$vpt=camPos?[152,-90,400]:$vpt; //camera translation  */

$bEffector = true;
module buildEffector(){
		color ("gold") {  
            translate([0,-6,6])import("cnchub.stl");
        }
}
$bCar = false;
module buildCar() {
	color ("gold") { 
		import("03_cart_v1.stl");
	}
}