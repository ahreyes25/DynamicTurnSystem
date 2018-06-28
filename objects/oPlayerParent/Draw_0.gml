// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Draw Sprite Gray and Still When It Is Not Active

// Draw the player however we want them to look like when it is their turn
if (active) {
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
}
	
// Draw the player however we want them to look like when it is NOT their turn
else if (!active) {
	draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_gray, 1);
}