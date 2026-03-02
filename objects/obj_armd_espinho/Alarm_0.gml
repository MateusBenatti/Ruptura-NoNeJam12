volta = true;

var _inst = audio_play_sound_at(snd_espinho, x, y, 0, 50, 100,	1, false, 1);

if (_inst != -1) {
	audio_sound_pitch(_inst, random_range(0.9, 1.1));
}