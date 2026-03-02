if(instance_exists(obj_player)){
    if(obj_player.explosao){
		audio_stop_all();
        cria_transicao_inicia(destino);
    }
}