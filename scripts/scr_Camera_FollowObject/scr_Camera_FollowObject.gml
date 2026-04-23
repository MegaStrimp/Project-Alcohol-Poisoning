///@description Camera - Follow Object
///@param {real} followingObject

function scr_Camera_FollowObject(argument0)
{
	var followingObject = argument0;
	
	with (global.camera)
	{
		followingObject = followingObject;
		cameraX = followingObject.x - (global.gameWidth / 2);
		cameraY = followingObject.y - (global.gameHeight / 2);
	}
}