<?php get_header(); ?>

<?php 
	if(have_posts()):
		the_post();
?>

<div class="main-content">	
    <div class="box">
		<h1><?php the_title(); ?></h1>	
		<img src="<?php echo get_field('imagem')['sizes']['medium']; ?>">

		<?php 
			if(!empty(get_the_category())): 
				foreach (get_the_category() as $key => $category):
		?>
			<span><?php echo $category->name; ?></span>
		<?php 
				endforeach;
			endif; 
		?>
		<br><br>
		<?php the_content(); ?>	
		
		<?php 
			$registrados = get_field('registrados'); 
			if(!empty($registrados)):
				$registrado_key = array_search(get_current_user_ID(), array_column($registrados, 'ID'));
				//retorna a chave do usuario no array ou false
			?>
				<?php if(!($registrado_key === false)): ?>
						<h3>Você já se registrou nesse evento</h3>
				<?php else: ?>
					<?php if(is_user_logged_in()): ?>
						<button class="registrar-evento"  data-user="<?php echo get_current_user_ID(); ?>" data-evento="<?php echo get_the_ID(); ?>" >Registrar</button>
					<?php else: ?>
						<div class="alert alert-success" role="alert">Se logue para se registrar nesse evento</div>
					<?php endif; ?>
				<?php endif ?>
		<?php

				echo '<h4>Usuários confirmados:</h4>';
				foreach ($registrados as $key => $registrado_arr):
		?>

				<span><?php echo $registrado_arr['user_email']; ?></span><br>

		<?php 
				endforeach;
			else:
		?>
		<h3>Ninguem se registrou ainda nesse evento</h3>

		<?php if(is_user_logged_in()): ?>
			<button class="registrar-evento"  data-user="<?php echo get_current_user_ID(); ?>" data-evento="<?php echo get_the_ID(); ?>" >Registrar</button>
		<?php else: ?>
			<div class="alert alert-success" role="alert">Se logue para se registrar nesse evento</div>
		<?php endif; ?>
		<?php
			endif;
		?>

		<?php 
			endif;
		?>
	</div>
</div>	

<?php get_footer(); ?>