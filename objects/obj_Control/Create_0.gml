///@description Create

#region Screen Variables
global.shaders = true;

global.gameWidth = 256;
global.gameHeight = 224;
global.windowScale = 4;
#endregion

#region Misc Variables
global.pause = false;
global.roomPrevious = rm_Setup;

global.speedMultGlobal = 1;
global.speedMultPlayer = 1;
global.speedMultEnemy = 1;
global.speedMultEnvironment = 1;
#endregion

#region Adapt Display Size To PC Screen
//global.windowScale = scr_Screen_ScaleToScreenSize(); //Set this depending on your preference
#endregion

#region Screen Setup
scr_Screen_Setup(global.gameWidth,global.gameHeight,global.windowScale);
#endregion

#region Set Macros & Enums
#macro view view_camera[0]
#endregion

#region Set Window Caption
window_set_caption("Yerba Mate Engine - Version 2.0.0");
#endregion

#region Create Necessary Objects
global.camera = instance_create_depth(0,0,-999,obj_Camera);
#endregion

#region Retro Palette Swapper Setup
if (global.shaders) pal_swap_init_system(shd_pal_swapper,shd_pal_html_sprite,shd_pal_html_surface);
#endregion

#region Scribble Setup
#endregion

#region Vinyl Setup
#endregion

#region Background Variables
global.backgroundSurface0 = -1;
global.backgroundSurface1 = -1;

global.backgroundFrontID = layer_get_id("Background");
global.backgroundBackID = layer_get_id("Background");
#endregion