///https://www.youtube.com/watch?v=JsVqc2dnftU

draw_self();

if (flash > 0)
{
	flash--;
	shader_set(shader_white);
	draw_self();
	shader_reset();
}