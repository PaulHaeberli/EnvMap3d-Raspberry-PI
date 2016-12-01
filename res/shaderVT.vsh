attribute vec4 position;
attribute vec2 textureCoordinates;
uniform mat4 matrix;
uniform vec4 color;
varying vec2 fragmentTextureCoordinates; 
varying vec4 fragmentColors;

void main()
{
    gl_Position = matrix * position;
    fragmentTextureCoordinates = textureCoordinates;
    fragmentColors = color;
}
