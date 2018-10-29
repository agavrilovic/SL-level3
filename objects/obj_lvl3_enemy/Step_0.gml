
// Inherit the parent event
event_inherited();

if (bool_shooterDead){
	phy_speed_x = obj_lvl3_controller.int_roadSpeed; 
	phy_active = false;
}