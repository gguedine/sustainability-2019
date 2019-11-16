$(document).ready(function(){

	console.log("scripts.js loaded");

	$('#doacao').on('click',function(e){
		e.preventDefault();
		$('#form_doacao').slideToggle();
	});

	$('#form_doacao').on('submit', function(e){
		//prevent form from submitting
		e.preventDefault();

		var formdata = $('#form_doacao').serializeArray();

		data = {
			action: 'do_doacao',
			valor_doacao: formdata.find(data => data.name == "doacao").value,
			especie_id: formdata.find(data => data.name == "especie_id").value
		}

		$.post(ajaxurl, data, function(response){
			if(response.success){
				$("#total_doado").text(response.new_total);
				$('#inpt_doacao').val('');
				if(data.valor_doacao <= 5){
					$('.alert-doacao').text('Obrigado por sua doação, sua contribuição irá ajudar muito as especies em extinção');
				}else if(data.valor_doacao > 5 && data.valor_doacao <= 10){
					$('.alert-doacao').text('Obrigado por sua doação, você receberá 1 adesivo da coleção bichos felizes.');
				}else if(data.valor_doacao > 10 && data.valor_doacao <= 50){
					$('.alert-doacao').text('Obrigado por sua doação, você receberá 1 camisa super style autografada pelo macaco Joe!');
				}else if(data.valor_doacao > 50){
					$('.alert-doacao').text('Obrigado por sua doação, você receberá 1 kit completo amigo dos animais (camisa, boné, adesivos, e muito mais!)');
				}
				$('.alert-doacao').show();
				setTimeout(function() {
				  $(".alert-doacao").fadeOut(1200);
				}, 5000)

			}else{

			}
		});

	});

	$('.registrar-evento').on('click', function(e){
		e.preventDefault();

		data = {
			'action' : 'do_registrar_evento',
			'user_id' : $('.registrar-evento').data('user'),
			'evento_id' : $('.registrar-evento').data('evento')
		}

		$.post(ajaxurl, data, function(response){
			if(response.success){
				location.reload();
			}else{

			}
		});

	});

	$('#eventos-select').on('change', function(e){
		e.preventDefault();
		var cat_id = $('#eventos-select').find(":selected").data('cat_id');
		window.location.href = location.protocol + '//' + location.host + location.pathname + "?cat=" + cat_id ;

	});

	$('#afiliar').on('click', function(e){
		e.preventDefault();
		var user_id = $('#afiliar').data('uid');
		var iniciativa_id = $('#afiliar').data('id');

		data = {
			'user_id': user_id,
			'iniciativa_id': iniciativa_id,
			'action': 'do_afiliar'
		}

		$.post(ajaxurl, data, function(response){
			if(response.success){
				location.reload();
			}
		});

	});


	$('#btn_assinar').on("click", function(e){
		e.preventDefault();

		data = {
			action: 'do_assinar',
			user_id: $('#btn_assinar').data('uid'),
			as_id: $('#btn_assinar').data('aid')
		};

		$.post(ajaxurl, data, function(response){
			console.log(response);
		});
	});

});