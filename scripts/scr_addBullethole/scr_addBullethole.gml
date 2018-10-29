var int_direction = argument0;

switch (argument0) {
	case 0:
		var int_leftMost = 61*3, int_sizeRight = 27*3, int_topMost = -12*3, int_sizeDown = 25*3;
		break;
	case 90:
		return 0;
		var int_leftMost = 12, int_sizeRight = 21, int_topMost = -36, int_sizeDown = 72;
		break;
	case 180:
		var int_leftMost = 4*3, int_sizeRight = 7*3, int_topMost = -12*3, int_sizeDown = 24*3;
		break;
	case 270:
		return 0;
		var int_leftMost = 12, int_sizeRight = 21, int_topMost = -36, int_sizeDown = 72;
		break;
	default:
		var int_leftMost = 12, int_sizeRight = 21, int_topMost = -36, int_sizeDown = 72;
		break;
}
instance_create_layer(obj_lvl3_player.x+int_leftMost+random(int_sizeRight), obj_lvl3_player.y+int_topMost+random(int_sizeDown),"Instances",obj_lvl3_bullethole);
