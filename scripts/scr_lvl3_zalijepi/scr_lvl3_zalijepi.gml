
var int_oneDirection = degtorad(argument0);
var oParSolid = argument1;

while (!place_meeting(x, y, oParSolid)) {
	x += cos(int_oneDirection);
	y += sin(int_oneDirection);
}

// Ovaj komentar je s DELLovog laptopa
// I ovaj bok bok