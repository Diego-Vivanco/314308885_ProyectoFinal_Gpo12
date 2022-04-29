#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aNormal;
layout (location = 2) in vec2 aTexCoords;

out vec2 TexCoords;


uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;
uniform float time1;

void main()
{
	float effect = sin(time1);
	gl_Position = projection*view*model*vec4(aPos.x+effect,aPos.y, aPos.z,1);
	TexCoords=vec2(aTexCoords.x,aTexCoords.y);
}