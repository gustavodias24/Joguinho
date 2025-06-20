// animação

if image_index >= image_number - 1 and is_idle and not morreu {
	mudarAnimacao(false);
}

if ( speed > 0 and not morreu and not instance_exists(oJogador)) {
	speed = 0 ;
	mudarAnimacao(false);
	// fazer ele voltar ao ponto de inicio andando
}




// perseguição


// Primeiro, verifica se o jogador existe
if (instance_exists(oJogador) and not morreu and oJogador.is_vivo) {
    var dist = point_distance(x, y, oJogador.x, oJogador.y);
	
    if (dist <= 100 or perseguindo) {
		perseguindo = true;
		if x_antigo > x image_xscale=1 else image_xscale=-1;
		
		x_antigo = x;
		// gritar
		if not ja_gritou{
			audio_play_sound(irandom_range(1,2)  == 1 ? ala1 : ala2, 1, false);
			ja_gritou = true;
		}
		
        // Aproxima-se lentamente
		sprite_index=homem_bomba_run;
        move_towards_point(oJogador.x, oJogador.y, 2); // velocidade 1
    }
}


/* comportamento de sair fora quando o jogador esta morrendo
if (instance_exists(oJogador) and not morreu and not oJogador.is_vivo) {

	var dist = point_distance(x, y, oJogador.x, oJogador.y);
	if (dist <= 100) {
		// Direção oposta ao jogador
	    var direcao = point_direction(x, y, oJogador.x, oJogador.y) + 180;
    
	    // Velocidade de afastamento
	    var velocidade = 2;
    
	    // Move para longe do jogador
	    x += lengthdir_x(velocidade, direcao);
		y += lengthdir_y(velocidade, direcao);
	}
}*/


if (sprite_index == boom and image_index >= image_number - 1 and morreu){
		instance_destroy();
}