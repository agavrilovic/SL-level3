/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_color(c_white);
draw_text_transformed(x,y-150,"U: "+string(int_directionalHealthUp) + "D: "+string(int_directionalHealthDown) + "L: "+string(int_directionalHealthBack) + "R: "+string(int_directionalHealthFront),2,2,0);