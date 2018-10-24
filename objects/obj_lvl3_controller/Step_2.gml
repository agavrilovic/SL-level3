//Quit & restart game
if keyboard_check(vk_escape) game_end();
if keyboard_check(ord("R")) game_restart();
int_previousJoystickH = gamepad_axis_value(int_joystick, gp_axislh);
int_previousJoystickV = gamepad_axis_value(int_joystick, gp_axislv);