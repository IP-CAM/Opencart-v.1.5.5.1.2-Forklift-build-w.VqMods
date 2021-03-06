<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, minimum-scale=1, initial-scale=1, maximum-scale=4"/>
    <meta name="format-detection" content="telephone=no">
    <title><?php echo $title; ?></title>
    <base href="<?php echo $base; ?>"/>
    <?php if ($description) { ?>
    <meta name="description" content="<?php echo $description; ?>"/>
    <?php } ?>
    <?php if ($keywords) { ?>
    <meta name="keywords" content="<?php echo $keywords; ?>"/>
    <?php } ?>
	<meta name="mailru-domain" content="NJi0YY1Q1pgHNIZY" />
    <?php if ($icon) { ?>
    <link href="<?php echo $icon; ?>" rel="icon"/>
    <?php } ?>
    <meta name="yandex-verification" content="56ce1c71d7e384fd"/>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,400i,600,700&amp;subset=cyrillic"
          rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
          rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="catalog/view/theme/forklift/css/swiper.css"/>
    <link rel="stylesheet" type="text/css" href="catalog/view/theme/forklift/css/magnific-popup.css"/>
    <link rel="stylesheet" type="text/css" href="catalog/view/theme/forklift/css/style.css"/>
    <?php foreach ($styles as $style) { ?>
    <link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>"
          media="<?php echo $style['media']; ?>"/>
    <?php } ?>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="catalog/view/theme/forklift/js/components/jquery/jquery.js"></script>
    <?php echo $google_analytics; ?>

    <script>
        window.urlShowAllModels = "";
        window.utils = {};
        window.utils.logo = "<?php echo $logo; ?>";
        window.utils.address = "<?php echo $this->config->get('config_address'); ?>";
        window.utils.phone = "<?php echo $this->config->get('config_telephone'); ?>";
        window.utils.email = "<?php echo $this->config->get('config_email'); ?>";
        window.utils.topMenu = {
            links: [
                {
                    name: "<?php echo $text_home; ?>",
                    href: "<?php echo $home; ?>"
                },
                {
                    name: "Контакты",
                    href: "index.php?route=information/information&information_id=5"
                },
                {
                    name: "Каталог оборудования",
                    href: "index.php?route=product/showproductall"
                },
                {
                    name: "Запчасти",
                    href: "index.php?route=information/information&information_id=8"
                }
            ]
        };
    </script>
</head>

<body>

<div class="js-app m-top-menu"></div>

<div class="root">
    <div class="page-wrap" data-page="<?php echo $route; ?>">

        <header>
            <div class="container">
                <section class="header-top">

                    <!-- Logo -->
                    <?php if ($logo) { ?>
                    <div class="logo-box">
                        <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" alt="<?php echo $name; ?>"/></a>
                    </div>
                    <?php } ?>

                    <div class="header-top__info">
                        <div class="header-top__info-feedback">
                            <a href="tel:<?php echo $this->config->get('config_telephone'); ?>" class="feedback">Позвонить нам</a>
                            <span class="feedback js-feedback-btn"">Оставить заявку</span>
                        </div>
                        <div class="header-top__info-contacts">
                            <div class="header-top__info-contacts-mail">
                                <span><?php echo $this->config->get('config_address'); ?></span><br/>
                                <span><?php echo $this->config->get('config_email'); ?></span>
                            </div>
                            <div class="header-top__info-contacts-phone">
                                <span><?php echo $this->config->get('config_telephone'); ?></span><br>
                                <span><?php echo $this->config->get('config_fax'); ?></span>
                            </div>
                        </div>
                    </div>


                </section>
            </div>

            <div class="top-menu">
                <div class="container">
                    <a class="top-menu__link" href="<?php echo $home; ?>"><span><?php echo $text_home; ?></span></a>
                    <a class="top-menu__link" href="index.php?route=product/showproductall"><span>Каталог</span></a>
                    <?php foreach ($informations as $information) { ?>
                        <a class="top-menu__link" href="<?php echo $information['href']; ?>"><span><?php echo $information['title']; ?></span></a>
                    <?php } ?>
                </div>
            </div>
        </header>


