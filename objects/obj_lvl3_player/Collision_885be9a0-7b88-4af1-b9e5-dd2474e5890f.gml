if (!other.bool_hasCollided){
    with (other){
        bool_hasCollided = true;
        alarm[0] = 2;
    }

    //Find angle of collision
    bool_damageUp = false;
    bool_damageDown = false;
    bool_damageBack = false;
    bool_damageFront = false;
    int_directionTowardsCollider = point_direction(x,y, other.x, other.y);
    if ((int_directionTowardsCollider > 30 ) && (int_directionTowardsCollider < 150 )) other.int_healthBelow -=1; bool_damageUp = true;
    if ((int_directionTowardsCollider > 210 ) && (int_directionTowardsCollider < 330 )) other.int_healthAbove -=1; bool_damageDown = true;
    if ((int_directionTowardsCollider > 150 ) && (int_directionTowardsCollider < 210 )) other.int_healthFront -=1; bool_damageBack = true;
    if ((int_directionTowardsCollider > 330 ) || (int_directionTowardsCollider < 30 )) other.int_healthBack -=1; bool_damageFront = true;

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
}

// This applies to objects which are NOT using physics
if (obj_lvl3_controller.bool_stopCameraWhenCollided == true) {
	with (obj_objectOnRoad) {
		if (bool_crashed == false) {
			int_hsp = obj_lvl3_controller.int_roadSpeed + int_regularSpeed;
		}
	}
}