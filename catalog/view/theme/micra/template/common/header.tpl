<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />

<!-- Google Fonts -->
<link href='https://fonts.googleapis.com/css?family=Lato:400,900,700' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Raleway:400,500,600,700,900,800,300' rel='stylesheet' type='text/css'>

<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />


<?php global $config; ?>
<?php // external CSS magik theme  ?>
<link href="catalog/view/theme/micra/stylesheet/stylesheet.css" rel="stylesheet">
<link href="catalog/view/theme/micra/stylesheet/font-awesome.css" rel="stylesheet">
<?php if($config->get('magikmicra_animation_effects')==1) { ?>
<link href="catalog/view/theme/micra/stylesheet/animate.css" rel="stylesheet">
<?php } ?>
<link href="catalog/view/theme/micra/stylesheet/jquery.mobile-menu.css" rel="stylesheet" type="text/css" >
<link href="catalog/view/theme/micra/stylesheet/style.css" rel="stylesheet">
<?php // external css end?>



<style type="text/css">
<?php if($config->get('magikmicra_fonttransform')!=''){?>
body {font-family:<?php echo $config->get('magikmicra_fonttransform'); ?>, sans-serif !important ;}
<?php }?>

/* sale label */
.sale-label {background:<?php echo "#".$config->get('magikmicra_sale_labelcolor'); ?>}

/*Main color section */
<?php if($config->get('magikmicra_body_bg_ed')==1) { ?>
body {background:<?php echo "#".$config->get('magikmicra_body_bg'); ?> } <?php } ?>
<?php if($config->get('magikmicra_fontcolor_ed')==1) { ?>
body {color:<?php echo "#".$config->get('magikmicra_fontcolor'); ?> } <?php } ?>
<?php if($config->get('magikmicra_linkcolor_ed')==1) { ?>
a,a:visited {color:<?php echo "#".$config->get('magikmicra_linkcolor'); ?>} <?php } ?>
<?php if($config->get('magikmicra_linkhovercolor_ed')==1) { ?>
a:hover {color:<?php echo "#".$config->get('magikmicra_linkhovercolor'); ?>} <?php } ?>


/* header color section */ 
<?php if($config->get('magikmicra_headerbg_ed')==1) { ?>
.header-top { background-color: <?php echo "#".$config->get('magikmicra_headerbg'); ?>;} <?php } ?>
<?php if($config->get('magikmicra_headerlinkcolor_ed')==1) { ?>
.header-top a,.block-language{color:<?php echo "#".$config->get('magikmicra_headerlinkcolor')."! important"; ?>;} <?php } ?>
<?php if($config->get('magikmicra_headerlinkhovercolor_ed')==1) { ?>
.header-top a:hover,.block-language:hover{color:<?php echo "#".$config->get('magikmicra_headerlinkhovercolor')."! important"; ?>;} <?php } ?>

<?php /* if($config->get('magikmicra_headerclcolor_ed')==1) { ?>
ul.currencies_list li a{color:<?php echo "#".$config->get('magikmicra_headerclcolor')."! important"; ?>;} <?php } */ ?>

