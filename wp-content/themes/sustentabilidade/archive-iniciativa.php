<?php get_header(); ?>
<body>
	<div class="container">
		<?php 
			if(have_posts()):
				while(have_posts()):
					the_post();
		?>

				<div class="iniciativa">
					<a href="<?php the_permalink(); ?>">
						<?php the_title(); ?>
					</a>
					<?php the_content(); ?>
				</div>

		<?php 
				endwhile;
			endif;
		?>
	
	</div>
</body>
<?php get_footer(); ?>