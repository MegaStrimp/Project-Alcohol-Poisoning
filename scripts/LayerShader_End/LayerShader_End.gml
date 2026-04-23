function LayerShader_End()
{
	if ((event_type == ev_draw) and (event_number == 0))
	{
		surface_reset_target();
		
		shader_set(shd_Test);
		
		shader_set_uniform_f(shader_get_uniform(shd_Test, "Time"), current_time);
		
		var tex = surface_get_texture(global.backgroundSurface1);
		shader_set_uniform_f(shader_get_uniform(shd_Test, "Texel"), texture_get_texel_width(tex), texture_get_texel_height(tex));
		
		draw_surface(global.backgroundSurface1,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]));
		
		shader_reset();
	}
}