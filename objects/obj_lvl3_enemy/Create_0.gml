int_regularSpeed = 40;
phy_speed_x = obj_lvl3_controller.int_roadSpeed + int_regularSpeed;

int_activeSpeed = obj_lvl3_controller.int_basespeed;

bool_shooterDead = false;

int_healthBelow = 2;
int_healthAbove = 2;
int_healthFront = 2;
int_healthBack = 2;

bool_crashed = false;

bool_hasCollided = false; //prevents multiple collisions