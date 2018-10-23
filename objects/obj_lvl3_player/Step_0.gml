x += bool_movingWithCamera*obj_lvl3_controller.int_basespeed + int_hsp;

if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
	x -= int_speed;
}
if (keyboard_check(vk_right)|| keyboard_check(ord("D"))) {
	x += int_speed;
}

if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))) {
	bool_down = true;
	bool_up = false;
	image_angle -= int_angleSpeed;
}
if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))) {
	bool_up = true;
	bool_down = false
	image_angle += int_angleSpeed;
}
if (keyboard_check_released(vk_down)|| keyboard_check_released(ord("S"))) {
	bool_down = false;
	if (keyboard_check(vk_up)) {
		bool_up = true;
		image_angle += int_angleSpeed;
	}
}
if (keyboard_check_released(vk_up)|| keyboard_check_released(ord("W"))) {
	bool_up = false;
	if (keyboard_check(vk_down)) {
		bool_down = true;
		image_angle -= int_angleSpeed;
	}
}

if (bool_down) {
	if (y<950) {
		y += int_speed;
		if ((image_angle<=int_upperAngle) && (image_angle>=(-int_upperAngle)) ) image_angle-=int_angleSpeed;
	}
	else {
		bool_down = false;
	}
}
if (bool_up) {
	 if (y>250) {
		y -= int_speed;
		if ((image_angle<=int_upperAngle) && (image_angle>=(-int_upperAngle)) ) image_angle+=int_angleSpeed;
	 }
	 else {
		bool_up = false;
	 }
}

// Revert to standard angle if not pressing any key
if ((!bool_up) && (!bool_down)) {
	if (image_angle>0) image_angle-=int_angleSpeed;
	if (image_angle<0) image_angle+=int_angleSpeed;
}


//Shooting
firingdelay -=1;
if ((mouse_check_button(mb_left)) && (firingdelay<0) && (int_health>0)){
	firingdelay = initfiringdelay;
	with (instance_create_layer(x,y, "Bullets", obj_lvl3_playerbullet)){
		speed = int_bulletSpeed;
		direction = point_direction(x,y, mouse_x, mouse_y);
		image_angle = direction;
	}
	
}

//Die from getting shot
if (int_health<=0){
	bool_movingWithCamera = false;
	int_speed = 0;
	int_angleSpeed = 0;
	int_hsp = obj_lvl3_controller.int_roadSpeed;
}


//Activate enemy when tripping the line
if (place_meeting(x,y,obj_lvl3_line)) {
    if (bool_tripped = false){
		bool_tripped = true;
		obj_lvl3_enemy.int_hsp = obj_lvl3_controller.int_roadSpeed + obj_lvl3_enemy.int_regularSpeed;
		instance_create_layer(obj_lvl3_enemy.x,obj_lvl3_enemy.y, "Instances", obj_lvl3_shooter);
         }
    }
    else bool_tripped = false;