<?php get_header(); ?>
<?php do_action('do_cria_abaixo_assinado'); ?>

<?php if(isset($_POST['success_message']) && isset($_POST['success_infos'])): ?>
	<div class="alert alert-success" role="alert">
		<?php  echo $_POST['success_message']; ?><br> 
		<b><?php echo $_POST['success_infos']['title']; ?></b><br>
		<a href="<?php echo $_POST['success_infos']['permalink']; ?>	"><?php echo $_POST['success_infos']['permalink']; ?></a>
	</div>
<?php endif; ?>

<body>
	<div class="container">
		<form action="" method="POST" >
			<div class="form-group">
				<label>Titulo</label>
				<input class="form-control" required type="text" name="titulo">
			</div>

			<div class="form-group">
				<label>Conteudo</label>
				<textarea class="form-control" required name="conteudo"></textarea>
			</div>

			<div class="form-group">
				<select class="form-control" name="iniciativa_id">
					<?php foreach (get_posts(['post_type'=>'iniciativa']) as $key => $iniciativa): ?>
						<option value="<?php print $iniciativa->ID ?>"><?php print $iniciativa->post_title; ?></option>
					<?php endforeach; ?>
				</select>
			</div>

			<button type="submit" class="btn btn-default">Criar Abaixo Assinado</button> 

		</form>
	</div>
</body>
<?php get_footer(); ?>