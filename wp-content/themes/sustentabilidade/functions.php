<?php
//functions file
show_admin_bar( false ); //disable admin bar

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

add_action( 'do_cadastro', 'do_cadastro');
function do_cadastro(){
	if(
		isset($_POST['login']) && isset($_POST['senha']) &&//foram enviados senha e login
		filter_var($_POST['login'], FILTER_VALIDATE_EMAIL) //eh um email valido
	){
		if(username_exists( $username ) == false){
			wp_create_user($_POST['login'], $_POST['senha'], $_POST['login']);
			$user = wp_signon([
				'user_login' => $_POST['login'],
				'user_password' => $_POST['senha'],
				'remeber' => true
			]);
			wp_redirect(home_url());

		}else{
			$_POST['error'] = "Usuário já cadastrado";
		}
			
	}//validation if
}//function

add_action('do_cria_abaixo_assinado', 'do_cria_abaixo_assinado');
function do_cria_abaixo_assinado(){
	if(empty($_POST)) return;

	if(
		isset($_POST['titulo']) && !empty($_POST['titulo']) &&
		isset($_POST['conteudo']) && !empty($_POST['conteudo']) &&
		isset($_POST['iniciativa_id']) && !empty($_POST['iniciativa_id'])
	):

		$abaixo_assinado_id = wp_insert_post([
			'post_title'=> $_POST['titulo'],
			'post_type' => 'abaixo_assinado',
			'post_status'=> 'publish'
		]);
		$_POST['id'] = $abaixo_assinado_id;
		update_field('iniciativa',array($_POST['iniciativa_id']), $abaixo_assinado_id);
		update_field('descricao', $_POST['conteudo'], $abaixo_assinado_id);
		update_field('assinantes', array(), $abaixo_assinado_id);

		$_POST['success_message'] = "Abaixo Assinado criado com sucesso";
		$_POST['success_infos'] = ['permalink' => get_the_permalink($abaixo_assinado_id), 'title' => get_the_title($abaixo_assinado_id)]; 

	endif;
}

add_action( 'do_cria_evento', 'do_cria_evento');
function do_cria_evento(){

	if(empty($_POST)) return;

	if(

		isset($_POST['nome'])  && !empty($_POST['nome']) &&
		isset($_POST['descricao'])  && !empty($_POST['descricao']) &&
		isset($_POST['dia'])  && !empty($_POST['dia']) &&
		!empty($_FILES['imagem'])

	):
	
		require_once( ABSPATH . 'wp-admin/includes/image.php' );
		require_once( ABSPATH . 'wp-admin/includes/file.php' );
		require_once( ABSPATH . 'wp-admin/includes/media.php' );
			

		$evento_id = wp_insert_post([
			'post_title' => $_POST['nome'],
			'post_content' => $_POST['descricao'],
			'post_status' => 'publish',
			'post_type' => 'evento',
		]);
		update_field('data_evento', $_POST['dia'], $evento_id);
		if(isset($_POST['categoria']) && !empty($_POST['categoria'])){
			wp_set_post_categories($evento_id, $_POST['categoria'] );
		}

		$upload = wp_handle_upload($_FILES['imagem'], array('test_form' => FALSE));

		$filename = $upload['file'];

		// Check the type of file. We'll use this as the 'post_mime_type'.
		$filetype = wp_check_filetype( basename( $filename ), null );

		// Get the path to the upload directory.
		$wp_upload_dir = wp_upload_dir();

		// Prepare an array of post data for the attachment.
		$attachment = array(
			'guid'           => $wp_upload_dir['url'] . '/' . basename( $filename ), 
			'post_mime_type' => $filetype['type'],
			'post_title'     => preg_replace( '/\.[^.]+$/', '', basename( $filename ) ),
			'post_content'   => '',
			'post_status'    => 'inherit'
		);

		// Insert the attachment.
		$attach_id = wp_insert_attachment( $attachment, $filename, 0 );


		update_field('imagem', $attach_id, $evento_id);

		$_POST['success_message'] = "Evento criado com sucesso";
		$_POST['success_infos'] = ['permalink' => get_the_permalink($evento_id), 'title' => get_the_title($evento_id)]; 

	else:
		$_POST['erro'] = 'Preencha todos os campos';
	endif;

}

function send_mail_to_all_users($subject, $message, $headers = ''){
	foreach (get_users() as $user):
		$user_email = $user->user_email;
		wp_mail($user_email, $subject, $message, $headers);
	endforeach;
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

add_action( 'wp_ajax_do_registrar_evento', 'do_registrar_evento' );
add_action( 'wp_ajax_nopriv_do_registrar_evento', 'do_registrar_evento' ); // This is for unlogged users.

function do_registrar_evento(){

	$ret = new StdClass();
	$ret->success = false;

	$ret->post = $_POST;

	if(
		isset($_POST['user_id']) && !empty($_POST['user_id']) &&
		isset($_POST['evento_id']) && !empty($_POST['evento_id'])
	):
		$user_id = (int)$_POST['user_id'];
		$evento_id = (int)$_POST['evento_id'];

		$registrados = get_field('registrados', $evento_id);
		if(is_array($registrados)){
			array_push($registrados, $user_id);
		}else{
			$registrados = array($user_id);
		}
		update_field('registrados', $registrados, $evento_id);

		$ret->success = true;

	endif;//validacao campos

	wp_send_json($ret, 200);

}


add_action( 'wp_ajax_do_afiliar', 'do_afiliar' );
add_action( 'wp_ajax_nopriv_do_afiliar', 'do_afiliar' ); // This is for unlogged users.
function do_afiliar(){

	$ret = new StdClass();
	$ret->success = false;


	$user_id = $_POST['user_id'];
	$iniciativa_id = $_POST['iniciativa_id'];

	$afiliados = get_field('afiliados', $iniciativa_id);
	if(is_array($afiliados)){
		array_push($afiliados, $user_id);

	}else{
		$afiliados = array($user_id);
	}
	update_field('afiliados', $afiliados, $iniciativa_id);

	$ret->success = true;
	wp_send_json($ret, 200);


}

add_action( 'wp_ajax_do_assinar', 'do_assinar' );
add_action( 'wp_ajax_nopriv_do_assinar', 'do_assinar' ); // This is for unlogged users.
function do_assinar(){

	$ret = new StdClass();
	$ret->success = false;

	$user_id = $_POST['user_id'];
	$as_id = $_POST['as_id'];

	$assinantes = get_field('assinantes', $as_id);
	if(is_array($assinantes)){
		array_push($assinantes, $user_id);
	}else{
		$assinantes = array($user_id);
	}

	update_field('assinantes', $assinantes, $as_id);

	$ret->success = true;
	wp_send_json($ret, 200);


}