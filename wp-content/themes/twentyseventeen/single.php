<?php
/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.0
 */

get_header(); ?>


<?php
/* Define Variable Of Player */

        $Date = get_post_meta($post->ID, 'date', true);
       $Bio = get_post_meta($post->ID, 'bio', true);
 $TshirtNum = get_post_meta($post->ID, 'num', true);

$images = get_post_meta( $post->ID, 'image-id' );
 


?>
<div class="wrap">
	<div id="primary" class="content-area">
		<main id="main" class="site-main" role="main">
			<?php
			/* Start the Loop */
			while ( have_posts() ) : the_post();


 ?>

 <div class="container">
    <div class="row">
        <div class="col-sm-2 col-md-2">
           


            <?php
   if ( $images ) {
    foreach ( $images as $attachment_id ) {
        $thumb = wp_get_attachment_image( $attachment_id, 'thumbnail' );
        $full_size = wp_get_attachment_url( $attachment_id );
 
        printf( '<a href="%s" target="_blank" class="img-rounded img-responsive" >%s </a>', $full_size, $thumb );
    }
}
?>
        </div>
        <div class="col-sm-4 col-md-4">
            <blockquote>
                <p><?php the_title();?></p> 
            </blockquote>
            <p> <i class="glyphicon glyphicon-envelope"></i> <?php echo ' ​T-shirt​ ​number: ' . $TshirtNum;?>
                <br
                /> <i class="glyphicon glyphicon-globe"></i> <?php echo 'Biography: ' . $Bio;?>
                <br /> <i class="glyphicon glyphicon-gift"></i> <?php echo 'BrithDate: ' . $Date;?></p>
        </div>
        
      
    </div>
</div>
				<?php 
				the_post_navigation( array(
					'prev_text' => '<span class="screen-reader-text">' . __( 'Previous Post', 'twentyseventeen' ) . '</span><span aria-hidden="true" class="nav-subtitle">' . __( 'Previous', 'twentyseventeen' ) . '</span> <span class="nav-title"><span class="nav-title-icon-wrapper">' . twentyseventeen_get_svg( array( 'icon' => 'arrow-left' ) ) . '</span>%title</span>',
					'next_text' => '<span class="screen-reader-text">' . __( 'Next Post', 'twentyseventeen' ) . '</span><span aria-hidden="true" class="nav-subtitle">' . __( 'Next', 'twentyseventeen' ) . '</span> <span class="nav-title">%title<span class="nav-title-icon-wrapper">' . twentyseventeen_get_svg( array( 'icon' => 'arrow-right' ) ) . '</span></span>',
				) );



			endwhile; // End of the loop.
			?>

<?php

        
    ?>



		</main><!-- #main -->
	</div><!-- #primary -->
	<?php get_sidebar(); ?>
</div><!-- .wrap -->

<?php get_footer();
