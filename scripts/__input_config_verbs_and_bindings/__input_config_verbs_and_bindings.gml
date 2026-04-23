//Input defines the default profiles as a macro called 
//This macro is parsed when Input boots up and provides the baseline bindings for your game
//
//  Please edit this macro to meet the needs of your game!
//
//The root struct called INPUT_DEFAULT_PROFILES contains the names of each default profile
//Default profiles then contain the names of verbs. Each verb should be given a binding that is
//appropriate for the profile. You can create bindings by calling one of the input_binding_*()
//functions, such as input_binding_key() for keyboard keys and input_binding_mouse() for
//mouse buttons

INPUT_DEFAULT_PROFILES = {
    
    keyboard_and_mouse:
    {
        up:		input_binding_key(vk_up),
        down:	input_binding_key(vk_down),
        left:	input_binding_key(vk_left),
        right:	input_binding_key(vk_right),
        
        A:		input_binding_key("Z"),
        B:		input_binding_key("X"),
        X:		input_binding_key("A"),
        Y:		input_binding_key("S"),
		
        L:		input_binding_key("Q"),
        R:		input_binding_key("W"),
		
        start:	input_binding_key(vk_space),
        select: input_binding_key(vk_backspace),
    },
    
    gamepad:
    {
        up:		[input_binding_gamepad_axis(gp_axislv, true),  input_binding_gamepad_button(gp_padu)],
        down:	[input_binding_gamepad_axis(gp_axislv, false), input_binding_gamepad_button(gp_padd)],
        left:	[input_binding_gamepad_axis(gp_axislh, true),  input_binding_gamepad_button(gp_padl)],
        right:	[input_binding_gamepad_axis(gp_axislh, false), input_binding_gamepad_button(gp_padr)],
        
        A:		input_binding_gamepad_button(gp_face1),
        B:		input_binding_gamepad_button(gp_face2),
        X:		input_binding_gamepad_button(gp_face3),
        Y:		input_binding_gamepad_button(gp_face4),
		
        L:		input_binding_gamepad_button(gp_shoulderl),
        R:		input_binding_gamepad_button(gp_shoulderr),
		
        start:	input_binding_gamepad_button(gp_start),
        select: input_binding_gamepad_button(gp_select),
    },
    
    touch:
    {
		up:		input_binding_virtual_button(),
        down:	input_binding_virtual_button(),
        left:	input_binding_virtual_button(),
        right:	input_binding_virtual_button(),
        
        A:		input_binding_virtual_button(),
        B:		input_binding_virtual_button(),
        X:		input_binding_virtual_button(),
        Y:		input_binding_virtual_button(),
		
        L:		input_binding_virtual_button(),
        R:		input_binding_virtual_button(),
		
        start:	input_binding_virtual_button(),
        select: input_binding_virtual_button(),
    }
    
};

//Defines which verbs should collide with which other verbs when using input_binding_get_collisions()
//and input_binding_set_safe(). A verb that is not present in a group will collide with all other verbs
INPUT_VERB_GROUPS = {
    //Fill me up!
};