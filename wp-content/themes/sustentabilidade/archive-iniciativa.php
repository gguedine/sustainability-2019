<?php get_header(); ?>
<body>
	<div class="container">
		<?php 
			if(have_posts()):
				while(have_posts()):
					the_post();
		?>

				<div class="iniciativa">
					<h4>
						<a href="<?php the_permalink(); ?>">
						<?php the_title(); ?>
						</a>
					</h4>
					<?php the_content(); ?>
				</div>

		<?php 
				endwhile;
			endif;
		?>
	
	</div>
</body>
<?php get_footer(); ?>