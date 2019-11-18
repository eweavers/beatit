<?php

/**
 * This file has been auto-generated
 * by the Symfony Routing Component.
 */

return [
    false, // $matchHost
    [ // $staticRoutes
        '/gamereqs' => [[['_route' => 'gamereqs_index', '_controller' => 'App\\Controller\\GamereqsController::index'], null, ['GET' => 0], null, true, false, null]],
        '/gamereqs/new' => [[['_route' => 'gamereqs_new', '_controller' => 'App\\Controller\\GamereqsController::new'], null, ['GET' => 0, 'POST' => 1], null, false, false, null]],
        '/games' => [[['_route' => 'games_index', '_controller' => 'App\\Controller\\GamesController::index'], null, ['GET' => 0], null, true, false, null]],
        '/games/new' => [[['_route' => 'games_new', '_controller' => 'App\\Controller\\GamesController::new'], null, ['GET' => 0, 'POST' => 1], null, false, false, null]],
        '/login/fail' => [[['_route' => 'login_fail', '_controller' => 'App\\Controller\\LoginFailController::index'], null, null, null, false, false, null]],
        '/login/success' => [[['_route' => 'login_success', '_controller' => 'App\\Controller\\LoginSuccessController::index'], null, null, null, false, false, null]],
        '/login' => [
            [['_route' => 'app_login', '_controller' => 'App\\Controller\\SecurityController::login'], null, null, null, false, false, null],
            [['_route' => 'homepage', '_controller' => 'AppBundle:Home:index'], null, null, null, false, false, null],
        ],
        '/logout' => [[['_route' => 'app_logout', '_controller' => 'App\\Controller\\SecurityController::logout'], null, null, null, false, false, null]],
    ],
    [ // $regexpList
        0 => '{^(?'
                .'|/game(?'
                    .'|reqs/([^/]++)(?'
                        .'|(*:31)'
                        .'|/edit(*:43)'
                        .'|(*:50)'
                    .')'
                    .'|s/([^/]++)(?'
                        .'|(*:71)'
                        .'|/edit(*:83)'
                        .'|(*:90)'
                    .')'
                .')'
            .')/?$}sDu',
    ],
    [ // $dynamicRoutes
        31 => [[['_route' => 'gamereqs_show', '_controller' => 'App\\Controller\\GamereqsController::show'], ['gamerid'], ['GET' => 0], null, false, true, null]],
        43 => [[['_route' => 'gamereqs_edit', '_controller' => 'App\\Controller\\GamereqsController::edit'], ['gamerid'], ['GET' => 0, 'POST' => 1], null, false, false, null]],
        50 => [[['_route' => 'gamereqs_delete', '_controller' => 'App\\Controller\\GamereqsController::delete'], ['gamerid'], ['DELETE' => 0], null, false, true, null]],
        71 => [[['_route' => 'games_show', '_controller' => 'App\\Controller\\GamesController::show'], ['gameid'], ['GET' => 0], null, false, true, null]],
        83 => [[['_route' => 'games_edit', '_controller' => 'App\\Controller\\GamesController::edit'], ['gameid'], ['GET' => 0, 'POST' => 1], null, false, false, null]],
        90 => [
            [['_route' => 'games_delete', '_controller' => 'App\\Controller\\GamesController::delete'], ['gameid'], ['DELETE' => 0], null, false, true, null],
            [null, null, null, null, false, false, 0],
        ],
    ],
    null, // $checkCondition
];
