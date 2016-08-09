<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Menus Language Lines
    |--------------------------------------------------------------------------
    |
    | The following language lines are used in menu items throughout the system.
    | Regardless where it is placed, a menu item can be listed here so it is easily
    | found in a intuitive way.
    |
    */

    'backend' => [
	
		'sidebar' => [
            'dashboard' => 'Dashboard',
            'general' => 'General',
			'administration' => 'Administration',
			'configuration' => 'Configuration',
			'analytics' => 'Analytics',
			'content' => 'Content',
        ],
		
        'access' => [
            'title' => 'User Management',

            'roles' => [
                'all' => 'All Roles',
                'create' => 'Create Role',
                'edit' => 'Edit Role',
                'management' => 'Role Management',
                'main' => 'Roles',
            ],

            'users' => [
                'all' => 'All Users',
                'change-password' => 'Change Password',
                'create' => 'Create User',
                'deactivated' => 'Deactivated Users',
                'deleted' => 'Deleted Users',
                'edit' => 'Edit User',
                'main' => 'Users',
            ],
        ],
		
		'seo' => [
    		'title' => 'SEO',
    	],
		
		'bi' => [
    		'title' => 'BI',
    	],        
    		
    	'cms' => [
    			'main' => 'CMS',
				'page' => 'Page',				
				'menu' => 'Menu',
				'tags' => 'Tags',
				'categories' => 'Categories',
				'templates' => 'Templates',
				'widgets' => 'Widgets',
    	],
		
		'gallery' => [
    			'title' => 'Gallery',
    	],
		
		'files' => [
    			'title' => 'Files',
    	],
		
		'calendar' => [
    			'title' => 'Calendar',
    	],
		
		'events' => [
    			'title' => 'Events',
    	],
		
		'geo' => [
    			'title' => 'Geo',
    	],
		
		'language' => [
    			'main' => 'Translations',
				'title' => 'Language',				
				'texts' => 'Texts',				
    	],	

		'log-viewer' => [
            'main' => 'Log Viewer',
            'dashboard' => 'Dashboard',
            'logs' => 'Logs',
        ],
    		
    	'backup' => [
    		'title' => 'Backup',
    	],		
		        
    ],

    'language-picker' => [
        'language' => 'Language',
        /**
         * Add the new language to this array.
         * The key should have the same language code as the folder name.
         * The string should be: 'Language-name-in-your-own-language (Language-name-in-English)'.
         * Be sure to add the new language in alphabetical order.
         */
        'langs' => [            
            'en' => 'English',                      
            'pt-BR' => 'Portuguese',
        ],
    ],
];
