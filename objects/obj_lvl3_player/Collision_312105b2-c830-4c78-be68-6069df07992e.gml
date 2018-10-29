
//Find angle of collision
bool_damageUp = false;
bool_damageDown = false;
bool_damageBack = false;
bool_damageFront = false;
int_directionTowardsCollider = point_direction(x,y, other.x, other.y);
if ((int_directionTowardsCollider > 30 ) && (int_directionTowardsCollider < 150 )) other.bool_below = true; bool_damageUp = true;
if ((int_directionTowardsCollider > 210 ) && (int_directionTowardsCollider < 330 )) other.bool_above = true; bool_damageDown = true;
if ((int_directionTowardsCollider > 150 ) && (int_directionTowardsCollider < 210 )) other.bool_front = true; bool_damageBack = true;
if ((int_directionTowardsCollider > 330 ) || (int_directionTowardsCollider < 30 )) other.bool_back = true; bool_damageFront = true;

//Decrease directional health
if (bool_damageUp && !other.bool_crashed){
	int_directionalHealthUp -=1;	
}
show_debug_message(string(int_directionalHealthUp))
if (bool_damageDown && !other.bool_crashed){
	int_directionalHealthDown -=1;	
}
if (bool_damageFront && !other.bool_crashed){
	int_directionalHealthFront -=1;	
}
if (bool_damageBack && !other.bool_crashed){
	int_directionalHealthBack -=1;	
}

	
// Car hits the brakes, also set it to crashed
with(other) {
	if (bool_crashed == false) {
		bool_crashed = true;
	}
}


// Other objects (which are not crashed yet) should move along the same/new road speed
// This applies to objects which are NOT using physics
if (obj_lvl3_controller.bool_stopCameraWhenCollided == true) {
	with (obj_objectOnRoad) {
		if (bool_crashed == false) {
			int_hsp = obj_lvl3_controller.int_roadSpeed + int_regularSpeed;
		}
	}
}

