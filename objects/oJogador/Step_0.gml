move_x = 0;
move_y = 0;

if not nascendo{
	if is_vivo{
		if (keyboard_check(ord("W"))) move_y -= velocidade;
		if (keyboard_check(ord("S"))) move_y += velocidade;

		if (keyboard_check(ord("D"))) {
			move_x += velocidade;
			image_xscale=-1;
		}
		if (keyboard_check(ord("A"))) {
			move_x -= velocidade;
			image_xscale=1;
		}

		if (move_x != 0 || move_y != 0) {
		    var length = point_distance(0, 0, move_x, move_y);
		
			var new_x =  move_x  / length;
			var new_x_pre = new_x + x;
		
			var new_y =  move_y  / length;
			var new_y_pre = new_y + y;
		
		
			var room_width_sprite_width = 573;
			if new_x_pre >= sprite_width and new_x_pre < room_width_sprite_width
				x += new_x * bonus;
			
			var room_weight_sprite_weigh = 373;
			show_debug_message(string(y) + string(x));
			if new_y_pre >= 23 and new_y_pre < 380
				y += new_y * bonus;
		
		
	    
		}

		// checando se está andando
		var andando = keyboard_check(ord("W")) || keyboard_check(ord("S")) || keyboard_check(ord("A")) || keyboard_check(ord("D"));
		sprite_index = andando ? jogador_correndo : Jogador;
	}else{
		if not frito{
			if (count_animacao_fogo >= 5){
				speed = 0;
				sprite_index = jogador_morrendo;
				frito = true;
			}else{
				sprite_index=jogador_pegando_fogo;
				move_towards_point(irandom(room_width), irandom(room_height), 1);
				if image_index >= image_number - 1 {
					count_animacao_fogo += 1;
				}
			}
		}else{
			if image_index >= image_number - 1 and not morreu_de_vez{
				image_speed = 0;
				image_index = image_number - 1;
				morreu_de_vez = true;
				var corpo = instance_create_depth(x, y,1, oCorpoSemVida);
				corpo.image_xscale = image_xscale;
				corpo.image_speed = 0;
				corpo.image_index = corpo.image_number - 1;
			
				instance_destroy();
			}
		}
	}
}


