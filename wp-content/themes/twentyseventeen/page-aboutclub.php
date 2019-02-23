<?php


get_header(); ?>


<div class="wrap">
	<div id="primary" class="content-area">
		<main id="main" class="site-main" role="main">

<h2>About Club Page</h2>


<?php

 
// The Loop
if ( have_posts() ) {
   
    while (have_posts() ) {
       the_post(); ?>

       <div><?php the_content(); ?><div>
     

     <?php 
    }
    
}


?>


		</main><!-- #main -->
	</div><!-- #primary -->
</div><!-- .wrap -->



<?php get_footer();