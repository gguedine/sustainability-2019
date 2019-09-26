<?php get_header(); ?>
<body>
	<div class="container">

	
<?php 
	if(have_posts()):
		echo '<div class="row">';
		while (have_posts()):
			the_post();
?>

			<div class="col-md-6 col-lg-4">
				<div class="card mt-3 thumbnail">
					<img class="card-img-top" src="<?php echo get_field('imagem')['sizes']['large']; ?>">
					<div class="card-body caption">
						<h3 class="card-title text-center"><?php the_title(); ?></h3>
						<p class="card-text text-justify"><?php echo wp_trim_words(get_the_content(), 55, '...'); ?></p>
				    	<div class="card-footer">
				    		<!-- <a href="#" class="btn btn-primary" role="button">Button</a>  -->
				    		<a href="<?php the_permalink(); ?>" type="button" class="btn btn-outline-primary btn-sm">Saiba Mais...</a>
				    	</div>
			   		</div>
				</div>
			</div>

<?php 
		if(($wp_query->current_post+1%3) == 0):
			echo '</div>';
			echo '<div class="row">';
		endif;
		endwhile;
		echo '</div>';
	endif;
?>

	</div>
</body>
<?php get_footer(); ?>
