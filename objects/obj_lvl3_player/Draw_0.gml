/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_color(c_white);

draw_text_transformed(x,y-150,"Top: "+string(int_directionalHealthUp) + " Down: "+string(int_directionalHealthDown)+ " Right: "+ string(int_directionalHealthFront) + " Left: " + string(int_directionalHealthBack),2,2,0);