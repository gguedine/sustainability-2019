<?php get_header(); ?>
<?php do_action('do_cria_evento'); ?>

<form action="" method="POST" enctype="multipart/form-data" >
	<input type="file" name="imagem">
	<input type="date" name="dia">
	<input type="text" name="nome">
	<textarea name="descricao"></textarea>
	<input type="submit">
</form>

<?php get_footer(); ?>