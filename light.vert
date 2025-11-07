#version 330 core

layout (location = 0) in vec3 aPos;

uniform mat4 model;
// Imports the Camera Matrix from the main function
uniform mat4 camMatrix;


void main()
{
	// Outputs the position/coordinates of all of the vertices
	gl_Position = camMatrix * model * vec4(aPos, 1.0f);
}
