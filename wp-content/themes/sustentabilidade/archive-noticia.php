<?php get_header(); ?>
<body>
	<div class="content">
		<?php 
			if(have_posts()):
				while(have_posts()):
					the_post();
		?>

			<div><a href="<?php the_permalink(); ?>">
				
				<h2><?php the_title(); ?></h2>
				<img src="<?php echo get_field('imagem')['sizes']['thumbnail']; ?>">
				<p class="event-p"><?php echo wp_trim_words(get_the_content(), 55, '...'); ?></p>
			</a></div>

		<?php 
				endwhile;
			endif;
		?>
	</div>	
</body>
<?php get_footer(); ?>