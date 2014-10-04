<?php
/**
 * @package     Joomla.Site
 * @subpackage  Templates.protostar
 *
 * @copyright   Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */
defined('_JEXEC') or die;

// Getting params from template
$params = JFactory::getApplication()->getTemplate(true)->params;

$app = JFactory::getApplication();
$doc = JFactory::getDocument();
$this->language = $doc->language;
$this->direction = $doc->direction;

// Detecting Active Variables
$option = $app->input->getCmd('option', '');
$view = $app->input->getCmd('view', '');
$layout = $app->input->getCmd('layout', '');
$task = $app->input->getCmd('task', '');
$itemid = $app->input->getCmd('Itemid', '');
$sitename = $app->getCfg('sitename');

if($task == "edit" || $layout == "form") {
    $fullWidth = 1;
} else {
    $fullWidth = 0;
}
// Add JavaScript Frameworks
JHtml::_('bootstrap.framework');
$doc->addScript('templates/' . $this->template . '/js/horizental/sly.js');
$doc->addScript('templates/' . $this->template . '/js/horizental/horizontal.js');
$doc->addScript('templates/' . $this->template . '/js/layerSlider/layerslider.kreaturamedia.jquery.js');
$doc->addScript('templates/' . $this->template . '/js/layerSlider/greensock.js');
$doc->addScript('templates/' . $this->template . '/js/layerSlider/layerslider.transitions.js');

// Add Stylesheets
$doc->addStyleSheet('templates/' . $this->template . '/css/layerslider.css', 'text/css', 'all', array('id' => 'layerslider-css'));
$doc->addStyleSheet('//fonts.googleapis.com/css?family=Open+Sans%3A300italic%2C400italic%2C600italic%2C300%2C400%2C600&#038;subset=latin%2Clatin-ext%2Ccyrillic%2Ccyrillic-ext&#038;ver=4.0', 'text/css', 'all', array('id' => 'open-sans-css'));
$doc->addStyleSheet('templates/' . $this->template . '/fonts/genericons.css', 'text/css', 'all', array('id' => 'genericons-css'));
$doc->addStyleSheet('templates/' . $this->template . '/style.css', 'text/css', 'all', array('id' => 'genericons-css'));
$doc->addStyleSheet('templates/' . $this->template . '/css/bootstrap.css', 'text/css', 'all', array('id' => 'genericons-css'));
$doc->addStyleSheet('templates/' . $this->template . '/css/bootstrap.css', 'text/css', 'all', array('id' => 'genericons-css'));
$doc->addStyleSheet('http://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.css?ver=4.0.3', 'text/css', 'all', array('id' => 'genericons-css'));
$doc->addStyleSheet('templates/' . $this->template . '/css/chosen.min.css', 'text/css', 'all', array('id' => 'genericons-css'));
$doc->addStyleSheet('templates/' . $this->template . '/css/flexslider.css', 'text/css', 'all', array('id' => 'genericons-css'));
$doc->addStyleSheet('templates/' . $this->template . '/css/custom.css', 'text/css', 'all', array('id' => 'genericons-css'));
$doc->addStyleSheet('templates/' . $this->template . '/css/horizontal.css', 'text/css', 'all', array('id' => 'genericons-css'));
$doc->addStyleSheet('templates/' . $this->template . '/css/bootstrap-responsive.css', 'text/css', 'all', array('id' => 'genericons-css'));

// Load optional RTL Bootstrap CSS
//JHtml::_('bootstrap.loadCss', false, $this->direction);
// Add current user information
$user = JFactory::getUser();

// Adjusting content width
if($this->countModules('position-7') && $this->countModules('position-8')) {
    $span = "span6";
} elseif($this->countModules('position-7') && !$this->countModules('position-8')) {
    $span = "span9";
} elseif(!$this->countModules('position-7') && $this->countModules('position-8')) {
    $span = "span9";
} else {
    $span = "span12";
}

