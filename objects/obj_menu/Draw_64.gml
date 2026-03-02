//So desenha se nao ta em transição
if(instance_exists(obj_transicao)) exit;


//Desenhando as Opções


draw_set_valign(1);
//Desenhando opções no menu

for(var i = 0; i < array_length(menu); i++){
    var _cor = c_white;
    var _marg = 0;
    
    //Mudando Se é o atual
    if(i == atual){
        _cor = c_red;
        draw_sprite_ext(spr_triangulo, 0, _meio_horizontal - 100, _meio_vertical - 40 + (i * 100), 1, 1, 0, c_red, 1);
        _marg = margem;
    }
    
    //Desenhando texto
    draw_set_colour(_cor);
    draw_set_font(fnt_menu);
    draw_set_halign(1);
    draw_set_valign(1);
    draw_text(_meio_horizontal + _marg, _meio_vertical - 50 + (i * 100), menu[i]);
    draw_set_valign(-1);
    draw_set_halign(-1);
    draw_set_font(-1);
    draw_set_colour(-1);
}

global.tempo_R++;
var offset = sin(global.tempo_R * global.vel_flutuar_R) * global.altura_R;
draw_sprite_ext(spr_titulo, 0, _meio_horizontal, _meio_vertical - 200 + offset, 8, 8, 0, c_white, 1);