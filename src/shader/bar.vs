R"(
#version 150

in float x;
in float y;

uniform vec4 bot_color;
uniform vec4 top_color;

out vec4 v_bot_color;
out vec4 v_top_color;

void main () {
	float y_clamp = clamp(y, -1.0, 1.0);
	gl_Position = vec4(x, y_clamp, 0.0, 1.0);
	v_bot_color = bot_color;
	// calculate normalized top color
	v_top_color = mix(bot_color, top_color, y_clamp/2 + 0.5);
}
)"