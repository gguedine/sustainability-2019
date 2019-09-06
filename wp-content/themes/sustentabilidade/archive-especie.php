<?php get_header(); ?>
<h1>ARCHIVE</h1>
<?php 
	if(have_posts()):
		while (have_posts()):
			the_post();
?>


<h2><a href="<?php print get_permalink(); ?>"><?php the_title(); ?></a></h2>
<?php the_content(); ?>

<?php 
		endwhile;
	endif;
?>
<?php get_footer(); ?>