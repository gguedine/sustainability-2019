<?php get_header(); ?>
<body>
	<div class="container">
		<h1><?php the_title(); ?></h1>

		<?php the_field('descricao'); ?>

		<h1><?php print get_the_title(get_field('iniciativa')[0]); ?></h1>

		<?php 
			$assinantes = get_field('assinantes'); 
			if(is_array($assinantes) && !empty($assinantes) && !in_array(get_current_user_ID(), $assinantes)):
		?>
			<button id="btn_assinar" data-uid="<?php print get_current_user_ID(); ?>" data-aid="<?php print get_the_ID(); ?>" >ASSINAR</button>
		<?php
			endif;
		?>

	</div>	
</body>
<?php get_footer(); ?>