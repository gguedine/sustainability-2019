<?php 
	wp_head();
?>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="style.css"" type="text/css" />
<script type="text/javascript">
	var ajaxurl = "<?php echo admin_url( 'admin-ajax.php' ); ?>"
</script>
<nav>
	<a href="<?php echo home_url(); ?>">HOME</a>
	<a href="<?php echo get_post_type_archive_link('especie'); ?>">ESPECIES</a>
	<a href="<?php echo get_post_type_archive_link('evento'); ?>">EVENTOS</a>
	<?php if(!is_user_logged_in()): ?>
		<a href="<?php echo home_url('login'); ?>">LOGIN</a>
		<a href="<?php echo home_url('cadastro'); ?>">CADASTRO</a>
	<?php else: ?>
		<a href="<?php echo home_url('logout'); ?>">LOGOUT</a>
	<?php endif; ?>

</nav>