// Logo file or site title param
if($this->params->get('logoFile')) {
    $logo = '<img src="' . JUri::root() . $this->params->get('logoFile') . '" alt="' . $sitename . '" />';
} elseif($this->params->get('sitetitle')) {
    $logo = '<span class="site-title" title="' . $sitename . '">' . htmlspecialchars($this->params->get('sitetitle')) . '</span>';
} else {
    $logo = '<span class="site-title" title="' . $sitename . '">' . $sitename . '</span>';
}
?>
<!DOCTYPE html>
<!-- saved from url=(0040)http://demo.designinvento.net/classiads/ -->
<html lang="en-US" class="csstransforms csstransforms3d csstransitions js no-touch" id="ls-global"><!--<![endif]--><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
        <title>CraigsCoin Ad Viewer</title>
    <jdoc:include type="head" />
    <!--[if lt IE 9]>
        <link rel='stylesheet' id='classiads-ie-css'  href='templates/<?= $this->template; ?>/css/ie.css' type='text/css' media='all' />
    <![endif]-->
    <style type="text/css" class="redux-typography">h1, h1 a, h1 span{color:#3f3d59;font-size:38.5px;font-family:Roboto Slab;font-weight:700;line-height:40px;}h2, h2 a, h2 span{color:#444;font-size:31.5px;font-family:Raleway;font-weight:800;line-height:40px;}h3, h3 a, h3 span{color:#444;font-size:18px;font-family:Raleway;font-weight:700;line-height:40px;}h4, h4 a, h4 span{color:#444;font-size:18px;font-family:Raleway;font-weight:700;line-height:40px;}h5, h5 a, h5 span{color:#484848;font-size:14px;font-family:Roboto;font-weight:300;line-height:40px;}h6, h6 a, h6 span{color:#484848;font-size:11.9px;font-family:Roboto;font-weight:300;line-height:40px;}.ad-detail-half-box .ad-detail-info,span.ad-page-price,html, body, div, applet, object, iframe p, blockquote, a, abbr, acronym, address, big, cite, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio, video{color:#888888;font-size:14px;font-family:Lato;font-weight:Normal;line-height:24px;}.single-slider .single-ad-price,.ad-title h2 a,.ad-title h2,.ad-title .ad-page-price a,.widget-ad-list-content-title a,.ad-detail-info .description,.post-title a,.three-tabs li a{color:#444;font-size:14px;font-family:Raleway;font-weight:Normal;line-height:24px;}</style><style type="text/css">h3,.detail-cat a { color: #444444; } a, #navbar .main_menu .menu li.current_page_item .sub-menu a:hover, #navbar .main_menu .menu li.current_page_item .children a:hover, #navbar .main_menu .menu li.current-menu-item  .children a:hover, .main_menu ul li ul.children li a:hover, .main_menu ul li ul.sub-menu li a:hover, .main_menu ul li ul.children li.current_page_item a, .main_menu ul li ul.children li.current-menu-item a, .main_menu .menu li.current_page_item .sub-menu a:hover, .main_menu .menu li.current-menu-item  .sub-menu a:hover, .main_menu .menu li.current_page_item .children a:hover, .main_menu .menu li.current-menu-item  .children a:hover, ul.custom-tabs li a.current, h4.trigger:hover, h4.trigger.active:hover, h4.trigger.active,#navbar .main_menu .menu li .sub-menu li.current_page_item a, #navbar .main_menu .menu li .children li.current_page_item a, #navbar .main_menu .menu li .children li.current_page_item a:hover, #navbar .main_menu .menu li .children li .current-menu-item a:hover { color: #666666; } .quicktabs-tabs .grid-feat-ad-style a:hover, .quicktabs-tabs .list-feat-ad-style a:hover, .quicktabs-tabs .grid-feat-ad-style a.current, .quicktabs-tabs .list-feat-ad-style a.current { background-color: #666666; } .woocommerce ul.products li.product a:hover img, .woocommerce-page ul.products li.product a:hover img, .woocommerce #content div.product div.images a:hover img, .woocommerce div.product div.images a:hover img, .woocommerce-page #content div.product div.images a:hover img, .woocommerce-page div.product div.images a:hover img { border: 5px solid #666666; } #contact-form #contactName:focus, #contact-form #author:focus, #contact-form #email:focus, #contact-form #url:focus, #contact-form #subject:focus, #contact-form #commentsText:focus, #contact-form #humanTest:focus { border: 1px solid #666666; } .main_menu > ul > li.current-menu-item > a,body.category .custom-widget .cat-widget-content li:hover span,body.category .custom-widget .cat-widget-content ul li:hover a,.custom-cat-widget .custom-widget .cat-widget-content li:hover span,.custom-cat-widget .custom-widget .cat-widget-content ul li:hover a,.marker-info-price,.author-avatar-edit-post .button-ag span.button-inner,.ad-title .ad-page-price a,.ad-page-price,.site-info a,.author-btn .button-ag span,.ads-tags a:hover,#ads-homepage ul.tabs li a:hover, #ads-homepage ul.tabs li a.current,.category-content li:hover a,.category-content li:hover span,.ad-box .add-price,.geo-location-button .on .fa, .geo-location-button .fa:hover,footer .jw-twitter li a,.publish-ad-button.login-page p a, a:hover, a:active, .main_menu > ul >  li:hover > a, .main_menu .menu li.current_page_item > a, .main_menu .menu li.current-menu-item > a, .main_menu ul li ul.children li:hover a, .main_menu ul li ul.sub-menu li:hover a { color: #e96969 ; } section#locations .location a:hover,section#locations .location a:hover i,.ad-title a:hover,.top-email,.custom-cat-widget .custom-widget .cat-widget-content ul li:hover i,footer .block-content .menu-footer-container ul li a:hover, #register-login-block-top li.first a:hover,body.category .custom-widget .cat-widget-content li:hover .category-icon-box i{ color: #e96969 !important; } .callout .view-more-btn,.callout .view-more-btn .more-btn-inner,.callout,.marker-content .close, #contact-ad-owner .close,.backtop:hover,#register-login-block-top li.last:hover,.author-profile-ad-details .button-ag:hover,h4.trigger.active,.login-title,.single-slider .single-ad-price,.bottom-social-icons i:hover,.detail-cat .category-icon .category-icon-box,.ad-box:hover .post-title-cat,.view-more-btn:hover .more-btn-inner,.category-box:hover .cat-title a,.h2-seprator,.h3-seprator,.h3-seprator-sidebar,.tagcloud a:hover, .pagination span.current,.pagination a:hover,#advanced-search-widget-version2 .views-exposed-widget .btn-primary:hover,.top-social-icons a:hover { background-color: #e96969 !important; } .main_menu > ul > li.current-menu-item > a,blockquote,.main_menu ul li ul.children li:first-child, .main_menu ul li ul.sub-menu li:first-child,.tagcloud a:hover,.ad-box:hover .post-title-cat,.main_menu > ul > li > a:hover,#register-login-block-top .login a:hover,.pagination span.current,.pagination a:hover,#carousel-prev:hover,#carousel-next:hover, #advanced-search-widget-version2 .views-exposed-widget .btn-primary:hover{ border-color:#e96969; } .marker-info-link a,#new-post a.btn, input[type='submit'], .woocommerce span.onsale, .woocommerce-page span.onsale, .products li a.button, .woocommerce div.product form.cart .button, .woocommerce-page div.product form.cart .button, .woocommerce #content div.product form.cart .button, .woocommerce-page #content div.product form.cart .button, .woocommerce button.button, .woocommerce-page button.button, .woocommerce input.button, .woocommerce-page input.button, .woocommerce #respond input#submit, .woocommerce-page #respond input#submit, .woocommerce #content input.button, .woocommerce-page #content input.button, #top-cart .button, form.cart .button-alt, .woocommerce #content input.button, .woocommerce #respond input#submit, .woocommerce a.button, .woocommerce button.button, .woocommerce input.button, .woocommerce-page #content input.button, .woocommerce-page #respond input#submit, .woocommerce-page a.button, .woocommerce-page button.button, .woocommerce-page input.button, .bbp-submit-wrapper button.button, .woocommerce .quantity .minus, .woocommerce-page .quantity .minus, .woocommerce #content .quantity .minus, .woocommerce-page #content .quantity .minus, .woocommerce .quantity .plus, .woocommerce-page .quantity .plus, .woocommerce #content .quantity .plus, .woocommerce-page #content .quantity .plus, form.cart .plus, form.cart .minus, .product-quantity .plus, .product-quantity .minus, .woocommerce .quantity input.qty, .woocommerce-page .quantity input.qty, .woocommerce #content .quantity input.qty, .woocommerce-page #content .quantity input.qty, form.cart input.qty, form.cart input.qty, .product-quantity input.qty, .pricing-plans a.btn, #edit-submit, #navbar .btn-navbar { background: #444444!important; }  .woocommerce ul.products li.product .price, .woocommerce-page ul.products li.product .price { color: #444444; } .ads-tags a:hosver { background: #ecf0f1!important; color: #444444!important; } .marker-info-link a:hover,#new-post a.btn:hover, input[type='submit']:hover, .products li a.button:hover, .woocommerce div.product form.cart .button:hover, .woocommerce-page div.product form.cart .button:hover, .woocommerce #content div.product form.cart .button:hover, .woocommerce-page #content div.product form.cart .button:hover, .woocommerce button.button:hover, .woocommerce-page button.button:hover, .woocommerce input.button:hover, .woocommerce-page input.button:hover, .woocommerce #respond input#submit:hover, .woocommerce-page #respond input#submit:hover, .woocommerce #content input.button:hover, .woocommerce-page #content input.button:hover, #top-cart .button:hover, form.cart .button-alt:hover, .woocommerce #content input.button:hover, .woocommerce #respond input#submit:hover, .woocommerce a.button:hover, .woocommerce button.button:hover, .woocommerce input.button:hover, .woocommerce-page #content input.button:hover, .woocommerce-page #respond input#submit:hover, .woocommerce-page a.button:hover, .woocommerce-page button.button:hover, .woocommerce-page input.button:hover, .bbp-submit-wrapper button.button:hover, .woocommerce .quantity .minus:hover, .woocommerce-page .quantity .minus:hover, .woocommerce #content .quantity .minus:hover, .woocommerce-page #content .quantity .minus:hover,.woocommerce .quantity .plus:hover, .woocommerce-page .quantity .plus:hover, .woocommerce #content .quantity .plus:hover, .woocommerce-page #content .quantity .plus:hover, form.cart .plus:hover, form.cart .minus:hover, .product-quantity .plus:hover, .product-quantity .minus:hover, .pricing-plans a.btn:hover, #edit-submit:hover, #navbar .btn-navbar:hover { background: #e96969!important; } </style></head>
</head>

<body class="home page page-id-639 page-template page-template-template-homepage-v1-php single-author">

    <section id="top-menu-block">

        <div class="container">
            <section id="register-login-block-top">
                <ul class="ajax-register-links inline">
                </ul>
            </section>

<!--            <div class="top-call">
                <span class="call-head">Call us :</span>
                <span class="call-number">+444-8888-444 </span>
                <span class="call-head">Email Address :</span>
                <span class="call-number top-email">Support@designinvento.com</span>
            </div>-->

        </div>

    </section>

    <header id="navbar">
        <div class="container">
            <a title="Home" href="/" class="logo pull-left">
                <img alt="Logo" style="height: 79px;" src="templates/<?= $this->template; ?>/images/logo.png">
            </a>
            <div class="main_menu" id="version-two-menu">
                <jdoc:include type="modules" name="top-menu" style="none" />
            </div>
        </div>
    </header>
    <?php if(JURI::current() == JURI::base() && JRequest::getVar('view', null) == 'noshow'): ?>
        <section class="clearfix" id="layerslider">
            <script type="text/javascript">var lsjQuery = jQuery;</script>
            <script type="text/javascript"> lsjQuery(document).ready(function () {
                    if(typeof lsjQuery.fn.layerSlider == "undefined") {
                        lsShowNotice('layerslider_1', 'jquery');
                    } else {
                        lsjQuery("#layerslider_1").layerSlider({responsive: false, responsiveUnder: 1280, layersContainer: 1280, skin: 'noskin', globalBGColor: 'transparent', hoverPrevNext: false, autoPlayVideos: false, yourLogoStyle: 'left: 10px; top: 10px;', cbInit: function (element) {
                            }, cbStart: function (data) {
                            }, cbStop: function (data) {
                            }, cbPause: function (data) {
                            }, cbAnimStart: function (data) {
                            }, cbAnimStop: function (data) {
                            }, cbPrev: function (data) {
                            }, cbNext: function (data) {
                            }, skinsPath: 'http://demo.designinvento.net/classiads/wp-content/plugins/LayerSlider/static/skins/'})
                    }
                });
            </script>
            <div class="ls-wp-fullwidth-container" style="height: 600px;"><div class="ls-wp-fullwidth-helper" style="height: 600px; width: 1349px; left: 0px;"><div style="width: 1349px; height: 600px; margin: 0px auto; visibility: visible;" class="ls-wp-container ls-container ls-noskin" id="layerslider_1"><div class="ls-inner" style="background-color: transparent; width: 1349px; height: 600px;"><div class="ls-lt-container" style="width: 1349px; height: 600px; display: block;"><div class="ls-curtiles" style="overflow: hidden;"><img src="http://demo.designinvento.net/classiads/wp-content/uploads/2014/08/slide-bg.png" style="width: 1600px; height: 632px; margin-left: -125.5px; margin-top: -16px;"></div><div class="ls-nexttiles"><div class="ls-lt-tile" style="width: 1349px; height: 600px; overflow: visible;"><div class="ls-nexttile" style="top: -0.05px; left: 0px; opacity: 0.1103; transform: matrix(1.17794, 0, 0, 1.17794, 0, 0);"><img src="http://demo.designinvento.net/classiads/wp-content/uploads/2014/08/slide-bgg.png" style="width: 1600px; height: 600px; margin-left: -125.5px; margin-top: 0px;"></div></div></div></div><div data-ls="transition2d:1;" class="ls-slide ls-active" style="width: 1349px; height: 600px; visibility: visible; display: none; left: 0px; right: auto; top: 0px; bottom: auto;"><img alt="Slide background" class="ls-bg ls-preloaded" data-src="http://demo.designinvento.net/classiads/wp-content/uploads/2014/08/slide-bg.png" src="http://demo.designinvento.net/classiads/wp-content/uploads/2014/08/slide-bg.png" style="padding: 0px; border-width: 0px; width: 1600px; height: 632px; margin-left: -125.5px; margin-top: -16px; visibility: hidden;"><div class="ls-gpuhack" style="width: auto; height: auto; padding: 0px; border-width: 0px; left: 34.5px; top: 0px;"></div><img alt="" data-src="http://designinvento.com/classiads/wp-content/uploads/2014/08/vamera.png" src="http://designinvento.com/classiads/wp-content/uploads/2014/08/vamera.png" data-ls="offsetxin:0;easingin:easeInOutQuart;scalexin:0.7;scaleyin:0.7;offsetxout:-800;durationout:1000;" style="top: 124px; left: 822.5px; white-space: nowrap; width: 403px; height: 308px; padding: 0px; border-width: 0px; margin-left: 0px; margin-top: 0px; transform-origin: 50% 50% 0px; transform: translate3d(-452.951px, 0px, 0px); opacity: 0.433812; visibility: visible; filter: none;" class="ls-l ls-preloaded"><p data-ls="durationin:2000;delayin:1500;easingin:easeOutElastic;rotatexin:-90;transformoriginin:50% top 0;durationout:1000;" style="top: 220px; left: 89.5px; font-weight: 900; width: auto; height: 40px; padding: 0px 10px; font-family: Raleway; font-size: 48px; line-height: 60px; color: rgb(255, 255, 255); border-radius: 3px; white-space: nowrap; border-width: 0px; margin-left: 0px; margin-top: 0px; transform-origin: 50% 50% 0px; transform: translate3d(-45.2951px, 0px, 0px); opacity: 0.433812; visibility: visible; filter: none;" class="ls-l">SELL ANYTHING YOU WANT</p><p data-ls="offsetxin:0;durationin:2000;delayin:2000;easingin:easeOutElastic;rotatexin:90;transformoriginin:50% top 0;offsetxout:-400;" style="top: 339px; left: 98.5px; font-weight: 500; font-family: Raleway; font-size: 18px; color: rgb(255, 255, 255); white-space: nowrap; width: 100px; height: auto; line-height: 22px; padding: 0px; border-width: 0px; margin-left: 0px; margin-top: 0px; transform-origin: 50% 50% 0px; transform: translate3d(-226.475px, 0px, 0px); opacity: 0.433812; visibility: visible; filter: none;" class="ls-l">Lorem Ipsum dolor sit amet commodo desin enim stoleinte</p><h1 style="top: 287px; left: 99.5px; font-weight: 900; padding: 0px 20px; font-family: Raleway; font-size: 24px; line-height: 40px; color: rgb(68, 68, 68); background: none repeat scroll 0% 0% rgb(255, 255, 255); white-space: nowrap; width: auto; height: auto; border-width: 0px; margin-left: 0px; margin-top: 0px; transform-origin: 50% 50% 0px; transform: translate3d(-45.2951px, 0px, 0px); opacity: 0.433812; visibility: visible; filter: none;" class="ls-l">NEW STUFF - OLD STUFF - SERVICES - LOOKING FOR</h1><img alt="" data-src="http://demo.designinvento.net/classiads/wp-content/uploads/2014/08/discount.png" src="http://demo.designinvento.net/classiads/wp-content/uploads/2014/08/discount.png" data-ls="delayin:1000;" style="top: 96px; left: 772.5px; white-space: nowrap; width: 135px; height: 135px; padding: 0px; border-width: 0px; margin-left: 0px; margin-top: 0px; transform-origin: 50% 50% 0px; transform: translate3d(-45.2951px, 0px, 0px); opacity: 0.433812; visibility: visible; filter: none;" class="ls-l ls-preloaded"><p style="top: 372px; left: 100.5px; font-weight: 500; font-family: Raleway; font-size: 18px; color: rgb(255, 255, 255); white-space: nowrap; width: 100px; height: auto; line-height: 22px; padding: 0px; border-width: 0px; margin-left: 0px; margin-top: 0px; transform-origin: 50% 50% 0px; transform: translate3d(-45.2951px, 0px, 0px); opacity: 0.433812; visibility: visible; filter: none;" class="ls-l">snoliterl benjimun stokie doll dolor sit velen</p></div><div data-ls=" transition2d: all;" class="ls-slide ls-animating" style="width: 0px; height: 600px; visibility: visible; display: none; left: auto; right: 0px; top: 0px; bottom: auto;"><img alt="Slide background" class="ls-bg ls-preloaded" data-src="http://demo.designinvento.net/classiads/wp-content/uploads/2014/08/slide-bgg.png" src="http://demo.designinvento.net/classiads/wp-content/uploads/2014/08/slide-bgg.png" style="padding: 0px; border-width: 0px; width: 1600px; height: 600px; margin-left: -125.5px; margin-top: 0px; visibility: hidden;"><div class="ls-gpuhack" style="width: auto; height: auto; padding: 0px; border-width: 0px; left: 34.5px; top: 0px;"></div><img alt="" data-src="http://demo.designinvento.net/classiads/wp-content/uploads/2014/08/lcd.png" src="http://demo.designinvento.net/classiads/wp-content/uploads/2014/08/lcd.png" data-ls="easingin:easeOutQuart;" style="top: 140px; left: 754.5px; white-space: nowrap; width: 473px; height: 267px; padding: 0px; border-width: 0px; margin-left: 0px; margin-top: 0px; transform-origin: 50% 50% 0px; transform: translate3d(-80px, 0px, 0px); opacity: 1; visibility: hidden; filter: none;" class="ls-l ls-preloaded"><p style="top: 232px; left: 104.5px; font-weight: 900; font-family: Raleway; font-size: 48px; color: rgb(68, 68, 68); white-space: nowrap; width: 100px; height: auto; line-height: 58px; padding: 0px; border-width: 0px; margin-left: 0px; margin-top: 0px; transform-origin: 50% 50% 0px; transform: translate3d(-80px, 0px, 0px); opacity: 1; visibility: hidden; filter: none;" class="ls-l">100% <span style="color:#e96969">ORIGINAL STUFF</span></p><p style="top: 290px; left: 103.5px; font-weight: 900; font-family: Raleway; font-size: 24px; color: rgb(68, 68, 68); white-space: nowrap; width: 100px; height: auto; line-height: 29px; padding: 0px; border-width: 0px; margin-left: 0px; margin-top: 0px; transform-origin: 50% 50% 0px; transform: translate3d(-80px, 0px, 0px); opacity: 1; visibility: hidden; filter: none;" class="ls-l">No Expensive - Easy to use - Quality Guaranteed</p><a style="top: 336px; left: 104.5px; display: block; margin-left: 0px; margin-top: 0px; transform-origin: 50% 50% 0px; transform: translate3d(-80px, 0px, 0px); opacity: 1; visibility: hidden; filter: none;" class="ls-l" target="_self" href="#"><h1 style="padding: 0px 20px; font-family: Raleway; font-size: 16px; line-height: 40px; color: rgb(255, 255, 255); background: none repeat scroll 0% 0% rgb(68, 68, 68); white-space: nowrap; width: auto; height: auto; border-width: 0px;">Get Started</h1></a><img alt="" data-src="http://demo.designinvento.net/classiads/wp-content/uploads/2014/08/mobiles.png" src="http://demo.designinvento.net/classiads/wp-content/uploads/2014/08/mobiles.png" data-ls="delayin:500;easingin:easeInOutBack;" style="top: 200px; left: 744.5px; white-space: nowrap; width: 373px; height: 246px; padding: 0px; border-width: 0px; margin-left: 0px; margin-top: 0px; transform-origin: 50% 50% 0px; transform: translate3d(-80px, 0px, 0px); opacity: 1; visibility: hidden; filter: none;" class="ls-l ls-preloaded"><img alt="" data-src="http://demo.designinvento.net/classiads/wp-content/uploads/2014/08/discount.png" src="http://demo.designinvento.net/classiads/wp-content/uploads/2014/08/discount.png" data-ls="delayin:700;" style="top: 111px; left: 744.5px; white-space: nowrap; width: 135px; height: 135px; padding: 0px; border-width: 0px; margin-left: 0px; margin-top: 0px; transform-origin: 50% 50% 0px; transform: translate3d(-80px, 0px, 0px); opacity: 1; visibility: hidden; filter: none;" class="ls-l ls-preloaded"></div><div data-ls="transition2d:1;" class="ls-slide" style="width: 0px; height: 600px; left: 0px; right: auto; top: 0px; bottom: auto; visibility: visible; display: none;"><img alt="Slide background" class="ls-bg ls-preloaded" data-src="http://demo.designinvento.net/classiads/wp-content/uploads/2014/08/slide-bggg.png" src="http://demo.designinvento.net/classiads/wp-content/uploads/2014/08/slide-bggg.png" style="padding: 0px; border-width: 0px; width: 1600px; height: 600px; margin-left: -125.5px; margin-top: 0px; visibility: hidden;"><div class="ls-gpuhack" style="width: auto; height: auto; padding: 0px; border-width: 0px; left: 34.5px; top: 0px;"></div><p data-ls="offsetxin:0;durationin:2000;delayin:100;easingin:easeOutElastic;rotatexin:90;transformoriginin:50% top 0;offsetxout:-600;" style="top: 218px; left: 400.5px; font-weight: 900; font-family: Raleway; font-size: 48px; color: rgb(255, 255, 255); white-space: nowrap; filter: none; width: 100px; height: auto; line-height: 58px; padding: 0px; border-width: 0px; margin-left: 0px; margin-top: 0px; transform-origin: 50% 50% 0px; transform: translate3d(-600px, 0px, 0px); opacity: 1; visibility: hidden;" class="ls-l">WELCOME TO <span style="color:#e96969">CLASSIADS</span></p><p data-ls="offsetxin:0;durationin:2000;delayin:150;easingin:easeOutElastic;rotatexin:90;transformoriginin:50% top 0;offsetxout:-600;" style="top: 285px; left: 565.5px; font-weight: 900; font-family: Raleway; font-size: 32px; color: rgb(68, 68, 68); white-space: nowrap; filter: none; width: 100px; height: auto; line-height: 39px; padding: 0px; border-width: 0px; margin-left: 0px; margin-top: 0px; transform-origin: 50% 50% 0px; transform: translate3d(-600px, 0px, 0px); opacity: 1; visibility: hidden;" class="ls-l">MAKE AN AD FREE</p></div><div class="ls-circle-timer" style="display: none;"><div class="ls-ct-left"><div class="ls-ct-rotate" style="top: 0.05px; transform: matrix(1, 0, 0, 1, 0, 0);"><div class="ls-ct-hider"><div class="ls-ct-half"></div></div></div></div><div class="ls-ct-right"><div class="ls-ct-rotate" style="top: 0px; transform: matrix(1, 0, 0, 1, 0, 0);"><div class="ls-ct-hider"><div class="ls-ct-half"></div></div></div></div><div class="ls-ct-center"></div></div></div><div style="z-index: -1; display: none;" class="ls-loading-container"><div class="ls-loading-indicator"></div></div><a href="#" class="ls-nav-prev" style="visibility: visible;"></a><a href="#" class="ls-nav-next" style="visibility: visible;"></a><div class="ls-bottom-nav-wrapper" style="visibility: visible;"><a href="#" class="ls-nav-start ls-nav-start-active"></a><span class="ls-bottom-slidebuttons"><a href="#" class="ls-nav-active"></a><a href="#" class=""></a><a href="#" class=""></a><div class="ls-thumbnail-hover" style="width: 100px; height: 60px;"><div class="ls-thumbnail-hover-inner" style="visibility: hidden; display: block;"><div class="ls-thumbnail-hover-bg"></div><div class="ls-thumbnail-hover-img" style="width: 100px; height: 60px;"><img style="height: 60px;"></div><span></span></div></div></span><a href="#" class="ls-nav-stop"></a></div><div class="ls-shadow"></div></div></div></div>
            <script type="text/javascript">
                jQuery(document).ready(function ($) {
                    jQuery("#advance-search-slider").slider({
                        range: "min",
                        value: 500,
                        min: 1,
                        max: 1000,
                        slide: function (event, ui) {
                            jQuery("#geo-radius").val(ui.value);
                            jQuery("#geo-radius-search").val(ui.value);

                            jQuery(".geo-location-switch").removeClass("off");
                            jQuery(".geo-location-switch").addClass("on");
                            jQuery("#geo-location").val("on");



                        }
                    });
                    jQuery("#geo-radius").val(jQuery("#advance-search-slider").slider("value"));
                    jQuery("#geo-radius-search").val(jQuery("#advance-search-slider").slider("value"));

                    jQuery('.geo-location-button .fa').click(function ()
                    {

                        if(jQuery('.geo-location-switch').hasClass('off'))
                        {
                            jQuery(".geo-location-switch").removeClass("off");
                            jQuery(".geo-location-switch").addClass("on");
                            jQuery("#geo-location").val("on");



                        } else {
                            jQuery(".geo-location-switch").removeClass("on");
                            jQuery(".geo-location-switch").addClass("off");
                            jQuery("#geo-location").val("off");
                        }

                    });

                });
            </script>
            <div class="container search-bar">
                <div class="home-search" id="advanced-search-widget-version2" style="opacity: 1;">
                    <div class="container">
                    </div>
                </div>
            </div>
        </section>
    <?php endif; ?>
    <section id="categories-homepage">
        <div class="container">
            <?php if($this->countModules('right-position-1') && in_array(JRequest::getVar('view', null), array('category', 'article'))): ?>
                <div class="span8 first">
                    <jdoc:include type="message" />
                    <jdoc:include type="component" />
                    <jdoc:include type="modules" name="position-2" style="none" />
                    <?php if(JURI::current() == JURI::base()): ?>
                        <jdoc:include type="modules" name="position-3" style="xhtml" />
                    <?php endif; ?>
                </div>
                <div class="span4">
                    <jdoc:include type="modules" name="right-position-1" style="craigs" />
                </div>
            <?php else: ?>
                <jdoc:include type="message" />
                <jdoc:include type="component" />
                <jdoc:include type="modules" name="position-2" style="none" />
                <?php if(JURI::current() == JURI::base()): ?>
                    <jdoc:include type="modules" name="position-3" style="xhtml" />
                <?php endif; ?>
            <?php endif; ?>
        </div>
        <div class="clearfix"></div>
    </section>
    <footer>

        <div class="container">

            <div class="full">

                <div class="span3 first">
                    <h4 class="block-title">ABOUT</h4>
                    <div class="block-content clearfix">
                        <div class="textwidget">
                            <jdoc:include type="modules" name="about" style="none" />
                        </div>
                    </div>
                </div>
                <div class="span3 first">

                </div>
                <div class="span3 first">
                </div>
                <div class="span3 first">
                    <h4 class="block-title">LINKS</h4>
                    <div class="block-content clearfix">
                        <div class="menu-footer-container">
                            <jdoc:include type="modules" name="web-links" style="none" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <script type='text/javascript' src='templates/<?= $this->template; ?>/js/functions.js?ver=2014-07-18'></script>
    <script type='text/javascript' src='templates/<?= $this->template; ?>/js/menu.js?ver=2014-07-18'></script>
    <script type='text/javascript' src='templates/<?= $this->template; ?>/js/bootstrap.min.js?ver=2014-07-18'></script>
    <script type='text/javascript' src='templates/<?= $this->template; ?>/js/chosen.jquery.min.js?ver=2014-07-18'></script>
    <script type='text/javascript' src='templates/<?= $this->template; ?>/js/jquery.isotope.min.js?ver=2014-07-18'></script>
    <script type='text/javascript' src='https://maps.googleapis.com/maps/api/js?v=3.exp&#038;sensor=false&#038;ver=2014-07-18'></script>
    <script type='text/javascript' src='templates/<?= $this->template; ?>/js/gmap3.min.js?ver=2014-07-18'></script>
    <script type='text/javascript' src='templates/<?= $this->template; ?>/js/gmap3.infobox.js?ver=2014-07-18'></script>
    <script type='text/javascript' src='//code.jquery.com/ui/1.10.4/jquery-ui.js?ver=2014-07-18'></script>
    <script type='text/javascript' src='templates/<?= $this->template; ?>/js/jquery.tools.min.js?ver=2014-07-18'></script>
    <script type='text/javascript' src='templates/<?= $this->template; ?>/js/modernizr.touch.js?ver=2014-07-18'></script>
    <script type='text/javascript' src='templates/<?= $this->template; ?>/js/jquery.ui.touch-punch.min.js?ver=2014-07-18'></script>
    <script type='text/javascript' src='templates/<?= $this->template; ?>/js/custom.js?ver=2014-07-18'></script>
    <script type='text/javascript' src='templates/<?= $this->template; ?>/js/jquery.carouFredSel-6.2.1-packed.js?ver=4.0'></script>
</body>
</html>