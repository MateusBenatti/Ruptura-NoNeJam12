menu = ["Jogar", "Sair"]

atual = 0;

margem = 30;

//Pegando a metade da tela
_meio_vertical = display_get_gui_height() / 2;
_meio_horizontal = display_get_gui_width() / 2;

var _inst = audio_play_sound_at(snd_musica, x, y, 0, 50, 100,	1, true, 1);
