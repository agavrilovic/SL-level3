other.int_health-=1;

instance_change(obj_lvl3_bulletblow,true);
image_speed = 1;
speed = 0;
hspeed = other.bool_movingWithCamera*obj_lvl3_controller.int_basespeed + other.int_hsp;