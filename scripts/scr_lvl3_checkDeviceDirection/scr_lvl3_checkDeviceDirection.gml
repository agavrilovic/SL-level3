// Returns if the player wants to move in asked direction 

var int_direction = argument0; // 0-360 in degrees
var int_pressed = argument1; // 0 for check, -1 for released, 1 for pressed

if (int_pressed == 0) {
	if (int_direction == 0) {
		if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
			return true;
		}
		if (obj_lvl3_controller.int_joystick != -1) {
			if (gamepad_axis_value(obj_lvl3_controller.int_joystick, gp_axislh) < -0.5) {
				return true;
			}
		}
	}
	else if (int_direction == 180) {
		if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
			return true;
		}
		if (obj_lvl3_controller.int_joystick != -1) {
			if (gamepad_axis_value(obj_lvl3_controller.int_joystick, gp_axislh) > 0.5) {
				return true;
			}
		}
	}
	else if (int_direction == 90) {
		if (keyboard_check(vk_up) || keyboard_check(ord("W"))) {
			return true;
		}
		if (obj_lvl3_controller.int_joystick != -1) {
			if (gamepad_axis_value(obj_lvl3_controller.int_joystick, gp_axislv) == 1) {
				return true;
			}
		}
	}
	else if (int_direction == 270) {
		if (keyboard_check(vk_down) || keyboard_check(ord("S"))) {
			return true;
		}
		if (obj_lvl3_controller.int_joystick != -1) {
			if (gamepad_axis_value(obj_lvl3_controller.int_joystick, gp_axislv) == -1) {
				return true;
			}
		}
	}
}
else if (int_pressed == 1) {
	if (int_direction == 0) {
		if (keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))) {
			return true;
		}
		if (obj_lvl3_controller.int_joystick != -1) {
			if (gamepad_axis_value(obj_lvl3_controller.int_joystick, gp_axislh) < -0.5) && (obj_lvl3_controller.int_previousJoystickH == 0) {
				return true;
			}
		}
	}
	else if (int_direction == 180) {
		if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))) {
			return true;
		}
		if (obj_lvl3_controller.int_joystick != -1) {
			if (gamepad_axis_value(obj_lvl3_controller.int_joystick, gp_axislh) > 0.5) && (obj_lvl3_controller.int_previousJoystickH == 0) {
				return true;
			}
		}
	}
	else if (int_direction == 90) {
		if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))) {
			return true;
		}
		if (obj_lvl3_controller.int_joystick != -1) {
			if (gamepad_axis_value(obj_lvl3_controller.int_joystick, gp_axislv) == 1) && (obj_lvl3_controller.int_previousJoystickV == 0) {
				return true;
			}
		}
	}
	else if (int_direction == 270) {
		if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))) {
			return true;
		}
		if (obj_lvl3_controller.int_joystick != -1) {
			if (gamepad_axis_value(obj_lvl3_controller.int_joystick, gp_axislv) == -1) && (obj_lvl3_controller.int_previousJoystickV == 0) {
				return true;
			}
		}
	}
}
else if (int_pressed == -1) {
	if (int_direction == 0) {
		if (keyboard_check_released(vk_right) || keyboard_check_released(ord("D"))) {
			return true;
		}
		if (obj_lvl3_controller.int_joystick != -1) {
			if (gamepad_axis_value(obj_lvl3_controller.int_joystick, gp_axislh) == 0) && (obj_lvl3_controller.int_previousJoystickH != 0) {
				return true;
			}
		}
	}
	else if (int_direction == 180) {
		if (keyboard_check_released(vk_left) || keyboard_check_released(ord("A"))) {
			return true;
		}
		if (obj_lvl3_controller.int_joystick != -1) {
			if (gamepad_axis_value(obj_lvl3_controller.int_joystick, gp_axislh) == 0) && (obj_lvl3_controller.int_previousJoystickH != 0) {
				return true;
			}
		}
	}
	else if (int_direction == 90) {
		if (keyboard_check_released(vk_up) || keyboard_check_released(ord("W"))) {
			return true;
		}
		if (obj_lvl3_controller.int_joystick != -1) {
			if (gamepad_axis_value(obj_lvl3_controller.int_joystick, gp_axislv) == 0) && (obj_lvl3_controller.int_previousJoystickV != 0) {
				return true;
			}
		}
	}
	else if (int_direction == 270) {
		if (keyboard_check_released(vk_down) || keyboard_check_released(ord("S"))) {
			return true;
		}
		if (obj_lvl3_controller.int_joystick != -1) {
			if (gamepad_axis_value(obj_lvl3_controller.int_joystick, gp_axislv) == 0) && (obj_lvl3_controller.int_previousJoystickV != 0) {
				return true;
			}
		}
	}
}
return false;