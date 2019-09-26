<?php get_header(); ?>

<?php 
	if(have_posts()):
		while (have_posts()):
			the_post();
?>

<div class="main-content">
    <div class="box">
        <h1><?php the_title(); ?></h1>
        <img src="<?php echo get_field('imagem')['sizes']['medium']; ?>">
        <?php the_content(); ?>
        <div class="doacao-box">
            <a href="<?php print get_post_type_archive_link(get_post_type()) ?>">Voltar para especies</a>
            <div class="doacao-aviso">Já foram doados <span id="total_doado">R$ <?php the_field('total_doado'); ?> para <strong class="nome-especie"> <?php the_title(); ?> </strong> até agora</span></div>        
            <form   id="form_doacao">
                <label for="valor_doacao">Valor</label>
                <input id="inpt_doacao" type="number" step="0.01" name="doacao">
                <input type="hidden" name="especie_id" value="<?php echo get_the_ID(); ?>">
                <button type="submit" class="btn btn-success btn-block">DOAR</button>
            </form>
        </div>
    </div>    
</div>
<?php 
		endwhile;
	endif;
?>
<?php get_footer(); ?>