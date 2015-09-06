<?php global $config; ?>
<div class="featured-pro container wow bounceInUp animated">
<div class="slider-items-products">
<div class="new_title center"><h2><?php echo $heading_title; ?></h2></div>
<div id="featured-slider" class="product-flexslider hidden-buttons">
  <div class="slider-items slider-width-col4"> 
    <?php foreach ($products as $product) { ?>
            <div class="item">
                  <div class="product-block">
                  <?php if ($product['thumb']) { ?>
                  <div class="product-image">
                  <a href="javascript:;">
                  <figure class="product-display">
                  <?php if($config->get('magikmicra_sale_label')==1) { 
                  if ($product['price'] && $product['special']) { ?>
                  <div class="sale-label sale-top-right"><?php echo $config->get('magikmicra_sale_labeltitle'); ?></div>
                  <?php } }?>
                      <a href="<?php echo $product['href']; ?>">
                  <img style="display: block;" alt="<?php echo $product['name']; ?>" class="lazyOwl product-mainpic img-responsive" src="<?php echo $product['thumb']; ?>"> 
                  <img width="258" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" class="product-secondpic img-responsive"> 
                 </a>
                  </figure>
                  </a> 
                  </div><!-- product-image -->    
                  <div class="product-meta">
                  <div class="product-action">
                  <a class="addcart" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="icon-shopping-cart"> </i><?php echo $button_cart; ?></a>
                  <?php if($config->get('magikmicra_quickview_button') == 1) { ?>
                  <a data-fancybox-type="ajax" onclick="callQuickView('index.php?route=product/quickview&amp;product_id=<?php echo $product['product_id']; ?>');" title="Quick View" type="button" class="quickview"><i class="icon-zoom"> </i>Quick View</a>
                  <?php } ?> 
                  </div>
                  </div><!-- product-meta -->
                  <?php } ?>
                  </div><!-- product-block -->


                  <div class="item-info">
                  <div class="info-inner">
                  <div class="item-title"> <a title="<?php echo $product['name']; ?>" href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a> 
                  </div>
                  <div class="item-content">
                  <?php if ($product['price']) { ?>
                  <div class="item-price">
                  <div class="price-box"> 
                  <?php if (!$product['special']) { ?>
                  <span class="regular-price"><span class="price"><?php echo $product['price']; ?></span></span> 
                  <?php } else { ?>
                  <span class="old-price"><span class="price"><?php echo $product['price']; ?></span></span> 
                  <span class="special-price"><span class="price"><?php echo $product['special']; ?></span></span>
                  <?php } ?>
                  <?php /* if ($product['tax']) { ?>
                  <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                  <?php } */?>
                  </div>
                  </div>
                  <?php } ?>
                  <?php //if ($product['rating']) { ?>
                  <div class="rating">
                  <div class="ratings">
                  <div class="rating-box">
                  <?php for ($i = 1; $i <= 5; $i++) { ?>
                  <?php if ($product['rating'] < $i) { ?>
                  <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                  <?php } else { ?>
                  <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                  <?php } ?>
                  <?php } ?>
                  </div>
                  </div>
                  </div><!-- rating -->
                  <?php // }?>
                  <?php /* ?> <div class="actions">
                  <a style="cursor:pointer" class="link-wishlist" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" title="<?php echo $button_wishlist; ?>"><?php //echo $button_wishlist; ?></a>
                  <div class="add_cart">
                  <button class="button btn-cart" type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><span><?php echo $button_cart; ?></span></button>
                  </div>
                  <a style="cursor:pointer" class="link-compare" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><?php //echo $button_compare; ?></a> 
                  </div><!-- action -->
                  <?php */ ?>  
                  </div><!-- item-content -->
                  </div><!-- info-inner -->
                  </div><!-- item-info -->


              </div><!-- item -->
    <?php }?>
  </div><!-- slider-items -->
</div><!-- featured-slider -->
</div>
</div>