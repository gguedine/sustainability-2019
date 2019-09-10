<?php 
	wp_head();
?>
<script type="text/javascript">
	var ajaxurl = "<?php echo admin_url( 'admin-ajax.php' ); ?>"
</script>
<nav>
	<a href="<?php echo home_url(); ?>">HOME</a>
	<a href="<?php echo get_post_type_archive_link('especie'); ?>">ESPECIES</a>
	<?php if(!is_user_logged_in()): ?>
		<a href="<?php echo home_url('login'); ?>">LOGIN</a>
	<?php else: ?>
		<a href="<?php echo home_url('logout'); ?>">LOGOUT</a>
	<?php endif; ?>

</nav>