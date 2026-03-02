
//Criando o Projetil
var _projetil = instance_create_layer(x + (5* image_xscale ), y, "Projeteis", projetil);
_projetil.image_xscale = image_xscale;
_projetil.image_yscale = image_yscale;
_projetil.hspeed = hspd * image_xscale;
_projetil.vspeed = vspd * image_yscale;

var _inst = audio_play_sound_at(snd, x, y, 0, 50, 100,	1, false, 1);
if (_inst != -1) {
	audio_sound_pitch(_inst, random_range(0.9, 1.1));
}

//Retornando o alarm
alarm[0] = novo_projetil;