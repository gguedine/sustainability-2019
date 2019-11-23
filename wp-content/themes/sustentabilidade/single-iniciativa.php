<?php get_header(); ?>
<?php the_post();  ?>

<body>
	<div class="container">

		<h1><?php the_title(); ?></h1>

		<span><?php the_content(); ?></span>

		<?php $afiliados = get_field('afiliados'); ?>
		<?php if(is_user_logged_in() && (!$afiliados || !in_array(get_current_user_ID(), $afiliados))): ?>
			<button id="afiliar" data-uid="<?php print get_current_user_ID(); ?>" data-id="<?php print get_the_id(); ?>">Afiliar</button>
		<?php endif; ?>

		<?php if($afiliados): ?>
				<span>Afiliados:</span>
				<?php foreach ($afiliados as $key => $user_id): ?>
					<p><?php print get_user_by('id', $user_id)->user_email; ?></p>
				<?php endforeach; ?>
		<?php endif; ?>
	

		<!-- ABAIXO ASSINADOS DA INICIATIVA -->
		<?php 

		$abaixo_assinados = get_posts(array(
			'number_posts'=> -1,
			'post_type'=> 'abaixo_assinado',
		)); 

		foreach ($abaixo_assinados as $key => $abaixo_assinado):
			if(!in_array(get_the_ID(), get_field('iniciativa',$abaixo_assinado->ID)) ) continue;
		?>

		<div class="abaixo_assinado">
			<a href="<?php print get_the_permalink($abaixo_assinado->ID); ?>">
				<h2><?php print get_the_title($abaixo_assinado->ID); ?></h2>	
			</a>
			<span><?php print get_the_content($abaixo_assinado->ID); ?></span>
		</div>

		<?php endforeach ?>

	</div>
</body>

<?php get_footer(); ?>