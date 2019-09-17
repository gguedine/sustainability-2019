<?php do_action('do_login'); ?>
<?php get_header(); ?>

<?php if(isset($_POST['login_error'])): ?>
	<h2><?php  echo $_POST['login_error']; ?></h2>
<?php endif; ?>
<div class="box">
	<form class = "form" method="post" action="<?php ?>">
		<h2 class="form-head">Entrar</h2>
		<label class="center-text-login">E-mail</label>
		<input type="text" class="form-control" name="login" placeholder="E-mail" required="" autofocus="" />
		<label class="center-text-login">Senha</label>
		<input type="password" class="form-control" name="senha" placeholder="Senha" required=""/>      
		<button class="btn btn-lg btn-dark btn-block" type="submit">Logar</button>   
	</form>
</div>
<?php get_footer(); ?>	