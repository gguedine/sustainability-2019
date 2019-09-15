<?php do_action('do_cadastro'); ?>
<?php get_header(); ?>

<form method="post" action="<?php ?>">
	<label for="login">Login</label>
	<input type="text" name="login">

	<label for="senha">Senha</label>
	<input type="password" name="senha">

	<input type="hidden" name="action" value="do_cadastro">

	<button type="submit">Logar</button>
</form>

<?php get_footer(); ?>