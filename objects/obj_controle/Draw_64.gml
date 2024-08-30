/// @description Insert description here
// You can write your code in this editor
var _c = make_color_rgb(131, 68, 87);
var _largura = display_get_gui_width();
var _altura = display_get_gui_height();

draw_set_font(fnt_basica);
if room ==  rm_menu{
	if alpha <= 0{
		alpha_add = 0.05;
	}else if alpha >= 1{
		alpha_add -= 0.05;
	}
	
	alpha += alpha_add;
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_text_ext_color(_largura/2, _altura/3, "Space Lord" + "\nNeste jogo seu objetivo é destruir asteroides para ganhar pontos, chegue aos 1000 pontos para vencer. Boa sorte :)", 30, 500, c_white, c_white, c_white, c_white, 1);
	draw_text_color(_largura/2, _altura - _altura/3, "Aperte espaco para comecar", _c,  _c,  _c,  _c, alpha);
	if keyboard_check_pressed(vk_space){
		room_goto(rm_jogo)
	}
}else if room == rm_jogo{
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	draw_set_font(fnt_basica);
	draw_text_color(20, 20, "Vidas: " + string(obj_nave.vida), _c, _c, _c, _c, 1);
	draw_text_color(20, 40, "Pontos: " + string(global.pont), c_white,  c_white,  c_white,  c_white, 1);
}else if room == rm_final{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_ext_color(_largura/2, _altura/2, "Muito bem! Voce venceu" + "\n Aperte 'R' para jogar novamnete", 80, 900, _c, _c, _c, _c, 1);
	if keyboard_check_pressed(ord("R")){
		game_restart();
	}
}
