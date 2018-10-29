// Inherit the parent event
event_inherited();

int_regularSpeed = 40;
phy_speed_x = obj_lvl3_controller.int_roadSpeed + int_regularSpeed;

int_activeSpeed = obj_lvl3_controller.int_basespeed;

bool_shooterDead = false;