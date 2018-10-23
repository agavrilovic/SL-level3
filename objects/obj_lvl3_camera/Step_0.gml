if (obj_lvl3_controller.bool_followPlayerWithCamera) {
	x = obj_lvl3_player.x;
}
else {
	x += obj_lvl3_controller.int_basespeed;
}

if (y - obj_lvl3_player.y > int_vsp) {
	y -= int_vsp;
}
if (y - obj_lvl3_player.y < int_vsp) {
	y += int_vsp;
}