/// @description Insert description here
// You can write your code in this editor
move_wrap(true, true, 0);

image_angle += rotac;

if vida <= 0{
	audio_play_sound(snd_explosao, 1, false);
	global.pont += 10;
	repeat(3){
		instance_create_layer(x, y, "Instances", obj_asteroide_medio);
	}
	
	repeat(10){
		instance_create_layer(x, y, "Instances", obj_detritos)
	}
	instance_destroy();
}