// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Draw Sprite Gray and Still When It Is Not Active
// Active
if (active == true)
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
	
// Inactive
else if (active == false)
	draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_gray, 1);