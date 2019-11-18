<?php

/**
 * This file has been auto-generated
 * by the Symfony Routing Component.
 */

return [
    false, // $matchHost
    [ // $staticRoutes
        '/_profiler' => [[['_route' => '_profiler_home', '_controller' => 'web_profiler.controller.profiler::homeAction'], null, null, null, true, false, null]],
        '/_profiler/search' => [[['_route' => '_profiler_search', '_controller' => 'web_profiler.controller.profiler::searchAction'], null, null, null, false, false, null]],
        '/_profiler/search_bar' => [[['_route' => '_profiler_search_bar', '_controller' => 'web_profiler.controller.profiler::searchBarAction'], null, null, null, false, false, null]],
        '/_profiler/phpinfo' => [[['_route' => '_profiler_phpinfo', '_controller' => 'web_profiler.controller.profiler::phpinfoAction'], null, null, null, false, false, null]],
        '/_profiler/open' => [[['_route' => '_profiler_open_file', '_controller' => 'web_profiler.controller.profiler::openAction'], null, null, null, false, false, null]],
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
        '/' => [[['_route' => 'index', '_controller' => 'App\\Controller\\SecurityController::login'], null, null, null, false, false, null]],
    ],
    [ // $regexpList
        0 => '{^(?'
                .'|/_(?'
                    .'|error/(\\d+)(?:\\.([^/]++))?(*:38)'
                    .'|wdt/([^/]++)(*:57)'
                    .'|profiler/([^/]++)(?'
                        .'|/(?'
                            .'|search/results(*:102)'
                            .'|router(*:116)'
                            .'|exception(?'
                                .'|(*:136)'
                                .'|\\.css(*:149)'
                            .')'
                        .')'
                        .'|(*:159)'
                    .')'
                .')'
                .'|/game(?'
                    .'|reqs/([^/]++)(?'
                        .'|(*:193)'
                        .'|/edit(*:206)'
                        .'|(*:214)'
                    .')'
                    .'|s/([^/]++)(?'
                        .'|(*:236)'
                        .'|/edit(*:249)'
                        .'|(*:257)'
                    .')'
                .')'
            .')/?$}sDu',
    ],
    [ // $dynamicRoutes
        38 => [[['_route' => '_twig_error_test', '_controller' => 'twig.controller.preview_error::previewErrorPageAction', '_format' => 'html'], ['code', '_format'], null, null, false, true, null]],
        57 => [[['_route' => '_wdt', '_controller' => 'web_profiler.controller.profiler::toolbarAction'], ['token'], null, null, false, true, null]],
        102 => [[['_route' => '_profiler_search_results', '_controller' => 'web_profiler.controller.profiler::searchResultsAction'], ['token'], null, null, false, false, null]],
        116 => [[['_route' => '_profiler_router', '_controller' => 'web_profiler.controller.router::panelAction'], ['token'], null, null, false, false, null]],
        136 => [[['_route' => '_profiler_exception', '_controller' => 'web_profiler.controller.exception::showAction'], ['token'], null, null, false, false, null]],
        149 => [[['_route' => '_profiler_exception_css', '_controller' => 'web_profiler.controller.exception::cssAction'], ['token'], null, null, false, false, null]],
        159 => [[['_route' => '_profiler', '_controller' => 'web_profiler.controller.profiler::panelAction'], ['token'], null, null, false, true, null]],
        193 => [[['_route' => 'gamereqs_show', '_controller' => 'App\\Controller\\GamereqsController::show'], ['gamerid'], ['GET' => 0], null, false, true, null]],
        206 => [[['_route' => 'gamereqs_edit', '_controller' => 'App\\Controller\\GamereqsController::edit'], ['gamerid'], ['GET' => 0, 'POST' => 1], null, false, false, null]],
        214 => [[['_route' => 'gamereqs_delete', '_controller' => 'App\\Controller\\GamereqsController::delete'], ['gamerid'], ['DELETE' => 0], null, false, true, null]],
        236 => [[['_route' => 'games_show', '_controller' => 'App\\Controller\\GamesController::show'], ['gameid'], ['GET' => 0], null, false, true, null]],
        249 => [[['_route' => 'games_edit', '_controller' => 'App\\Controller\\GamesController::edit'], ['gameid'], ['GET' => 0, 'POST' => 1], null, false, false, null]],
        257 => [
            [['_route' => 'games_delete', '_controller' => 'App\\Controller\\GamesController::delete'], ['gameid'], ['DELETE' => 0], null, false, true, null],
            [null, null, null, null, false, false, 0],
        ],
    ],
    null, // $checkCondition
];
