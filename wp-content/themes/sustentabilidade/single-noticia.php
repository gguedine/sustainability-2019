<?php get_header(); ?>
<body>
	<div class="content">
		<?php 
			if(have_posts()): 
				while(have_posts()):
					the_post();
		?>

		<p>Publicado em <?php echo date('d/m/Y', strtotime($post->post_date)) ?></p>
		<h1><?php the_title(); ?></h1>
		<img src="<?php print(get_field("imagem")['sizes']['large']); ?>">
		<div class="texto">
			<?php the_content(); ?>
		</div>

		<ul>
          	<?php foreach (get_terms('tipo_noticia') as $key => $value): ?>
            	<li><?php echo $value->name; ?></li>
        	<?php endforeach; ?>
        </ul>		

		<?php 
				endwhile;
			endif;
		?>
	</div>
</body>
<?php get_footer(); ?>