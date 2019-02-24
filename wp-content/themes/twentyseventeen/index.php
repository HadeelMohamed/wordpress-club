<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.0
 */

get_header(); ?>

<div class="wrap">
	<?php if ( is_home() && ! is_front_page() ) : ?>
		<header class="page-header">
			<h1 class="page-title"><?php single_post_title(); ?></h1>
		</header>
	<?php else : ?>
	<header class="page-header">
		<h2 class="page-title"><?php _e( 'My Club Website', 'twentyseventeen' ); ?></h2>
	</header>
	<?php endif; ?>

<p>Liverpool F.C. was founded following a dispute between the Everton committee and John Houlding, club president and owner of the land at Anfield. After eight years at the stadium, Everton relocated to Goodison Park in 1892 and Houlding founded Liverpool F.C. to play at Anfield Originally named "Everton F.C. and Athletic Grounds Ltd" (Everton Athletic for short), the club became Liverpool F.C. in March 1892 and gained official recognition three months later, after The Football Association refused to recognise the club as Everton The team won the Lancashire League in its début season, and joined the Football League Second Division at the start of the 1893–94 season. After finishing in first place the club was promoted to the First Division, which it won in 1901 and again in 1906

Liverpool reached its first FA Cup Final in 1914, losing 1–0 to Burnley. It won consecutive League championships in 1922 and 1923, but did not win another trophy until the 1946–47 season, when the club won the First Division for a fifth time under the control of ex-West Ham Utd centre half George Kay Liverpool suffered its second Cup Final defeat in 1950, playing against Arsenal The club was relegated to the Second Division in the 1953–54 season Soon after Liverpool lost 2–1 to non-league Worcester City in the 1958–59 FA Cup, Bill Shankly was appointed manager. Upon his arrival he released 24 players and converted a boot storage room at Anfield into a room where the coaches could discuss strategy; here, Shankly and other "Boot Room" members Joe Fagan, Reuben Bennett, and Bob Paisley began reshaping the team</p>
	<?php get_sidebar(); ?>
</div><!-- .wrap -->

<?php get_footer();
