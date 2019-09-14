<?php do_action('do_login'); ?>
<?php get_header(); ?>

<?php if(isset($_POST['login_error'])): ?>
	<h2><?php  echo $_POST['login_error']; ?></h2>
<?php endif; ?>
<form method="post" action="<?php ?>">
	<label for="login">Login</label>
	<input type="text" name="login">

	<label for="senha">Senha</label>
	<input type="password" name="senha">

	<input type="hidden" name="action" value="do_login">

	<button type="submit">Logar</button>
</form>

<?php get_footer(); ?>	