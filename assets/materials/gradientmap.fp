#version 140

in mediump vec2 var_texcoord0;
out vec4 out_fragColor;

uniform mediump sampler2D texture_sampler;
uniform mediump sampler2D gradient;
uniform fs_uniforms
{
    mediump vec4 tint;
};

vec3 lumaY = vec3(0.2126, 0.7152, 0.0722);

void main()
{
    mediump vec4 tint_pm = vec4(tint.xyz * 1.0, 1.0);
    vec4 texture_color = texture(texture_sampler, var_texcoord0.xy) * tint_pm;
    mediump float lookup_luma = dot(texture_color.rgb,lumaY);
    vec4 new_color = texture(gradient, vec2(lookup_luma, tint.w))*texture_color.a;
    vec4 final_color = vec4(new_color.rgb, texture_color.a);
    
    out_fragColor = final_color;
}
