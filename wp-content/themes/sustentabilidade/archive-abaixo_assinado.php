<?php get_header(); ?>
<body>
	<div class="container">
	<?php 
		if(have_posts()):
			while (have_posts()):
				the_post();
	?>

	<div>
		<a href="<?php the_permalink(); ?>">
			<h1><?php the_title(); ?></h1>
			<?php the_field('descricao'); ?>
		</a>
	</div>

	<?php 
			endwhile;
		endif;
	?>
	</div>
</body>
<?php get_footer(); ?>