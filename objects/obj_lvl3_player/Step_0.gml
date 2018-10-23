x += bool_movingWithCamera*obj_lvl3_controller.int_basespeed + int_hsp;

if (keyboard_check(vk_left)) {
	x -= int_speed;
}
if (keyboard_check(vk_right)) {
	x += int_speed;
}

if (keyboard_check_pressed(vk_down)) {
	bool_down = true;
	bool_up = false;
	image_angle -= int_angleSpeed;
}
if (keyboard_check_pressed(vk_up)) {
	bool_up = true;
	bool_down = false
	image_angle += int_angleSpeed;
}
if (keyboard_check_released(vk_down)) {
	bool_down = false;
	if (keyboard_check(vk_up)) {
		bool_up = true;
		image_angle += int_angleSpeed;
	}
}
if (keyboard_check_released(vk_up)) {
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
