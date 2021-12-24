<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Third Party Services
    |--------------------------------------------------------------------------
    |
    | This file is for storing the credentials for third party services such
    | as Mailgun, Postmark, AWS and more. This file provides the de facto
    | location for this type of information, allowing packages to have
    | a conventional file to locate the various service credentials.
    |
    */

    'mailgun' => [
        'domain' => env('MAILGUN_DOMAIN'),
        'secret' => env('MAILGUN_SECRET'),
        'endpoint' => env('MAILGUN_ENDPOINT', 'api.mailgun.net'),
    ],

    'postmark' => [
        'token' => env('POSTMARK_TOKEN'),
    ],

    'ses' => [
        'key' => env('AWS_ACCESS_KEY_ID'),
        'secret' => env('AWS_SECRET_ACCESS_KEY'),
        'region' => env('AWS_DEFAULT_REGION', 'us-east-1'),
    ],
    'google' => [
        'client_id'     => '791035035899-i3r2ltg47a6r53qtdth58vjbhcq6kdmj.apps.googleusercontent.com',
        'client_secret' => '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',
        'redirect'      => 'https://banloa.123code.net/account/google/callback',
    ],
    'facebook' => [
        'client_id'     => '1052189405532453',
        'client_secret' => '07611613ac13fa876dc409738767d766',
        'redirect'      => 'https://banloa.123code.net/account/facebook/callback',
    ],

];
