<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit7a7c0f4c4d96f6f70147f2bf630a2093
{
    public static $prefixLengthsPsr4 = array (
        'P' => 
        array (
            'PHPMailer\\PHPMailer\\' => 20,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'PHPMailer\\PHPMailer\\' => 
        array (
            0 => __DIR__ . '/..' . '/phpmailer/phpmailer/src',
        ),
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit7a7c0f4c4d96f6f70147f2bf630a2093::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit7a7c0f4c4d96f6f70147f2bf630a2093::$prefixDirsPsr4;

        }, null, ClassLoader::class);
    }
}
