/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();



if (bool_crashed) {
	
	if (int_hsp > obj_lvl3_controller.int_roadSpeed) int_hsp -= 1;
	//hspeed = int_hsp;
	//vspeed = -5;
	speed = int_hsp;
	
	//Rear-ended
	if (bool_back){
		bool_below = choose(true,false);
		bool_above = !bool_below;
		bool_back = false;
	}
	
	//Collision from below
	if (bool_below){
		if (direction > -60){
			direction -=1;
			image_angle += 2;
		}
	}
	
	//Collision from above
	if (bool_above){
		if (direction > -60){
			direction +=1;
			image_angle -= 2;
		}
	}
	
}

//Crash into side walls
if ((y<210) || (y>1000)) {
	speed = 0;
	hspeed = obj_lvl3_controller.int_roadSpeed;
}