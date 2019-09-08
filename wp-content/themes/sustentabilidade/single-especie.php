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
<div>Já foram doados R$<div id="total_doado"><?php the_field('total_doado'); ?></div> para <?php the_title(); ?> até agora</div>


<button id="doacao">FAZER DOACAO</button>
<form  style="display:none" id="form_doacao">
	<label for="valor_doacao">Valor</label>
	<input id="inpt_doacao" type="number" step="0.01" name="doacao">
	<input type="hidden" name="especie_id" value="<?php echo get_the_ID(); ?>">

	<button type="submit">DOAR</button>
</form>

<?php 
		endwhile;
	endif;
?>
<?php get_footer(); ?>