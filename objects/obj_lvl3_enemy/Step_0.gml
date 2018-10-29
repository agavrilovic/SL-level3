
// Inherit the parent event
event_inherited();

if ((int_healthBelow<=0) || (int_healthAbove<=0)  || (int_healthFront<=0) || (int_healthBack<=0)) bool_crashed = true;

if (bool_crashed || bool_shooterDead) {
    phy_speed_x = lerp(phy_speed_x, obj_lvl3_controller.int_roadSpeed, 0.03) //slam the brakes
    phy_speed_y = lerp(phy_speed_y, 0, 0.3);
}