<?php get_header(); ?>

<?php 
	if(have_posts()):
		while(have_posts()):
			the_post();
?>

<div class="evento">
	<h1><a href="<?php echo get_permalink(); ?>"><?php the_title(); ?></a></h1>
	<?php the_content(); ?>

	<?php $registrados_count = count(get_field('registrados')); ?>
	<span><?php echo $registrados_count; ?> usuário<?php if($registrados_count != 1): echo "s"; endif?> registrado<?php if($registrados_count != 1): echo "s"; endif?> até agora.</span>
	
</div>


<?php 
		endwhile;
	endif;
?>

<?php get_footer(); ?>