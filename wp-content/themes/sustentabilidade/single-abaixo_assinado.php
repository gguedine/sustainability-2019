<?php get_header(); ?>
<body>
	<div class="container">
		<h1><?php the_title(); ?></h1>

		<?php the_field('descricao'); ?>

		<h1><?php print get_the_title(get_field('iniciativa')[0]); ?></h1>

	</div>	
</body>
<?php get_footer(); ?>