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
<link href="catalog/view/theme/micrafixedblue/stylesheet/stylesheet.css" rel="stylesheet">
<link href="catalog/view/theme/micrafixedblue/stylesheet/font-awesome.css" rel="stylesheet">
<?php if($config->get('magikmicra_animation_effects')==1) { ?>
<link href="catalog/view/theme/micrafixedblue/stylesheet/animate.css" rel="stylesheet">
<?php } ?>
<link href="catalog/view/theme/micrafixedblue/stylesheet/jquery.mobile-menu.css" rel="stylesheet" type="text/css" >
<link href="catalog/view/theme/micrafixedblue/stylesheet/style.css" rel="stylesheet">
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
<script src="catalog/view/theme/micrafixedblue/js/parallax.js" type="text/javascript"></script>
<script src="catalog/view/theme/micrafixedblue/js/common.js" type="text/javascript"></script>
<script src="catalog/view/theme/micrafixedblue/js/common1.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js" type="text/javascript"></script>
<script src="catalog/view/theme/micrafixedblue/js/jquery.mobile-menu.min.js" type="text/javascript"></script>
<link href="catalog/view/theme/micrafixedblue/js/fancybox/jquery.fancybox.css" rel="stylesheet">
<script src="catalog/view/theme/micrafixedblue/js/fancybox/jquery.fancybox.js" type="text/javascript"></script>
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