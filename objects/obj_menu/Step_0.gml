if(keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"))){
    atual--;
    
    margem = 0;
	
	var _inst = audio_play_sound_at(menu_6, x, y, 0, 100, 150,	1, false, 1);

	if (_inst != -1) {
	    audio_sound_pitch(_inst, random_range(0.9, 1.1));
	}

}

if(keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"))){
    atual++;
    
    margem = 0;
	
	var _inst = audio_play_sound_at(menu_6, x, y, 0, 100, 150,	1, false, 1);

	if (_inst != -1) {
	    audio_sound_pitch(_inst, random_range(0.9, 1.1));
	}
}

atual = clamp(atual, 0, array_length(menu) - 1);

margem = lerp(margem, 30, .1)

//Ativano as funções
if(keyboard_check_pressed(vk_enter)){
	var _inst = audio_play_sound_at(menu_10, x, y, 0, 100, 150,	1, false, 1);

	if (_inst != -1) {
	    audio_sound_pitch(_inst, random_range(0.9, 1.1));
	}
    switch (atual) {
    	case 0:
            cria_transicao_inicia(rm_texto);
        break;
    
        case 1:
            game_end();    
        break;
    }
    
}