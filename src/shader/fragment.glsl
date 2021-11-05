varying vec2 vUv;
varying float vColorRandom;

uniform float u_time;

uniform vec3 u_color1;
uniform vec3 u_color2;
uniform vec3 u_color3;
float PI=3.141592653589793238;

void main(){

    float alpha =1. - smoothstep(0.2, 0.5, length(gl_PointCoord - vec2(0.5)));
    //alpha *= .5;
    vec3 finalColor = u_color1;
    if(vColorRandom > 0.33 && vColorRandom < 0.66){
        finalColor = u_color2;
    }
    if(vColorRandom > 0.66){
        finalColor = u_color3;
    }
    float gradient = smoothstep(0.38, 0.55, vUv.y);
    gl_FragColor = vec4(finalColor, alpha);
}