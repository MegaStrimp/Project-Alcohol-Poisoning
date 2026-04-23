///@description Draw GUI

#region Go To Target Room
if (alpha == 1)
{
	global.roomPrevious = room;
    room_goto(targetRoom);
    fade = -1;
}
#endregion

#region Set Alpha
if (((pausable) and (!global.pause)) or (!pausable)) alpha = clamp(alpha + (fade * alphaSpd),0,1);

draw_set_color(color);
draw_rectangle(0,0,global.gameWidth,global.gameHeight,false);
draw_set_color(c_white);
#endregion

#region Destroy
if ((alpha == 0) and (fade == -1))
{
    instance_destroy();
}
#endregion