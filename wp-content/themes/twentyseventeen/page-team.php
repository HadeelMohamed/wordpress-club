<?php


get_header(); ?>

<div class="wrap">
	

	<div id="primary" class="content-area">
		<main id="main" class="site-main" role="main">



<?php //start by fetching the terms for the team taxonomy
$terms = get_terms( 'team', array(
    'hide_empty' => 0
) );



?>

<?php

// now run a query for each team 
echo '<ul>';
foreach ( $terms as $term ) {
 
 

        echo '<h4><a href="' .$term->slug . '">' . $term->name . '</a></h4>';
    wp_reset_postdata();
 

}
echo '</ul>'; ?>

		</main><!-- #main -->
	</div><!-- #primary -->
	
</div><!-- .wrap -->

<?php get_footer();