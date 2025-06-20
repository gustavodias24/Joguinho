
if not instance_exists(oJogador) and not abrindo{
	sprite_index = van_abrindo;
	abrindo = true
}


if image_index >= image_number - 1 and abrindo {
	image_speed = 0;
	image_index = image_number - 1;
	
	jogador = instance_create_depth(48, 40, -1, oJogador);
	jogador.sprite_index = jogador_nascendo;
	abrindo = false;
}

if jogador{
	if jogador.image_index >= image_number - 1 {
		jogador.nascendo = false;
		jogador.image_xscale =-1;
		jogador = false;
		fechando = true;
	}
}  

if fechando {
	image_speed = -1;
	sprite_index = van_abrindo;
	if image_index <= 0{
		fechando = false;
		sprite_index = van;
	}
}


