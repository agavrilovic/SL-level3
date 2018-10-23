/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (bool_crashed) {
	//if (int_hsp > obj_lvl3_controller.int_roadSpeed) int_hsp -= 1;
	if (int_hsp > obj_lvl3_controller.int_roadSpeed) int_hsp -= 1;
	//hspeed = int_hsp;
	//vspeed = -5;
	speed = int_hsp;
	if (direction > -60){
		direction -=1;
		image_angle += 2;
	}
	
}