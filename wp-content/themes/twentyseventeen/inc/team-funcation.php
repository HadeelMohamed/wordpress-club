
<?php 

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

?>


 