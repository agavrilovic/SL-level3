/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


//Activate enemy when tripping the line
if (place_meeting(x,y,obj_lvl3_player)) {
    if (bool_tripped = false) {
		bool_tripped = true;
		obj_lvl3_enemy.phy_speed_x = obj_lvl3_enemy.int_activeSpeed;
		instance_create_layer(obj_lvl3_enemy.x,obj_lvl3_enemy.y, "Instances", obj_lvl3_shooter);
    }
}
else {
	bool_tripped = false;
}