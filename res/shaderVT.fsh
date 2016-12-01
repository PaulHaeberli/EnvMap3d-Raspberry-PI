uniform sampler2D textureMap;
varying mediump vec2 fragmentTextureCoordinates;
varying mediump vec4 fragmentColors;

void main()
{
    gl_FragColor = fragmentColors * texture2D(textureMap, fragmentTextureCoordinates);
}
