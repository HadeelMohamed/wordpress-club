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

<div class="wrap">
	<div id="primary" class="content-area">
		<main id="main" class="site-main" role="main">
<?php
/* Define Variable Of Player */

        $Date = get_post_meta($post->ID, 'date', true);
       $Bio = get_post_meta($post->ID, 'bio', true);
 $TshirtNum = get_post_meta($post->ID, 'num', true);

$images = get_post_meta( $post->ID, 'category-image-id' );
 


?>
			<?php
			/* Start the Loop */
			while ( have_posts() ) : the_post();


 ?>

  <h2>Player Name:<?php the_title();?></h2>


				

				

 <h2>More Info</h2>

<ul>
	
   <li><?php echo 'BrithDate:' . $Date;?></li>
   <li><?php echo 'Biography:' . $Bio;?></li>
   <li><?php echo ' ​T-shirt​ ​number:' . $TshirtNum;?></li>
<?php
   if ( $images ) {
    foreach ( $images as $attachment_id ) {
        $thumb = wp_get_attachment_image( $attachment_id, 'thumbnail' );
        $full_size = wp_get_attachment_url( $attachment_id );
 
        printf( '<li>Player Image</li><a href="%s">%s</a>', $full_size, $thumb );
    }
}
?>
</ul> 
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
