$(document).ready(function(){

	console.log("scripts.js loaded");

	$('#doacao').on('click',function(e){
		e.preventDefault();
		$('#form_doacao').slideToggle();
	});


});