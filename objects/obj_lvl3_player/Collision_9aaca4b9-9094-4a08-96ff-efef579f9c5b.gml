/// @description Insert description here
// You can write your code in this editor

// Create bullet holes in appropriate direction
int_directionTowardsCollider = point_direction(x+sprite_width/2,y, other.x, other.y);
if ((int_directionTowardsCollider > 30 ) && (int_directionTowardsCollider < 150 )) scr_addBullethole(90);
if ((int_directionTowardsCollider > 210 ) && (int_directionTowardsCollider < 330 )) scr_addBullethole(270);
if ((int_directionTowardsCollider > 150 ) && (int_directionTowardsCollider < 210 )) scr_addBullethole(180);
if ((int_directionTowardsCollider > 330 ) || (int_directionTowardsCollider < 30 )) scr_addBullethole(0);
