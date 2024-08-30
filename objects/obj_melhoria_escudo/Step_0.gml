/// @description Insert description here
// You can write your code in this editor
if alarm[0] <= 0{
	image_alpha -= 0.05;
	if image_alpha <= 0{
		instance_destroy();
	}
}else {
	image_alpha += 0.05;
}