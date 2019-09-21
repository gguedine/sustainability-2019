<?php get_header(); ?>
<?php do_action('do_cria_evento'); ?>

<form action="" method="POST" enctype="multipart/form-data" >
	<input required type="file" name="imagem">
	<input required type="date" name="dia">
	<input required type="text" name="nome">
	<textarea required  name="descricao"></textarea>
	<input type="submit">
</form>

<?php get_footer(); ?>