/*Top Menu */
/*background*/
<?php if($config->get('magikmicra_mmbgcolor_ed')==1) { ?>
.index-home nav { background:<?php echo "#".$config->get('magikmicra_mmbgcolor'); ?> } <?php } ?>
/*main menu links*/
<?php if($config->get('magikmicra_mmlinkscolor_ed')==1) { ?>
li.level0 > a > span{ color:<?php echo "#".$config->get('magikmicra_mmlinkscolor')."! important"; ?>; } <?php } ?>
/*main menu link hover*/
<?php if($config->get('magikmicra_mmlinkshovercolor_ed')==1) { ?>
li.level0 > a > span:hover:nth-child(1), #nav > li > a.active:nth-child(1){color:<?php echo "#".$config->get('magikmicra_mmlinkshovercolor')."! important"; ?>} <?php } ?>
<?php if($config->get('magikmicra_mmslinkscolor_ed')==1) { ?>
#nav ul.level0 > li > a{color:<?php echo "#".$config->get('magikmicra_mmslinkscolor'); ?>} <?php } ?>
/*sub links hover*/
<?php if($config->get('magikmicra_mmslinkshovercolor_ed')==1) { ?>
#nav ul li a:hover{color:<?php echo "#".$config->get('magikmicra_mmslinkshovercolor'); ?> } <?php } ?> 

/*buttons*/
<?php if($config->get('magikmicra_buttoncolor_ed')==1) { ?>
button.button,.btn{background-color:<?php echo "#".$config->get('magikmicra_buttoncolor')."! important"; ?> } <?php } ?>
<?php if($config->get('magikmicra_buttonhovercolor_ed')==1) { ?>
button.button:hover,.btn:hover{background-color: <?php echo "#".$config->get('magikmicra_buttonhovercolor')."! important"; ?>} <?php } ?>


/*price*/
<?php if($config->get('magikmicra_pricecolor_ed')==1) { ?>
.regular-price .price{ color:<?php echo "#".$config->get('magikmicra_pricecolor'); ?> } <?php } ?>
<?php if($config->get('magikmicra_oldpricecolor_ed')==1) { ?>
.old-price .price{ color:<?php echo "#".$config->get('magikmicra_oldpricecolor')."! important"; ?> } <?php } ?>
<?php if($config->get('magikmicra_newpricecolor_ed')==1) { ?>
.special-price .price{ color:<?php echo "#".$config->get('magikmicra_newpricecolor'); ?> } <?php } ?>

/*footer*/
<?php if($config->get('magikmicra_footerbg_ed')==1) { ?>
footer{background:<?php echo "#".$config->get('magikmicra_footerbg'); ?> } <?php } ?>
<?php if($config->get('magikmicra_footerlinkcolor_ed')==1) { ?>
.footer-middle .links li a{color: <?php echo "#".$config->get('magikmicra_footerlinkcolor'); ?>} 
<?php } ?>
<?php if($config->get('magikmicra_footerlinkhovercolor_ed')==1) { ?>
.footer-middle .links li a:hover{color: <?php echo "#".$config->get('magikmicra_footerlinkhovercolor'); ?>} <?php } ?>
<?php if($config->get('magikmicra_powerbycolor_ed')==1) { ?>
footer .coppyright{color: <?php echo "#".$config->get('magikmicra_powerbycolor'); ?>} <?php } ?>

</style>

<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>

<!-- <script src="catalog/view/javascript/common.js" type="text/javascript"></script> -->
<?php // External js magik theme ?>
<script src="catalog/view/theme/micra/js/parallax.js" type="text/javascript"></script>
<script src="catalog/view/theme/micra/js/common.js" type="text/javascript"></script>
<script src="catalog/view/theme/micra/js/common1.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js" type="text/javascript"></script>
<script src="catalog/view/theme/micra/js/jquery.mobile-menu.min.js" type="text/javascript"></script>
<link href="catalog/view/theme/micra/js/fancybox/jquery.fancybox.css" rel="stylesheet">
<script src="catalog/view/theme/micra/js/fancybox/jquery.fancybox.js" type="text/javascript"></script>
<?php // external js end?>

<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php echo $google_analytics; ?>
</head>
<body class="<?php echo $class; ?>">

<div id="page">
  <header class="header-container">
    <div class="header-top">
      <div class="container">
        <div class="row">
          
          <div class="col-lg-6 col-md-4 col-sm-3 col-xs-12">
            <?php if($config->get('magikmicra_phone')) { ?>
            <div class="phone hidden-xs">
                <div class="phone-box"><strong><?php echo $text_call;?></strong> <span><?php echo $config->get('magikmicra_phone'); ?></span></div>
            </div>
            <?php }?>
            
            <?php if (!$logged) { ?> <div class="welcome-msg hidden-xs"><?php echo $text_welcome; ?></div>
            <?php } else { ?><div class="welcome-msg hidden-xs"><?php echo $text_logged; ?></div>
            <?php } ?> 
          </div>
          
          <div class="col-lg-6 col-md-8 col-sm-9 col-xs-12">
            <div class="top-cart-contain">
              <div class="mini-cart">
              <?php echo $cart; ?>
              </div>
            </div><!-- top-cart-contain -->

            <?php echo $search;?>

            <div class="toplinks">
              <div class="links">
                <div class="login">
                <?php if (!$logged) { ?>
                <a title="<?php echo $text_login;?>" href="<?php echo $login; ?>"><span class="hidden-xs"><?php echo $text_login; ?></span></a>

                <?php }  else { ?>
                <a title="<?php echo $text_logout;?>" href="<?php echo $logout; ?>"><span class="hidden-xs"><?php echo $text_logout; ?></span></a>
                <?php } ?>
                </div>
                
                <div class="wishlist"><a href="<?php echo $wishlist; ?>"  title="<?php echo $text_wishlist; ?>"><span class="hidden-xs"><i class="icon-star"> </i><span id="wishlist-total" class="wishlist-items"><?php echo $text_wishlist; ?></span></span></a>
                </div>

              </div>
            </div><!-- toplinks -->
            
              <?php echo $language; ?>
              <?php echo $currency; ?>
              
            
            
              
           
          </div>

        </div><!-- row -->
      </div><!-- container -->
    </div><!-- header-top -->
  </header>
  
  <nav>
    <div class="header container">
    <div class="row">
    <div class="col-xs-12">

      <div class="mm-toggle-wrap">
      <div class="mm-toggle"> <i class="icon-align-justify"></i><span class="mm-label">Menu</span> </div>
      </div>
     
      <?php if ($logo) { ?>
      <a href="<?php echo $home; ?>" class="logo"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
      <?php } else { ?>
      <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
      <?php } ?>  
     

      <div class="nav-inner">
     <?php /**
      <ul class="hidden-xs" id="nav">
      <li class="level0 nav-5 level-top"><a class="active level-top" id="tab_home" href="http://test.ba/index.php?route=common/home"><span>Home</span></a></li>
      <li class="level0 level-top parent">
          <a class="" href="http://test.ba/index.php?route=product/category&amp;path=20">
              <span>Women</span>  </a>
          <div style="left: 0px; display: none;" class="level0-wrapper dropdown-6col">

              <div class="level0-wrapper2">



                  <div class="nav-block nav-block-center grid12-8 itemgrid itemgrid-4col">


                      <ul class="level0">
                          <li class="level1 nav-6-1 parent item">
                              <a href="http://test.ba/index.php?route=product/category&amp;path=20_26"><span>Stylish Bag</span></a>
                              <ul class="level1">

                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=20_26_35"><span>Clutch Handbags</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=20_26_66"><span>Diaper Bags</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=20_26_71"><span>Bags</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=20_26_72"><span>Hobo handbags</span></a></li>


                              </ul>
                          </li>
                          <li class="level1 nav-6-1 parent item">
                              <a href="http://test.ba/index.php?route=product/category&amp;path=20_27"><span>Material Bag</span></a>
                              <ul class="level1">

                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=20_27_74"><span>Beaded Handbags</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=20_27_75"><span>Fabric Handbags</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=20_27_77"><span>Handbags</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=20_27_79"><span>Leather Handbags</span></a></li>


                              </ul>
                          </li>
                          <li class="level1 nav-6-1 parent item">
                              <a href="http://test.ba/index.php?route=product/category&amp;path=20_59"><span>Shoes</span></a>
                              <ul class="level1">

                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=20_59_83"><span>Flat Shoes</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=20_59_87"><span>Flat Sandals</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=20_59_91"><span>Boots</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=20_59_95"><span>Heels</span></a></li>


                              </ul>
                          </li>
                          <li class="level1 nav-6-1 parent item">
                              <a href="http://test.ba/index.php?route=product/category&amp;path=20_61"><span>Jwellery</span></a>
                              <ul class="level1">

                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=20_61_99"><span>Bracelets</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=20_61_102"><span>Necklaces &amp; Pendent</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=20_61_63"><span>Pendants</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=20_61_106"><span>Pins &amp; Brooches</span></a></li>


                              </ul>
                          </li>
                          <li class="level1 nav-6-1 parent item">
                              <a href="http://test.ba/index.php?route=product/category&amp;path=20_62"><span>Dresses</span></a>
                              <ul class="level1">

                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=20_62_108"><span>Casual Dresses</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=20_62_110"><span>Evening</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=20_62_113"><span>Designer</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=20_62_115"><span>Party</span></a></li>


                              </ul>
                          </li>
                          <li class="level1 nav-6-1 parent item">
                              <a href="http://test.ba/index.php?route=product/category&amp;path=20_64"><span>Swimwear</span></a>
                              <ul class="level1">

                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=20_64_116"><span>Swimsuits</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=20_64_117"><span>Beach Clothing</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=20_64_118"><span>Clothing</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=20_64_119"><span>Bikinis</span></a></li>


                              </ul>
                          </li>
                      </ul>


                  </div>
                  <div class="nav-block nav-block-right std grid12-4">

                      <div class="cat_pr_info">
                          <div class="cat_img"><a title="Magento Commerce" href="#"><img alt="product-image" src="http://test.ba/image/cache/catalog/p3-175x175.jpg" width="175"></a></div>
                          <div class="products-info">
                              <div class="pr-title"> Vanca Women's Top</div>

                              <div class="price-box">
                                  <p class="regular-price"><span class="price">100.0000</span></p>

                              </div>




                              <div class="push_text">
                                  Born to be worn.

                                  Clip on the worlds most wearable music player and take up to 240 songs wit..</div>

                              <div class="cat-bnt">
                                  <button type="button" title="Add to Cart" class="button btn-cart" onclick="cart.add('34');"><span>BUY IT NOW</span></button>
                              </div>
                          </div>
                      </div>
                  </div>



              </div>
          </div>
      </li>
      <li class="level0 level-top parent">
          <a class="" href="http://test.ba/index.php?route=product/category&amp;path=18">
              <span>Men</span>  </a>
          <div style="left: 0px; display: none;" class="level0-wrapper dropdown-6col">

              <div class="level0-wrapper2">

                  <div class="normal-text">
                      <div class="custom_link">
                          <div class="grid3"><a href="#">Custom link 1</a></div>
                          <div class="grid3"><a href="#">Custom link 2</a></div>
                          <div class="grid3"><a href="#">Custom link 3</a></div>
                          <div class="grid3"><a href="#">Custom link 4</a></div>
                      </div>
                      <div class="grid4 a-right"> <a href="#">Custom right link</a> </div>
                  </div>

                  <div class="nav-block nav-block-center grid12-8 itemgrid itemgrid-4col">


                      <ul class="level0">
                          <li class="level1 nav-6-1 parent item">
                              <a href="http://test.ba/index.php?route=product/category&amp;path=18_161"><span>qwerty</span></a>
                          </li>
                          <li class="level1 nav-6-1 parent item">

                              <div class="cat-img"><a title="" href="#"><img alt="product-image" src="http://test.ba/image/cache/catalog/shoes-img-160x120.png"></a></div>
                              <a href="http://test.ba/index.php?route=product/category&amp;path=18_46"><span>Shoes</span></a>
                              <ul class="level1">

                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=18_46_70"><span>Sport Shoes</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=18_46_73"><span>Casual Shoes</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=18_46_76"><span>Leather Shoes</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=18_46_78"><span>Canvas Shoes</span></a></li>


                              </ul>
                          </li>
                          <li class="level1 nav-6-1 parent item">

                              <div class="cat-img"><a title="" href="#"><img alt="product-image" src="http://test.ba/image/cache/catalog/dress_m-160x120.png"></a></div>
                              <a href="http://test.ba/index.php?route=product/category&amp;path=18_45"><span>Dresses</span></a>
                              <ul class="level1">

                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=18_45_80"><span>Casual Dresse</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=18_45_81"><span>Evening</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=18_45_82"><span>Designer</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=18_45_84"><span>Party</span></a></li>


                              </ul>
                          </li>
                          <li class="level1 nav-6-1 parent item">

                              <div class="cat-img"><a title="" href="#"><img alt="product-image" src="http://test.ba/image/cache/catalog/watches-img-160x120.png"></a></div>
                              <a href="http://test.ba/index.php?route=product/category&amp;path=18_67"><span>Watches</span></a>
                              <ul class="level1">

                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=18_67_90"><span>Fasttrack</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=18_67_92"><span>Casio</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=18_67_93"><span>Titan</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=18_67_94"><span>Tommy-Hilfiger</span></a></li>


                              </ul>
                          </li>
                          <li class="level1 nav-6-1 parent item">

                              <div class="cat-img"><a title="" href="#"><img alt="product-image" src="http://test.ba/image/cache/catalog/sunglasses-img-160x120.png"></a></div>
                              <a href="http://test.ba/index.php?route=product/category&amp;path=18_68"><span>Sunglasses</span></a>
                              <ul class="level1">

                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=18_68_96"><span>Ray Ban</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=18_68_97"><span>Fasttrack</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=18_68_98"><span>Police</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=18_68_100"><span>Oakley</span></a></li>


                              </ul>
                          </li>
                      </ul>


                  </div>
                  <div class="nav-block nav-block-right std grid12-4">

                      <div class="cat_pr_info">
                          <div class="cat_img"><a title="Magento Commerce" href="#"><img alt="product-image" src="http://test.ba/image/cache/catalog/p52-175x175.jpg" width="175"></a></div>
                          <div class="products-info">
                              <div class="pr-title">Alessia74 Handbag</div>

                              <div class="price-box">
                                  <p class="regular-price"><span class="price">80.0000</span></p>

                              </div>




                              <div class="push_text">

                                  Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combine..</div>

                              <div class="cat-bnt">
                                  <button type="button" title="Add to Cart" class="button btn-cart" onclick="cart.add('31');"><span>BUY IT NOW</span></button>
                              </div>
                          </div>
                      </div>
                  </div>


                  <div class="normal-text1">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tristique, est aliquet dictum feugiat, diam velit ullamcorper lorem, non condimentum nisi urna sit amet dolor. Integer mollis,
                      turpis eget blandit porttitor, sapien dolor pretium massa, sed sodales elit dolor eget nulla. Praesent commodo cursus justo, ut tempor ipsum suscipit eget. <a href="#">View all</a></div>


              </div>
          </div>
      </li>
      <li class="level0 level-top parent">
          <a class="" href="http://test.ba/index.php?route=product/category&amp;path=25">
              <span>Electronics</span>  </a>
          <div style="left: 0px; display: none;" class="level0-wrapper dropdown-6col">

              <div class="level0-wrapper2">



                  <div class="nav-block nav-block-center">


                      <ul class="level0">
                          <li class="level1 nav-6-1 parent item">
                              <a href="http://test.ba/index.php?route=product/category&amp;path=25_107"><span>Mobiles</span></a>
                              <ul class="level1">

                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=25_107_109"><span>Samsung</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=25_107_111"><span>Nokia</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=25_107_112"><span>IPhone</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=25_107_114"><span>Sony</span></a></li>


                              </ul>
                          </li>
                          <li class="level1 nav-6-1 parent item">
                              <a href="http://test.ba/index.php?route=product/category&amp;path=25_29"><span>Accesories</span></a>
                              <ul class="level1">

                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=25_29_122"><span>Mobile Memory Cards</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=25_29_124"><span>Cases &amp; Covers</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=25_29_126"><span>Mobile Headphones</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=25_29_128"><span>Bluetooth Headsets</span></a></li>


                              </ul>
                          </li>
                          <li class="level1 nav-6-1 parent item">
                              <a href="http://test.ba/index.php?route=product/category&amp;path=25_28"><span>Cameras</span></a>
                              <ul class="level1">

                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=25_28_130"><span>Camcorders</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=25_28_132"><span>Point &amp; Shoot</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=25_28_133"><span>Digital SLR</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=25_28_135"><span>Camera Accesories</span></a></li>


                              </ul>
                          </li>
                          <li class="level1 nav-6-1 parent item">
                              <a href="http://test.ba/index.php?route=product/category&amp;path=25_30"><span>Audio &amp; Video</span></a>
                              <ul class="level1">

                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=25_30_137"><span>MP3 Players</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=25_30_138"><span>IPods</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=25_30_140"><span>Speakers</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=25_30_142"><span>Video Players</span></a></li>


                              </ul>
                          </li>
                          <li class="level1 nav-6-1 parent item">
                              <a href="http://test.ba/index.php?route=product/category&amp;path=25_31"><span>Computer</span></a>
                              <ul class="level1">

                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=25_31_144"><span>External Hard Disk</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=25_31_145"><span>Pendrives</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=25_31_147"><span>Headphones</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=25_31_149"><span>PC Components</span></a></li>


                              </ul>
                          </li>
                      </ul>


                  </div>


                  <div class="nav-add"><div class="push_item">
                          <div class="push_img"><a href="#"> <img alt="phone" src="catalog/view/theme/micra/image/menu_ele_phone.png"> </a></div>
                          <div class="push_text">Lorem Ipsum is simply dummy text of the printing</div>
                      </div>
                      <div class="push_item">
                          <div class="push_img"><a href="#"> <img alt="camera" src="catalog/view/theme/micra/image/menu_ele_camera.png"> </a></div>
                          <div class="push_text">Lorem Ipsum is simply dummy text of the printing</div>
                      </div>
                      <div class="push_item">
                          <div class="push_img"><a href="#"> <img alt="ipod" src="catalog/view/theme/micra/image/menu_ele_ipod.png"> </a></div>
                          <div class="push_text">Lorem Ipsum is simply dummy text of the printing</div>
                      </div>
                      <div class="push_item push_item_last">
                          <div class="push_img"><a href="#"> <img alt="laptop" src="catalog/view/theme/micra/image/menu_ele_laptop.png"> </a></div>
                          <div class="push_text">Lorem Ipsum is simply dummy text of the printing</div>
                      </div>
                  </div>


              </div>
          </div>
      </li>
      <li class="level0 level-top parent">
          <a class="" href="http://test.ba/index.php?route=product/category&amp;path=57">
              <span>Furniture</span>  </a>
          <div style="left: 0px; display: none;" class="level0-wrapper dropdown-6col">

              <div class="level0-wrapper2">



                  <div class="nav-block nav-block-center grid12-8 itemgrid itemgrid-4col">


                      <ul class="level0">
                          <li class="level1 nav-6-1 parent item">
                              <a href="http://test.ba/index.php?route=product/category&amp;path=57_120"><span>Living Room</span></a>
                              <ul class="level1">

                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=57_120_121"><span>Racks &amp; Cabinets</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=57_120_123"><span>Sofas</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=57_120_125"><span>Chairs</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=57_120_127"><span>Tables</span></a></li>


                              </ul>
                          </li>
                          <li class="level1 nav-6-1 parent item">
                              <a href="http://test.ba/index.php?route=product/category&amp;path=57_129"><span>Dining &amp; Bar</span></a>
                              <ul class="level1">

                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=57_129_131"><span>Dining Table Sets</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=57_129_134"><span>Serving Trolleys</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=57_129_136"><span>Bar Counters</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=57_129_139"><span>Dining Cabinets</span></a></li>


                              </ul>
                          </li>
                          <li class="level1 nav-6-1 parent item">
                              <a href="http://test.ba/index.php?route=product/category&amp;path=57_141"><span>Bedroom</span></a>
                              <ul class="level1">

                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=57_141_143"><span>Beds</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=57_141_146"><span>Chest of Drawers</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=57_141_148"><span>Wardrobes &amp; Almirahs</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=57_141_150"><span>Nightstands</span></a></li>


                              </ul>
                          </li>
                          <li class="level1 nav-6-1 parent item">
                              <a href="http://test.ba/index.php?route=product/category&amp;path=57_152"><span>Kitchen</span></a>
                              <ul class="level1">

                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=57_152_155"><span>Kitchen Racks</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=57_152_156"><span>Kitchen Fillings</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=57_152_158"><span>Wall Units</span></a></li>


                                  <li class="level2 nav-6-1-1"><a href="http://test.ba/index.php?route=product/category&amp;path=57_152_159"><span>Benches &amp; Stools</span></a></li>


                              </ul>
                          </li>
                      </ul>


                  </div>
                  <div class="nav-block nav-block-right std grid12-4">
                      <a href="#/electronics/phone-accessories.html"><img alt="image" src="catalog/view/theme/micra/image/nav-img.jpg" class="fade-on-hover"></a>
                  </div>


                  <div class="normal-text1"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tristique, est aliquet dictum feugiat, diam velit ullamcorper lorem, non condimentum nisi urna sit amet dolor. Integer,
                          turpis eget blandit porttitor, sapien dolor pretium massa, sed sodales elit dolor eget nulla. Praesent commodo cursus justo, ut tempor ipsum suscipit eget.</p></div>


              </div>
          </div>
      </li>
      <li class="level0 level-top parent">
          <a class="" href="http://test.ba/index.php?route=product/category&amp;path=17">
              <span>Kids</span>  </a>
      </li>
      <li class="nav-custom-link level0 level-top parent">
          <a class="level-top"><span>Custom</span></a>
          <div class="level0-wrapper custom-menu" style="left: 0px; display: none;">
              <div class="normal-text">
                  <div class="custom_link">
                      <div class="grid3"><a href="#">OUR RECOMMENDATIONS</a></div>
                  </div>
                  <div class="grid4 a-right">&nbsp;
                      <!-- <a href="#electronics.html" style="color: #cd2122; font-style: italic;">SEE MORE</a>  -->
                  </div>
              </div>
              <div class="header-nav-dropdown-wrapper clearer">
                  <div class="nav-block nav-block-right grid12-5">
                      <div class="cat_pr_info">
                          <div class="cat_img"><img alt="product-image" src="http://test.ba/image/cache/catalog/p69-166x200.jpg"></div>
                          <div class="products-info">
                              <div class="pr-title">Bata Women's Fashion Sandals</div>

                              <div class="price-box">
                                  <p class="regular-price"><span class="price">$602.00</span></p>

                              </div>

                              <div class="push_text">

                                  Intel Core 2 Duo processor

                                  Powered by an Intel Core 2 Duo processor at speeds up to 2.1..</div>
                              <div class="cat-bnt">
                                  <button type="button" title="Add to Cart" class="button btn-cart" onclick="cart.add('43');"><span>BUY IT NOW</span></button>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="header-nav-dropdown-wrapper clearer">
                  <div class="nav-block nav-block-right grid12-5">
                      <div class="cat_pr_info">
                          <div class="cat_img"><img alt="product-image" src="http://test.ba/image/cache/catalog/p50-166x200.jpg"></div>
                          <div class="products-info">
                              <div class="pr-title">Butterflies Women's Handbag</div>

                              <div class="price-box">
                                  <p class="regular-price"><span class="price">$337.99</span></p>

                              </div>

                              <div class="push_text">
                                  Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to b..</div>
                              <div class="cat-bnt">
                                  <button type="button" title="Add to Cart" class="button btn-cart" onclick="cart.add('29');"><span>BUY IT NOW</span></button>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="header-nav-dropdown-wrapper clearer">
                  <div class="nav-block nav-block-right grid12-5">
                      <div class="cat_pr_info">
                          <div class="cat_img"><img alt="product-image" src="http://test.ba/image/cache/catalog/p12-166x200.jpg"></div>
                          <div class="products-info">
                              <div class="pr-title">HTC Touch HD</div>

                              <div class="price-box">
                                  <p class="regular-price"><span class="price">$122.00</span></p>

                              </div>

                              <div class="push_text">
                                  HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high de..</div>
                              <div class="cat-bnt">
                                  <button type="button" title="Add to Cart" class="button btn-cart" onclick="cart.add('28');"><span>BUY IT NOW</span></button>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>

          </div>

      </li>

    </ul>  */
     ?>
<?php 
if(isset($this->request->get['path'])) {
    $path = $this->request->get['path'];
    $cats = explode('_', $path);
    $cat_id = $cats[0];
} else{   $cat_id = 0; } ?>
<?php  $this->load->model('setting/setting');
$cbim=$this->model_setting_setting->getSetting('custom_menu_content');
$subcatimgs=$this->config->get('custom_subcategory_thumbnail_module');
$this->load->model('tool/image');
if (function_exists('search')) {}
else {
function search($array, $key, $value)
{
    $results = array();
    if (is_array($array)) {
        if (isset($array[$key]) && $array[$key] == $value) {
            $results[] = $array;
        }
        foreach ($array as $subarray) {
            $results = array_merge($results, search($subarray, $key, $value));
        }
    }
    return $results;
} }
if($cbim=='' || $cbim==null){$cbim=0;} ?>

<?php

if ($categories) { ?>
    <ul class="hidden-xs" id="nav">
    <?php if($config->get('magikmicra_home_option')==1){ ?>
    <li class="level0 nav-5 level-top"><a class="active level-top" id="tab_home" href="<?php echo $home;?>"><span><?php echo $text_menu_home;?></span></a></li><?php }?>

    <?php foreach ($categories1 as $category) { ?>
  <li class="level0 level-top parent">
      <a class="<?php if($category['category_id']==$cat_id) {echo 'active';}?>" href="<?php echo $category['href']; ?>">
      <span><?php echo $category['name']; ?></span>  </a>
      <?php if($category['category_id']==$cat_id) {?>
<script>jQuery("#tab_home").removeClass('active');
</script>
<?php }?>
      <?php if ($category['children']) { ?>
      <div style="left: 0px; display: none;" class="level0-wrapper dropdown-6col">    

      <div class="level0-wrapper2">
      <?php $customDataMenu=search($cbim['custom_menu_content'], 'category_id', $category['category_id']);
      if(!empty($customDataMenu)) { ?>

            <?php 
            //echo $customDataMenu[0]['type'];
            if($customDataMenu[0]['topcontent']!='') {   
              echo html_entity_decode($customDataMenu[0]['topcontent']); 
            }
            ?>

            <?php 
            $flag=0;
            if($customDataMenu[0]['topcontent']=='' && $customDataMenu[0]['type']!='static' && $customDataMenu[0]['type']!='product' && $customDataMenu[0]['bottomcontent']!='') { $flag=1; } ?>

            <?php 
            if($customDataMenu[0]['type']=='static' || $customDataMenu[0]['type']=='product'){ ?>
            <div class="nav-block nav-block-center grid12-8 itemgrid itemgrid-4col">
            <?php } else {?>
            <div class="nav-block nav-block-center">
            <?php }?>
            
            <?php for ($i = 0; $i < count($category['children']);) { ?>

            <ul class="level0">
            <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
            <?php for (; $i < $j; $i++) { ?>
            <?php if (isset($category['children'][$i])) { ?>
            <li class="level1 nav-6-1 parent item">
            <?php 
            if(!empty($subcatimgs)) {
            $subThumb=search($subcatimgs, 'category_id', $category['children'][$i]['category_id']);             
            if(!empty($subThumb)) { ?> 
            <div class="cat-img"><a title="" href="#"><img  alt="product-image" src="<?php echo $this->model_tool_image->resize($subThumb[0]['image'], 160, 120) ; ?>"></a></div>   
            <?php }
            } ?>
            <a href="<?php echo $category['children'][$i]['href']; ?>"><span><?php echo $category['children'][$i]['name']; ?></span></a>
            <?php //print_r($category['children'][$i]['child2']);
            if(count($category['children'][$i]['children']) )
            {?>
            <ul class="level1">

            <?php for($m=0;$m<count($category['children'][$i]['children']);$m++){
            ?>
            <li class="level2 nav-6-1-1"><a href="<?php echo $category['children'][$i]['children'][$m]['href'];?>"><span><?php echo $category['children'][$i]['children'][$m]['name']?></span></a></li>


            <?php  }?>
            </ul>
            <?php }?>
            </li>
            <?php } ?>
            <?php } ?>
            </ul>

            <?php } ?>

            </div>
            <?php //if($customDataMenu[0]['type']!=0){ ?>
             <?php if($customDataMenu[0]['type']) { ?>
             <div class="nav-block nav-block-right std grid12-4">
             <?php 
             //if($customDataMenu[0]['type']!=0){

                  if($customDataMenu[0]['type']=='static')
                    echo html_entity_decode($customDataMenu[0]['rightcontent']); 
                  if($customDataMenu[0]['type']=='product')
                  {
                     $product_id=$customDataMenu[0]['rightcontentproduct'];
                     $this->load->model('catalog/product');
                     $product_info = $this->model_catalog_product->getProduct($product_id);
                     $this->load->model('tool/image');
                     ?> 
                      <div class="cat_pr_info">
                      <div class="cat_img"><a title="Magento Commerce" href="#"><img alt="product-image" src="<?php echo $this->model_tool_image->resize($product_info['image'], 175, 175); ?>" width="175"></a></div>
                      <div class="products-info">
                        <div class="pr-title"><?php echo $product_info['name'];?></div>                        
                        <?php if ($product_info['price']) { ?>
                       
                          <div class="price-box"> 
                            <?php if (!$product_info['special']) { ?>
                            <p class="regular-price"><span class="price"><?php echo $product_info['price']; ?></span></p> 
                            <?php } else { ?>
                            <p class="old-price"><span class="price"><?php echo $product_info['price']; ?></span></p> 
                            <p class="special-price"><span class="price"><?php echo $product_info['special']; ?></span></p> 
                            <?php } ?>
                           
                          </div>
                        
                        <?php } ?>



                        <div class="push_text"><?php echo utf8_substr(strip_tags(html_entity_decode($product_info['description'], ENT_QUOTES, 'UTF-8')), 0, 100) . '..'; ?></div>

                        <div class="cat-bnt">
                          <button type="button" title="Add to Cart" class="button btn-cart"  onclick="cart.add('<?php echo $product_id; ?>');"><span>BUY IT NOW</span></button>
                        </div>
                      </div>
                    </div>
                     <?php
                  }  
             //} 
             ?>
             </div>
             <?php } ?> 
             <?php //} ?>
             <?php if($customDataMenu[0]['bottomcontent']!=''){ ?> 
             <div class="<?php if($flag) echo 'nav-add'; else echo 'normal-text1';?>"><?php echo html_entity_decode($customDataMenu[0]['bottomcontent']); ?></div> 
             <?php } ?>


     <?php  } else { ?> 
    


          <div class="nav-block nav-block-center">
          <?php for ($i = 0; $i < count($category['children']);) { ?>

          <ul class="level0">
          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
          <?php for (; $i < $j; $i++) { ?>
          <?php if (isset($category['children'][$i])) { ?>
          <li class="level1 nav-6-1 parent item">
          <?php 
            if(!empty($subcatimgs)) {
            $subThumb=search($subcatimgs, 'category_id', $category['children'][$i]['category_id']); 
            if(!empty($subThumb)) { ?> 
            <div class="cat-img"><a title="" href="#"><img  alt="product-image" src="<?php echo HTTP_SERVER.'image/'.$subThumb[0]['image']; ?>"></a></div>   
            <?php }
            } 
            ?> 
          <a href="<?php echo $category['children'][$i]['href']; ?>"><span><?php echo $category['children'][$i]['name']; ?></span></a>
          <?php //print_r($category['children'][$i]['child2']);
          if(count($category['children'][$i]['children']) )
          {?>
          <ul class="level1">

          <?php for($m=0;$m<count($category['children'][$i]['children']);$m++){
          ?>
          <li class="level2 nav-6-1-1"><a href="<?php echo $category['children'][$i]['children'][$m]['href'];?>"><span><?php echo $category['children'][$i]['children'][$m]['name']?></span></a></li>


          <?php  }?>
          </ul>
          <?php }?>
          </li>
          <?php } ?>
          <?php } ?>
          </ul>

          <?php } ?>

          </div>


          

          <?php }  ?>
          </div>
      </div>  
      <?php } ?>
    </li>
    <?php } ?>
    <?php if($this->config->get('magikmicra_menubar_cb') == 1)
    {
     
    ?>
    <li class="nav-custom-link level0 level-top parent">
     <a class="level-top"><span><?php echo $config->get('magikmicra_menubar_cbtitle'); ?></span></a>
     <div class="level0-wrapper custom-menu" style="left: 0px; display: none;">
      <div class="normal-text">
        <div class="custom_link">
          <div class="grid3"><a href="#">OUR RECOMMENDATIONS</a></div>
        </div>
        <div class="grid4 a-right">&nbsp;
        <!-- <a href="#electronics.html" style="color: #cd2122; font-style: italic;">SEE MORE</a>  -->
        </div>
      </div>
      <?php foreach ($products as $key => $value) { ?>
       <div class="header-nav-dropdown-wrapper clearer">
        <div class="nav-block nav-block-right grid12-5">
          <div class="cat_pr_info">
            <div class="cat_img"><img alt="product-image" src="<?php echo $value['thumb'];?>"></div>
            <div class="products-info">
              <div class="pr-title"><?php echo $value['name']; ?></div>
              <?php if ($value['price']) { ?>
                       
                <div class="price-box"> 
                  <?php if (!$value['special']) { ?>
                  <p class="regular-price"><span class="price"><?php echo $value['price']; ?></span></p> 
                  <?php } else { ?>
                  <p class="old-price"><span class="price"><?php echo $value['price']; ?></span></p> 
                  <p class="special-price"><span class="price"><?php echo $value['special']; ?></span></p> 
                  <?php } ?>
                 
                </div>
                        
              <?php } ?>
              <div class="push_text"><?php echo $value['description']; ?></div>
              <div class="cat-bnt">
                <button type="button" title="Add to Cart" class="button btn-cart" onclick="cart.add('<?php echo $value['product_id']; ?>');"><span>BUY IT NOW</span></button>
              </div>
            </div>
          </div>
        </div>        
      </div>
      <?php } ?>
   
    </div>

     </li>

   <?php } ?>
    </ul>
    <?php } ?>



      </div><!-- <div class="nav-inner"> -->
     

    </div>
    </div>
    </div>

  </nav>
  <style type="text/css">
#mgkquickview {
  display: none;
  background-color: rgba(0, 0, 0, 0.7);
  width: 100%;
  height: 1200px;
  position: fixed;
  z-index: 9999;
  top: 0;
  left: 0;
  font-family: Verdana, Arial, Helvetica, sans-serif;
  font-size: 12px;
}
  </style>