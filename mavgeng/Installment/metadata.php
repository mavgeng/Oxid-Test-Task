<?php

/**
 * Metadata version
 */
$sMetadataVersion = '2.1';

/**
 * Module information
 */
$aModule = [
    'id'          => 'mavgeng_installment',
    'title'       => [
        'de' => 'Ratenzahlung',
        'en' => 'Installment',
    ],
    'description' => [
        'de' => 'Ratenzahlung',
        'en' => 'Installment',
    ],
    'thumbnail'   => '',
    'version'     => '1.0',
    'author'      => 'Eugene',
    'url'         => 'https://github.com/mavgeng',
    'email'       => 'evgeniy.matveev07@gmail.com',
    'extend'      => [
        \OxidEsales\Eshop\Application\Model\Article::class => \mavgeng\Installment\Model\Article::class,
    ],
    'blocks'      => [
        [
            'template' => 'article_main.tpl',
            'block'    => 'admin_article_main_extended',
            'file'     => 'views/admin/blocks/article_main__admin_article_main_extended.tpl',
            'position' => '1',
        ],
        [
            'template' => 'page/details/inc/productmain.tpl',
            'block'    => 'details_productmain_shortdesc',
            'file'     => 'views/blocks/productmain__details_productmain_shortdesc.tpl',
            'position' => '1',
        ]
    ],
    'settings'    => [
    ],
];
