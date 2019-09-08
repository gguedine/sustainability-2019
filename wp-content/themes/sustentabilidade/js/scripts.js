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
				alert("Obrigado por sua doação");
			}else{

			}
		});

	});

});