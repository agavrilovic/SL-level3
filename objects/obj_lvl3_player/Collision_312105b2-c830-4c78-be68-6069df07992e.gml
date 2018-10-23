//Find angle of collision
int_directionTowardsCollider = point_direction(x,y, other.x, other.y);
	
// Stick the player as close as possible to the other wreck
scr_lvl3_zalijepi(int_directionTowardsCollider,other);
	
// Either the camera moves on speeding up the road or stops and focuses on the crash
if (obj_lvl3_controller.bool_stopCameraWhenCollided == true) {
	obj_lvl3_controller.int_roadSpeed = 0;
	obj_lvl3_road.int_hsp = obj_lvl3_controller.int_roadSpeed;
}
	
// Player no longer follows camera, no longer moves, no longer changes angle
bool_movingWithCamera = false;
int_speed = 0;
int_angleSpeed = 0;
int_hsp = obj_lvl3_controller.int_roadSpeed;
	
// Car no longer moves (set speed to speed of the road), also set it to crashed
with(other) {
	int_hsp = obj_lvl3_controller.int_roadSpeed; 
	bool_crashed = true;
}

// Other objects (which are not crashed yet) should move along the same/new road speed
if (obj_lvl3_controller.bool_stopCameraWhenCollided == true) {
	with (obj_objectOnRoad) {
		if (bool_crashed == false) {
			int_hsp = obj_lvl3_controller.int_roadSpeed + int_regularSpeed;
		}
	}
}
	
// Restart game after animation is done
if (alarm[0] == -1) {
	alarm[0] = room_speed*4;
}