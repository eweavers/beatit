<?php

// This file has been auto-generated by the Symfony Dependency Injection Component for internal use.

if (\class_exists(\ContainerSVxxUaP\srcApp_KernelDevDebugContainer::class, false)) {
    // no-op
} elseif (!include __DIR__.'/ContainerSVxxUaP/srcApp_KernelDevDebugContainer.php') {
    touch(__DIR__.'/ContainerSVxxUaP.legacy');

    return;
}

if (!\class_exists(srcApp_KernelDevDebugContainer::class, false)) {
    \class_alias(\ContainerSVxxUaP\srcApp_KernelDevDebugContainer::class, srcApp_KernelDevDebugContainer::class, false);
}

return new \ContainerSVxxUaP\srcApp_KernelDevDebugContainer([
    'container.build_hash' => 'SVxxUaP',
    'container.build_id' => 'bf092343',
    'container.build_time' => 1574032954,
], __DIR__.\DIRECTORY_SEPARATOR.'ContainerSVxxUaP');