if (place_meeting(x,y, obj_lvl3_shooter)){
	
	obj_lvl3_shooter.int_health-=1;   // tu bi trebalo other ali ne radi

	instance_change(obj_lvl3_bulletblow,true);
	image_speed = 1;
	speed = 0;
	hspeed = obj_lvl3_enemy.phy_speed_x;

}