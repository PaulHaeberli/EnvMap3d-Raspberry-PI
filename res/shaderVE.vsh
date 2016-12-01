attribute vec4 position;
attribute vec3 normal;
uniform mat4 normalMatrix; 
uniform mat4 projectionMatrix;
uniform mat4 modelViewMatrix;
uniform vec4 color;
varying vec2 fragmentTextureCoordinates;
varying vec4 fragmentColors;

void main() {
    vec4 p = position;
    gl_Position = projectionMatrix * modelViewMatrix * p;

    vec3 e = normalize(vec3(modelViewMatrix * p));
    vec3 n = normalize(normalMatrix * vec4(normal.x, normal.y, normal.z, 1.0)).xyz;
    vec3 r = reflect(e, n);
    float m = 2.0 * sqrt(pow(r.x, 2.0) + pow(r.y, 2.0) + pow(r.z+1.0, 2.0));
    fragmentTextureCoordinates = r.xy/m + 0.5;

    vec4 wp = modelViewMatrix * p;
    float bright = -((wp.z+1.0)/2.0);
    bright = 3.0*(1.0-bright);
    bright = 0.75+bright;
    if(bright>1.0) bright = 1.0;
    if(bright<0.0) bright = 0.0;
    fragmentColors = bright*color;
}
