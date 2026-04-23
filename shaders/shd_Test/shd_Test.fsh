// Fragment Shader

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float Time;
uniform vec2 Texel;

//Modify the following three consts to change the wave effect to your liking

const float xSpeed = 0.004;
const float xFreq = 5.0;
const float xSize = 16.0;
const float screenHeight = 224.0;

void main()
{
    float xWave = sin(Time * xSpeed + v_vTexcoord.y * xFreq) * (xSize * Texel.x);
	
	vec4 temp1 = v_vColour * texture2D(gm_BaseTexture,v_vTexcoord + vec2(xWave,0.0));
	vec4 temp2 = v_vColour * texture2D(gm_BaseTexture,v_vTexcoord + vec2(-xWave,0.0));
	
    gl_FragColor = mix(temp1, temp2, mod(floor(v_vTexcoord.y * screenHeight),2.0));
}