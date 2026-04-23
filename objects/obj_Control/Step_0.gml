///@description Main

#region Background Control
switch (room)
{
	case rm_Zero:
	layer_script_begin(global.backgroundFrontID,LayerShader_Set);
	layer_script_end(global.backgroundFrontID,LayerShader_End);
	break;
	
	case rm_Technician:
	layer_y(global.backgroundBackID,sine_wave(current_time / 1000,12,72,0));
	break;
}
#endregion