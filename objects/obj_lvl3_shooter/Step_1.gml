x = obj_lvl3_enemy.x;
y = obj_lvl3_enemy.y;

image_angle = point_direction(x,y, obj_lvl3_player.x, obj_lvl3_player.y);

firingdelay -= 1;
if ((firingdelay < 5) && (obj_lvl3_player.int_health!=0)) {
	
	with (instance_create_layer(x,y, "Bullets", obj_lvl3_enemybullet)){
		speed = int_bulletSpeed;
		direction = other.image_angle;
		image_angle = direction;
	}
}

if (firingdelay<0) firingdelay = initfiringdelay;

//Die
if (int_health==0) {
	obj_lvl3_enemy.bool_shooterDead=true;
	instance_destroy();
}