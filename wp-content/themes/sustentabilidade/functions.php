<?php
//functions file

add_action('wp_enqueue_scripts','load_scripts');

function load_scripts(){
	wp_enqueue_script( 'jquery3.4.1.min', get_template_directory_uri().'/js/jquery-3.4.1.min.js', false);
	wp_enqueue_script( 'scripts', get_template_directory_uri().'/js/scripts.js', false);
}

/* ---------------- SITE CALLS -------------------------- */

add_action( 'do_login', 'do_login' );
function do_login(){
	if(is_user_logged_in()) wp_redirect(home_url()); //se o usuario ja esta logado, redirect para a home

	if(
		isset($_POST['login']) && isset($_POST['senha']) //foram enviados senha e login
	){
		$user = wp_signon([
			'user_login' => $_POST['login'],
			'user_password' => $_POST['senha'],
			'remeber' => true
		]); //validar as credenciais enviadas

		if(is_wp_error($user)){
			// $_POST['login_error'] = $user->get_error_message();
			$_POST['login_error'] = "Login ou senha incorretos";
		}else{
			wp_redirect(home_url());
		}
	}

}


/* ------------------ AJAX CALLS -------------------------*/

add_action( 'wp_ajax_do_doacao', 'do_doacao' );
add_action( 'wp_ajax_nopriv_do_doacao', 'do_doacao' ); // This is for unlogged users.

function do_doacao(){
	$ret = new StdClass();
	$ret->success = false;

	if(
		(!isset($_POST['valor_doacao']) || empty($_POST['valor_doacao']) ) ||
		(!isset($_POST['especie_id'])   || empty($_POST['especie_id']  ) ) ||
		($_POST['valor_doacao'] < 0)
	){
		$ret->error_msg = "Erro na requisição";
		wp_send_json($ret, 200);
	}

	$t = get_field('total_doado', $_POST['especie_id']) + $_POST['valor_doacao'];
	update_field('total_doado', $t, $_POST['especie_id']);

	$ret->success = true;
	$ret->new_total = $t;
	wp_send_json($ret,200);
}