<?php get_header(); ?>

<div class="body">
	<div class="site-container">
		
		<div class="section-a">
			<a>
		    	<img class="img-post center-block" src="http://www.pinhais.pr.gov.br/meioambiente/defesaanimal/dbimages/39728_img.png">
		    </a>
		    <div class="sa-content">
				<p>
					O termo sustentabilidade consiste em possuir a característica de ser sustentável, que se pode conservar, ou seja, é quando existe a possibilidade de se beneficiar dos atributos de algo e mesmo assim mantê-lo.

					Por sua vez, o termo sustentabilidade ambiental define o modo como o homem age na utilização dos bens naturais e providencia soluções para as necessidades de si próprio e dos outros, de forma que não agrida o meio natural e garanta a utilização do mesmo em gerações futuras.


					A sustentabilidade ambiental está muito ligada ao termo desenvolvimento sustentável, que visa à utilização dos produtos do meio ambiente sem destruí-los ou extingui-los, garantindo, simultaneamente, o desenvolvimento financeiro, tecnológico, industrial, etc.
				</p> \

				<div class="card">
				  <div class="card-body"> 
				    <p>A sustentabilidade ambiental está muito ligada ao termo desenvolvimento sustentável, que visa à utilização dos produtos do meio ambiente sem destruí-los ou extingui-los, garantindo, simultaneamente, o desenvolvimento financeiro, tecnológico, industrial, etc. Você pode nos ajudar de diversas formas, seja contribuindo para causa regularmente com doações ou se informando e passando adiante essas informação. Saiba como clicando no botão abaixo.</p>
				  </div>
				</div>	
			</div>	
			<!-- <div class="sa-content-2">
				<a>
			    	<img class="sa-img-2 center-block" src="https://observatorio3setor.org.br/wp-content/uploads/2018/02/preserva%C3%A7%C3%A3o1.jpg">
			    </a>
			</div> -->

			<!-- <div class="sa-content-3">

							
			</div> -->

			<button type="button" class="btn btn-success">Saiba Mais</button>
			<div class="section-b">
				<div class="sa-content-5">
					<h3>Depoimentos</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque id magna sed ex elementum commodo quis quis libero. Sed a est purus. Duis nec pulvinar tellus. Mauris pellentesque, sem a porttitor dictum, eros velit auctor lacus, lacinia vestibulum neque purus et sapien. 
					Curabitur et convallis mi. Aliquam erat volutpat. Fusce malesuada pulvinar odio id laoreet. Aenean mattis mollis ante ut scelerisque. Duis erat urna, gravida sit amet varius id, viverra ut nunc. Aenean eu iaculis dolor, at vestibulum ex. Interdum et malesuada fames ac ante ipsum primis in faucibus. 
					Pellentesque tincidunt accumsan turpis, eu mattis sem rutrum in. Cras luctus, libero sed dignissim pretium, nisl leo faucibus lorem, in pulvinar odio lacus ac nisl. Sed sagittis dui a suscipit sollicitudin. Curabitur vitae erat in nunc posuere posuere non non arcu. Duis facilisis odio sed dolor sagittis convallis.
					</p>
				</div>
			</div>
			<!-- <div class="sa-content">
				<div class="col-sm">								
					<div class="card" style="width: 100%;">
					  <img class="card-img-top" src="https://pixel.nymag.com/imgs/fashion/daily/2019/06/18/18-puppy-dog-eyes.w700.h700.jpg" alt="Imagem de capa do card">
					  <div class="card-body">
					    <h5 class="card-title">Depoimentos</h5>
					    <p class="card-text">Um exemplo de texto rápido para construir o título do card e fazer preencher o conteúdo do card.</p>
					    <a href="#" class="btn btn-primary">Visitar</a>
					  </div>
					</div>
				</div>	
				<div class="col-sm">	
					<div class="card" style="width: 100%">
					  <img class="card-img-top" src="https://cdn-prod.medicalnewstoday.com/content/images/articles/322/322868/golden-retriever-puppy.jpg" alt="Imagem de capa do card">
					  <div class="card-body">
					    <h5 class="card-title">Título do card</h5>
					    <p class="card-text">Um exemplo de texto rápido para construir o título do card e fazer preencher o conteúdo do card.</p>
					    <a href="#" class="btn btn-primary">Visitar</a>
					  </div>
					</div>
				</div>
				<div class="col-sm">								
					<div class="card" style="width: 100%;">
					  <img class="card-img-top" src="https://www.petmd.com/sites/default/files/Acute-Dog-Diarrhea-47066074.jpg" alt="Imagem de capa do card">
					  <div class="card-body">
					    <h5 class="card-title">Título do card</h5>
					    <p class="card-text">Um exemplo de texto rápido para construir o título do card e fazer preencher o conteúdo do card.</p>
					    <a href="#" class="btn btn-primary">Visitar</a>
					  </div>
					</div>
				</div>
			</div> -->

		</div>
		
		<div class="sa-content-5">	
			<h3>Nosso Blog</h3>
			<?php 
				if(have_posts()):
				echo '<div class="row">';
					while(have_posts()):
						the_post();
			?>
	    	<div class="col-md-4">
		    	<div class="sa-blog">
				    <div class="heading-wrapper">
				    	<img class="sa-img-5" src="https://abrilexame.files.wordpress.com/2019/04/greenpeace-israel.jpg">
				      	<h1 class="blog-headline"><?php the_title(); ?></h1>
				      	<div class="byline-wrapper">
				        	<div class="byline-text">October 6, 2015</div>
				        	<div class="byline-text">IN</div>
				        	<?php if(!empty(get_the_category())): ?>
				        		<?php foreach (get_the_category() as $key => $value): ?>
				        			<a class="byline-link" href="#"><?php echo $value->cat_name; ?></a>
				        		<?php endforeach; ?>	
				        	<?php endif; ?>	
				    	</div>
				    </div>
				    <p class="blog-content">
				    	<?php echo wp_trim_words(get_the_content(), 40, '...'); ?>
				  	</p>
			  		<div class="middle">
			    		<div class="text">John Doe</div>
			  		</div>  
			  	</div>  
			</div>  	 	  		  	
			<?php   	
			  	endwhile;
			  	echo '</div>';
			endif;
			?>  
		</div>
		<div class="section-c">
			<div class="sa-content-5">
				<h3>Patrocinadores</h3>
				<div class="row">
					<div class="col-sm-6 col-md-4">
						<img class="sa-img-5" src="<?php echo get_template_directory_uri(); ?>/imagens/patro_img1.jpg">
					</div>
					<div class="col-sm-6 col-md-4">
						<img class="sa-img-5" src="<?php echo get_template_directory_uri(); ?>/imagens/patro_img2.jpg">
					</div>
					<div class="col-sm-6 col-md-4">
						<img class="sa-img-5" src="<?php echo get_template_directory_uri(); ?>/imagens/patro_img3.jpg">
					</div>
				</div>	
			</div>
		</div>
	  </div>
	</div>

  	
</div>
<?php get_footer(); ?>