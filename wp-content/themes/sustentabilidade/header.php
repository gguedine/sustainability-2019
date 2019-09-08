<?php 
	wp_head();
?>
<script type="text/javascript">
	var ajaxurl = "<?php echo admin_url( 'admin-ajax.php' ); ?>"
</script>
<nav>
	<a href="<?php echo home_url(); ?>">HOME</a>
	<a href="<?php echo get_post_type_archive_link('especie'); ?>">ESPECIES</a>
</nav>