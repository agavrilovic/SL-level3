x = obj_lvl3_enemy.phy_position_x;
y = obj_lvl3_enemy.phy_position_y;

image_angle = point_direction(x,y, obj_lvl3_player.phy_com_x, obj_lvl3_player.phy_com_y);

firingdelay -= 1;
if ((firingdelay < 5) && (obj_lvl3_player.int_health!=0)) {
	
	with (instance_create_layer(x,y, "Bullets", obj_lvl3_enemybullet)){
		
		phy_bullet = true;  //iskreno bilo bi moguce i bez fizikalnih metaka
		b_dir = obj_lvl3_shooter.image_angle
		b_x = lengthdir_x(int_bulletImpulse, b_dir);
		b_y = lengthdir_y(int_bulletImpulse, b_dir);
		physics_apply_local_impulse(0, 0, b_x, b_y);
		phy_rotation=-b_dir;
	}
}

if (firingdelay<0) firingdelay = initfiringdelay;

//Die
if (int_health==0) {
	obj_lvl3_enemy.bool_shooterDead=true;
	instance_destroy();
}