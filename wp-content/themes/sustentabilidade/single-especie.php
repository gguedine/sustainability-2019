<?php get_header(); ?>
<h1>SINGLE</h1>
<?php 
	if(have_posts()):
		while (have_posts()):
			the_post();
?>


<?php the_title(); ?>
<?php the_content(); ?>

<a href="<?php print get_post_type_archive_link(get_post_type()) ?>">Voltar para especies</a>

<?php 
		endwhile;
	endif;
?>
<?php get_footer(); ?>