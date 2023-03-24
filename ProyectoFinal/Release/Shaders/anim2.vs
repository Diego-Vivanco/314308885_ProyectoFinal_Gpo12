#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aNormal;
layout (location = 2) in vec2 aTexCoords;

const float amplitude = 0.0125;
const float frequency = 1.0;
const float PI = 3.14159;
out vec2 TexCoords;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;
uniform float time1;

void main()
{
  float distance = length(aPos);
  float effect = sin(time1);
  gl_Position = projection*view*model*vec4(aPos.x+effect,aPos.y, aPos.z,1);
  TexCoords=vec2(aTexCoords.x,aTexCoords.y);

}