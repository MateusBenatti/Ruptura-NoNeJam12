if(!audio_is_playing(snd_fonte)){
	var _inst = audio_play_sound_at(snd_fonte, x, y, 0, 50, 100,	1, false, 1);
	if (_inst != -1) {
		audio_sound_pitch(_inst, random_range(0.9, 1.1));
	}
}

//Efeito 1 - ACIMA
instance_create_depth(x, y - sprite_height + 4, depth +1, obj_effect_fonte1);

instance_create_depth(x + 5, y - sprite_height + 10, depth -1, obj_effect_fonte3);
var _fonte1 = instance_create_depth(x - 10, y - sprite_height + 9, depth -1, obj_effect_fonte4);
_fonte1.image_xscale = -1;

//Efeito 2 - MEIO
var _fonte5 = instance_create_depth(x, y -(sprite_height/2) - 10, depth -1, obj_effect_fonte4);
_fonte5.image_xscale = -1;
instance_create_depth(x, y -(sprite_height/2) - 10, depth -1, obj_effect_fonte4);

//Efeitos 3 - ABAIXO
var _fonte2 = instance_create_depth(x + 25, y -15, depth -1, obj_effect_fonte4);
_fonte2.image_yscale = -1;

var _fonte3 = instance_create_depth(x - 18, y - 15, depth -1, obj_effect_fonte3);
_fonte3.image_xscale = -1;
_fonte3.image_yscale = -1;

var _fonte4 = instance_create_depth(x, y -20, depth -1, obj_effect_fonte2);

