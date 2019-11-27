<?php get_header(); ?>
<body>
	<div class="container">

		<?php if(is_user_logged_in()): ?>
			<button><a href="<?php print home_url('cria-abaixo-assinado'); ?>">Criar abaixo assinado</a></button>
		<?php endif; ?>

		<h1><?php the_title(); ?></h1>

		<?php the_field('descricao'); ?>

		<h1><?php print get_the_title(get_field('iniciativa')[0]); ?></h1>

		<?php 
			$assinantes = get_field('assinantes'); 
			if(!$assinantes || (is_array($assinantes) && !in_array(get_current_user_ID(), $assinantes) )):
				if(is_user_logged_in()):
		?>
			<button id="btn btn-lg btn-dark btn-block" data-uid="<?php print get_current_user_ID(); ?>" data-aid="<?php print get_the_ID(); ?>" >ASSINAR</button>
		<?php
				else:
		?>
			<div class="alert alert-danger"<a href="<?php print home_url('login') ?>">Faça Login para Assinar.</a></div>
		<?php 
				endif;
			endif;
		?>

		<?php 
			if(is_array($assinantes)): 
				if(in_array(get_current_user_ID(), $assinantes)):
		?>
				<span>Você já assinou.</span>
		<?php 	
				endif; 
		?>
				<h3>Assinantes:</h3>
		<?php 
				foreach ($assinantes as $key => $value):
		?>
				<p><?php print(get_user_by('ID', $value))->user_email; ?></p>
		<?php 
				endforeach; 
			endif;
		?>


	</div>	
</body>
<?php get_footer(); ?>