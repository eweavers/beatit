<?php

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

// This file has been auto-generated by the Symfony Dependency Injection Component for internal use.
// Returns the private 'security.access_map' shared service.

include_once $this->targetDirs[3].'\\vendor\\symfony\\security-http\\AccessMapInterface.php';
include_once $this->targetDirs[3].'\\vendor\\symfony\\security-http\\AccessMap.php';
include_once $this->targetDirs[3].'\\vendor\\symfony\\http-foundation\\RequestMatcherInterface.php';
include_once $this->targetDirs[3].'\\vendor\\symfony\\http-foundation\\RequestMatcher.php';

$this->privates['security.access_map'] = $instance = new \Symfony\Component\Security\Http\AccessMap();

$a = new \Symfony\Component\HttpFoundation\RequestMatcher('^/games/new', NULL, [], [0 => '127.0.0.1']);

$instance->add(new \Symfony\Component\HttpFoundation\RequestMatcher('^/_profiler/', NULL, [], [0 => '127.0.0.1']), [0 => 'ROLE_USER_IP'], NULL);
$instance->add(new \Symfony\Component\HttpFoundation\RequestMatcher('^/login/success', NULL, [], [0 => '127.0.0.1']), [0 => 'ROLE_USER_IP'], NULL);
$instance->add(new \Symfony\Component\HttpFoundation\RequestMatcher('^/games/', NULL, [], [0 => '127.0.0.1']), [0 => 'ROLE_USER'], NULL);
$instance->add($a, [0 => 'ROLE_USER'], NULL);
$instance->add(new \Symfony\Component\HttpFoundation\RequestMatcher('^/games/gameid/edit', NULL, [], [0 => '127.0.0.1']), [0 => 'ROLE_USER'], NULL);
$instance->add($a, [0 => 'ROLE_USER'], NULL);
$instance->add(new \Symfony\Component\HttpFoundation\RequestMatcher('^/gamereqs/', NULL, [], [0 => '127.0.0.1']), [0 => 'ROLE_USER'], NULL);
$instance->add(new \Symfony\Component\HttpFoundation\RequestMatcher('^/gamereqs/new', NULL, [], [0 => '127.0.0.1']), [0 => 'ROLE_USER'], NULL);
$instance->add(new \Symfony\Component\HttpFoundation\RequestMatcher('^/gamereqs/gamerid/edit', NULL, [], [0 => '127.0.0.1']), [0 => 'ROLE_USER'], NULL);
$instance->add(new \Symfony\Component\HttpFoundation\RequestMatcher('^/gamereqs/gamerid', NULL, [], [0 => '127.0.0.1']), [0 => 'ROLE_USER'], NULL);

return $instance;
