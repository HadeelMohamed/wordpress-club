
<?php 

// Register Custom Post Type Player
add_action( 'init', 'create_player_cpt' );


function create_player_cpt() {

	$labels = array(
		'name' => _x( 'Player', 'Post Type General Name', 'textdomain' ),
		'singular_name' => _x( 'Team', 'Post Type Singular Name', 'textdomain' ),
		'menu_name' => _x( 'Player', 'Admin Menu text', 'textdomain' ),
		'name_admin_bar' => _x( 'PLayer', 'Add New on Toolbar', 'textdomain' ),
		'archives' => __( 'PLayer Archives', 'textdomain' ),
		'attributes' => __( 'PLayer Attributes', 'textdomain' ),
		'parent_item_colon' => __( 'Parent Team:', 'textdomain' ),
		'all_items' => __( 'All Player', 'textdomain' ),
		'add_new_item' => __( 'Add New player', 'textdomain' ),
		'add_new' => __( 'Add New Player', 'textdomain' ),
		'new_item' => __( 'New Player', 'textdomain' ),
		'edit_item' => __( 'Edit Player', 'textdomain' ),
		'update_item' => __( 'Update Player', 'textdomain' ),
		'view_item' => __( 'View Player', 'textdomain' ),
		'view_items' => __( 'View Player', 'textdomain' ),
		'search_items' => __( 'Search PLayr', 'textdomain' ),
		'not_found' => __( 'Not found', 'textdomain' ),
		'not_found_in_trash' => __( 'Not found in Trash', 'textdomain' ),
		'featured_image' => __( 'Featured Image', 'textdomain' ),
		'set_featured_image' => __( 'Set featured image', 'textdomain' ),
		'remove_featured_image' => __( 'Remove featured image', 'textdomain' ),
		'use_featured_image' => __( 'Use as featured image', 'textdomain' ),
		'insert_into_item' => __( 'Insert into Player', 'textdomain' ),
		'uploaded_to_this_item' => __( 'Uploaded to this Player', 'textdomain' ),
		'items_list' => __( 'Player list', 'textdomain' ),
		'items_list_navigation' => __( 'Player list navigation', 'textdomain' ),
		'filter_items_list' => __( 'Filter Player list', 'textdomain' ),
	);
	$values = array(
		'label' => __( 'Player', 'textdomain' ),
		'description' => __( 'these are my Player', 'textdomain' ),
		'labels' => $labels,
		'menu_icon' => 'dashicons-admin-generic',
		'supports' => array(  'title', 
  'thumbnail'),
		'query_var' => true,
		'taxonomies' => array(),
		'public' => true,
		'show_ui' => true,
		'show_in_menu' => true,
		'menu_position' => 5,
		'show_in_admin_bar' => true,
		'show_in_nav_menus' => true,
		'can_export' => true,
		'has_archive' => true,
		'hierarchical' => false,
		'exclude_from_search' => false,
		'show_in_rest' => true,
		'publicly_queryable' => true,
		'capability_type' => 'post',
		'rewrite' => false,
	);
	register_post_type( 'Player', $values );

}


// Register Custom Team taxonomy 
add_action( 'init', 'register_team_taxonomy' );
 function register_team_taxonomy() {
        register_taxonomy(
            'team',
            'player',
            array(
                'labels' => array(
                    'name' => ' Team',
                    'add_new_item' => 'Add New Team',
                    'new_item_name' => "New Team"
                ),
                'query_var' => true,
                'show_ui' => true,
                'show_tagcloud' => false,
                'hierarchical' => true,
                'rewrite' => array(
                    'slug' => 'team'
                )
            )
        );
    
}

add_action("admin_init", "player_info_admin_init");


/////// custome filed of player
function player_info_admin_init(){
  add_meta_box("player_meta", "More Info Of Player", "player_meta", "Player", "normal", "low");
}



function player_meta() {
  global $post;
  $custom = get_post_custom($post->ID);
  $date = $custom["date"][0];
  $bio = $custom["bio"][0];
  $developers = $custom["developers"][0];
  $num = $custom["num"][0];
  $pimage = $custom["pimage"][0];
  ?>
 
  <p><label>Player​ ​biography:</label><br />
  <textarea cols="50" rows="5" name="bio"><?php echo $bio; ?></textarea></p>
  <p><label>Player Brithdate By:</label><br />
  <input type="date"  cols="50" rows="5" name="date" required><?php echo $date; ?></input></p>

  

    <div class="form-field term-group">
     <label for="category-image-id"><?php _e('Image', 'hero-theme'); ?></label>
     <input type="hidden" id="category-image-id" name="category-image-id" class="custom_media_url" value="">
     <div id="category-image-wrapper"></div>
     <p>
       <input type="button" class="button button-secondary ct_tax_media_button" id="ct_tax_media_button" name="ct_tax_media_button" value="<?php _e( 'Add Image', 'hero-theme' ); ?>" />
       <input type="button" class="button button-secondary ct_tax_media_remove" id="ct_tax_media_remove" name="ct_tax_media_remove" value="<?php _e( 'Remove Image', 'hero-theme' ); ?>" />
    </p>
   </div>

  
  <p><label> Player​ ​t-shirt​ ​Number:</label><br />
  <input type="number"  cols="50" rows="5" name="num" required><?php echo $num; ?></input></p>
  
<?php }

///////save data  of player
add_action('save_post', 'save_details');

function save_details(){
  global $post;
  update_post_meta($post->ID, "date", $_POST["date"]);
  update_post_meta($post->ID, "bio", $_POST["bio"]);
  update_post_meta($post->ID, "num", $_POST["num"]);
  update_post_meta($post->ID, "category-image-id", $_POST["category-image-id"]);


}

///script of image player
add_action( 'admin_footer', 'add_script' );

function add_script() { ?>
   <script>
     jQuery(document).ready( function($) {
       function ct_media_upload(button_class) {
         var _custom_media = true,
         _orig_send_attachment = wp.media.editor.send.attachment;
         $('body').on('click', button_class, function(e) {
           var button_id = '#'+$(this).attr('id');
           var send_attachment_bkp = wp.media.editor.send.attachment;
           var button = $(button_id);
           _custom_media = true;
           wp.media.editor.send.attachment = function(props, attachment){
             if ( _custom_media ) {
               $('#category-image-id').val(attachment.id);
               $('#category-image-wrapper').html('<img class="custom_media_image" src="" style="margin:0;padding:0;max-height:200;float:none;" />');
               $('#category-image-wrapper .custom_media_image').attr('src',attachment.url).css('display','block');
             } else {
               return _orig_send_attachment.apply( button_id, [props, attachment] );
             }
            }
         wp.media.editor.open(button);
         return false;
       });
     }
     ct_media_upload('.ct_tax_media_button.button'); 
     $('body').on('click','.ct_tax_media_remove',function(){
       $('#category-image-id').val('');
       $('#category-image-wrapper').html('<img class="custom_media_image" src="" style="margin:0;padding:0;max-height:200;float:none;" />');
     });
     // Thanks: http://stackoverflow.com/questions/15281995/wordpress-create-category-ajax-response
     $(document).ajaxComplete(function(event, xhr, settings) {
       var queryStringArr = settings.data.split('&');
       if( $.inArray('action=add-tag', queryStringArr) !== -1 ){
         var xml = xhr.responseXML;
         $response = $(xml).find('term_id').text();
         if($response!=""){
           // Clear the thumb image
           $('#category-image-wrapper').html('');
         }
       }
     });
   });
 </script>
 <?php }


 