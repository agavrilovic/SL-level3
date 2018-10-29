
// Steering

bool_down = false;
bool_up = false;

if (scr_lvl3_checkDeviceDirection(270,0)) {
	bool_down = true;
	bool_up = false;
	if (phy_rotation<int_upperAngle) phy_rotation += int_angleSpeed;
	physics_apply_local_force(x,y, 0, int_force);
	
}
if (scr_lvl3_checkDeviceDirection(90,0)) {
	bool_up = true;
	bool_down = false
	if (phy_rotation>-int_upperAngle) phy_rotation -= int_angleSpeed;
	physics_apply_local_force(x,y, 0, -int_force);
	
}

// Revert to standard angle if not pressing any key
if ((!bool_up) && (!bool_down)) {
	phy_speed_y = lerp(phy_speed_y, 0, 0.1);
	if (phy_rotation>0) phy_rotation-=int_angleSpeed;
	if (phy_rotation<0) phy_rotation+=int_angleSpeed;
}




// Acceleration (apply force)

if (scr_lvl3_checkDeviceDirection(180,0)) {
	physics_apply_local_force(0,0, -1.5*int_force, 0);
}
if (scr_lvl3_checkDeviceDirection(0,0)) {
	physics_apply_local_force(0,0, int_force, 0);
}

/* We don't need this because the car only moves to the right. But if we wanted to change that...
forward_x = lengthdir_x(int_force, -phy_rotation)
forward_y = lengthdir_y(int_force, -phy_rotation)

if (scr_lvl3_checkDeviceDirection(180,0)) {
	physics_apply_force(x,y, -forward_x, forward_y);
}
if (scr_lvl3_checkDeviceDirection(0,0)) {
	physics_apply_force(x,y, forward_x, forward_y);
}

*/


//Shooting
firingdelay -=1;
if ((mouse_check_button(mb_left)) && (firingdelay<0) && (int_health>0)){
	firingdelay = initfiringdelay;
	with (instance_create_layer(x,y, "Bullets", obj_lvl3_playerbullet)){
		phy_bullet = true;
		b_dir = point_direction(x,y, mouse_x, mouse_y);
		b_x = lengthdir_x(int_bulletImpulse, b_dir);
		b_y = lengthdir_y(int_bulletImpulse, b_dir);
		physics_apply_local_impulse(0, 0, b_x, b_y);
		phy_rotation=-b_dir;
	}
	
}

//Die from getting shot (Player no longer follows camera, no longer moves, no longer changes angle)
if (int_health<=0){
	
	int_force = 0;
	int_angleSpeed = 0;
	phy_speed_x = lerp(phy_speed_x, obj_lvl3_controller.int_roadSpeed, 0.5);
	
	// Restart game after animation is done
	if (alarm[0] == -1) {
		alarm[0] = room_speed*4;
	}
}


//Die from crashing (Camera stays on player)
if ((int_directionalHealthFront<=0) || (int_directionalHealthBack<=0) || (int_directionalHealthUp<=0) || (int_directionalHealthDown<=0)){
	if (obj_lvl3_controller.bool_stopCameraWhenCollided == true) {
		obj_lvl3_controller.int_roadSpeed = 0;
		obj_lvl3_road.int_hsp = obj_lvl3_controller.int_roadSpeed;
	}
	
	int_force = 0;
	int_angleSpeed = 0;
	phy_speed_x = lerp(phy_speed_x, obj_lvl3_controller.int_roadSpeed, 0.04);
	phy_speed_y = lerp(phy_speed_y, 0, 0.3);
	
	// Restart game after animation is done
	if (alarm[0] == -1) {
		alarm[0] = room_speed*4;
	}
}

