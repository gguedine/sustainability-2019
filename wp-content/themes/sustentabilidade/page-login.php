<?php get_header(); ?>
<?php do_action('do_login'); ?>

<?php if(isset($_POST['login_error'])): ?>
	<h2><?php  echo $_POST['login_error']; ?></h2>
<?php endif; ?>
<div class="box">
	<form class = "form" method="post" action="<?php ?>">
		<h2 class="form-head">Entrar</h2>
		<label class="center-text-login">E-mail</label>
		<input type="text" class="form-control" name="username" placeholder="E-mail" required="" autofocus="" />
		<label class="center-text-login">Senha</label>
		<input type="password" class="form-control" name="password" placeholder="Senha" required=""/>      
		<label class="checkbox">
			<input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> Esqueceu a senha?
		</label>
		<button class="btn btn-lg btn-dark btn-block" type="submit">Logar</button>   
	</form>
</div>
<?php get_footer(); ?>	

<style>
    body{
        background-image: url("Animals-close-up-red-panda-rest-face-fence_1920x1080.jpg");
        background-repeat:no-repeat;
    }
</style>