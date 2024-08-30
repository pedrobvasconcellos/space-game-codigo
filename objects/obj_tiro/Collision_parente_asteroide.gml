/// @description Insert description here
// You can write your code in this editor
audio_play_sound(snd_hit, 1, false);
var _dano = dano;

with (other){
	vida -= _dano;
}

instance_destroy();
