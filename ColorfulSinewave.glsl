//
//  ColorfulSinewave.glsl - Lorusso Michele, 2022
//  Created in ShaderToy
//

#define PI 3.1415926538

void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
    // Normalized pixel coordinates (from 0 to 1)
    vec2 uv = fragCoord/iResolution.xy;

    vec3 col = vec3(sin(iTime * 2.0 + uv.x * 5.0) * 0.5 + 0.5, cos(iTime * 3.0 + uv.y * uv.x * 6.0) * 0.3 + 0.8, sin(iTime) * 0.5 + 0.5)*
    float(uv.y * 1.4 - 0.2 < (sin(uv.x * 4.0 * PI + sin(iTime * PI / 4.0) * 16.0) * 0.5 + 0.5));

    // Output to screen
    fragColor = vec4(col,1.0);
}
