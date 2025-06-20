is_idle = true
ja_gritou = false
morreu = false
tempo_animacao = -1
tempo_troca_animacao = irandom_range(5000, 17000)
x_antigo = x;
perseguindo = false;

mudarAnimacao(true);

function mudarAnimacao(primeiraAnimacao){
	
	// Aguarda entre 10 a 17 segundos para trocar a primeira animação
	if not primeiraAnimacao if  current_time - tempo_animacao < tempo_troca_animacao return;
	
	var atual_animacao = irandom(3)

	if atual_animacao == 0 sprite_index=homem_bomba;
	if atual_animacao == 1 sprite_index=homem_bomba_ani1;
	if atual_animacao == 2 sprite_index=homem_bomba_ani2;
	if atual_animacao == 3 sprite_index=homem_bomba_ani3;
	
	
}








