<?php

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

// This file has been auto-generated by the Symfony Dependency Injection Component for internal use.
// Returns the private '.service_locator.dRIZDRu' shared service.

return $this->privates['.service_locator.dRIZDRu'] = new \Symfony\Component\DependencyInjection\Argument\ServiceLocator($this->getService, [
    'game' => ['privates', '.errored..service_locator.dRIZDRu.App\\Entity\\Games', NULL, 'Cannot autowire service ".service_locator.dRIZDRu": it references class "App\\Entity\\Games" but no such service exists.'],
], [
    'game' => 'App\\Entity\\Games',
]);