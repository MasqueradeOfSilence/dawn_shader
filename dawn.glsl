void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
    vec2 xy = fragCoord.xy;
    xy.x = xy.x / iResolution.x;
    xy.y = xy.y / iResolution.y;
    vec4 pink = vec4(1.0, 0.4, 0.7, 1.0);
    vec4 purple = vec4(0.5, 0.1, 1.0, 1.0);
    vec4 darkblue = vec4(0.1, 0.0, 0.7, 1.0);
    vec4 black = vec4(0.0, 0.0, 0.0, 1.0);
    fragColor = mix(mix(pink, purple, xy.y), mix(darkblue, black, xy.y), xy.x);
}
