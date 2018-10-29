/// @description Insert description here
// You can write your code in this editor

event_inherited();
int_regularSpeed = 0; // No speed of its own, just a bump in the road
int_hsp = obj_lvl3_controller.int_roadSpeed + int_regularSpeed;

bool_tripped = true;
obj_lvl3_enemy.phy_speed_x = obj_lvl3_enemy.int_activeSpeed;
instance_create_layer(obj_lvl3_enemy.x,obj_lvl3_enemy.y, "Instances", obj_lvl3_shooter);