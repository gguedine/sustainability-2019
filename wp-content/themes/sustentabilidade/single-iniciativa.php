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
	
	</div>
</body>

<?php get_footer(); ?>