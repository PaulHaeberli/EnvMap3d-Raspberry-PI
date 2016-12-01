attribute vec4 position;
uniform mat4 matrix;
uniform vec4 color;
varying vec4 fragmentColors;

void main()
{
    gl_Position = matrix * position;
    fragmentColors = color;
}
