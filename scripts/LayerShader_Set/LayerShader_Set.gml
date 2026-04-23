function LayerShader_Set()
{
	if ((event_type == ev_draw) and (event_number == 0))
	{
		if (!surface_exists(global.backgroundSurface1)) global.backgroundSurface1 = surface_create(256,224);
		surface_set_target(global.backgroundSurface1);
		
		camera_apply(view_camera[0]);
		
		draw_clear_alpha(c_white,0);
	}
}

