<?php get_header(); ?>

<?php 
	if(have_posts()):
		while (have_posts()):
			the_post();
?>

    <div class="main-content">
        <div class="box">
            <h1><?php the_title(); ?></h1>
            <img src="<?php echo get_field('imagem')['sizes']['medium']; ?>">
            <?php the_content(); ?>

            <?php if(is_user_logged_in()): ?>
            <div class="doacao-box">
                <!-- <a href="<?php print get_post_type_archive_link(get_post_type()) ?>">Voltar para especies</a> -->
                <div class="doacao-aviso">Já foram doados <span id="total_doado">R$ <?php the_field('total_doado'); ?> para <strong class="nome-especie"> <?php the_title(); ?> </strong> até agora</span></div>        
                <div style="display: none;" class="alert-doacao alert alert-success" role="alert"></div>
                <form   id="form_doacao">
                    <label for="valor_doacao">Faça uma doação</label>
                    <div class="input-group">
                      <span class="input-group-addon">R$</span>
                      <input id="inpt_doacao" type="number" step="0.01" name="doacao" type="text" class="form-control" aria-label="Amount">
                    </div>
                    <input type="hidden" name="especie_id" value="<?php echo get_the_ID(); ?>">
                    <button type="submit" class="btn btn-success btn-block">DOAR</button>
                </form>
            </div>
            <?php endif; ?>
        </div> 

        <?php if(is_user_logged_in()): ?>
        <div class="bottom-content">
            <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingOne">
                        <h4 class="panel-title">
                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                            Doando entre 5 e 10 reais
                            </a>
                        </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                        <div class="panel-body">
                            1 adesivo da coleção bichos felizes.
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingTwo">
                        <h4 class="panel-title">
                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                Doando entre 11 e 50 reais
                            </a>
                        </h4>
                    </div>
                    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                        <div class="panel-body">
                            1 camisa super style autografada pelo macaco Joe!
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingThree">
                    <h4 class="panel-title">
                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                        Doando mais de 50 reais
                        </a>
                    </h4>
                    </div>
                    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                    <div class="panel-body">
                        1 kit completo amigo dos animais (camisa, boné, adesivos, e muito mais!)
                    </div>
                    </div>
                </div>
            </div>        
        </div>   
        <?php else: ?>
            <div class="alert alert-success" role="alert">Se logue para realizar uma doação</div>
        <?php endif; ?>

    </div>


    <?php 
            endwhile;
        endif;
    ?>
    <?php get_footer(); ?>