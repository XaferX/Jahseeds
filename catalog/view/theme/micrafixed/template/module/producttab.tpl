<div class="home-tabs">
<div id="magik_producttabs1" class="magik-producttabs">
<div class="magik-pdt-container">
  <div class="magik-pdt-nav">
      <ul class="pdt-nav">
      <li class="item-nav tab-loaded tab-nav-actived" data-href="pdt_best_sales" data-orderby="best_sales" data-catid="" data-type="order">
      <span class="title-navi"><?php echo $heading_title_bestseller;?></span>
      </li>
      <li class="item-nav" data-href="pdt_new_arrivals" data-orderby="new_arrivals" data-catid="" data-type="order">
      <span class="title-navi"><?php echo $heading_title_featured;?></span>
      </li>
      </ul>
  </div>

  <div class="magik-pdt-content wide-4">
    <div class="pdt-content is-loaded pdt_best_sales tab-content-actived">
      <ul class="pdt-list products-grid zoomOut play">
        <?php global $config; $j=0; foreach ($bestseller_products as $product) { ?>
             <li class="item item-animate <?php if($j==0) echo 'wide-first'?> <?php if($j==2) echo 'last'?>">
                    
            <div class="item-inner">
              
              <?php if ($product['thumb']) { ?>
              <div class="item-img">
                <div class="item-img-info"> 
                  <a class="product-image" title="<?php echo $product['name']; ?>" href="<?php echo $product['href']; ?>"> 
                    <img alt="<?php echo $product['name']; ?>" src="<?php echo $product['thumb']; ?>" class="img-responsive"> 
                  </a>
                  <?php if($config->get('magikmicra_sale_label')==1) { 
                        if ($product['price'] && $product['special']) { ?>
                        <div class="sale-label"><?php echo $config->get('magikmicra_sale_labeltitle'); ?></div>
                        <?php } }?>
                  <?php if($config->get('magikmicra_quickview_button') == 1) { ?>
                <a data-fancybox-type="ajax" onclick="callQuickView('index.php?route=product/quickview&amp;product_id=<?php echo $product['product_id']; ?>');" title="Quick View" type="button" class="quickview-btn"><span>Quick View</span></a>
                <?php } ?>  
                </div>
              </div><!-- item-img -->
              <?php } ?>


              <div class="item-info">
                <div class="info-inner">
                   <div class="item-title"> <a title="<?php echo $product['name']; ?>" href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a> 
                   </div>

                   <div class="item-content">
                    
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

                    <div class="actions">
                      <a style="cursor:pointer" class="link-wishlist" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" title="<?php echo $button_wishlist; ?>"><?php //echo $button_wishlist; ?></a>
                      <div class="add_cart">
                        <button class="button btn-cart" type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><span><?php echo $button_cart; ?></span></button>
                      </div>
                      <a style="cursor:pointer" class="link-compare" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><?php //echo $button_compare; ?></a> 
                    </div><!-- action -->

                </div><!-- item-content -->

                </div><!-- info-inner -->
              </div><!-- item-info -->

            </div><!-- item-inner -->
         
        </li>
        <?php if($j==2) $j=0; else $j++;}?>
      </ul>
    </div><!-- pdt-content is-loaded pdt_best_sales tab-content-actived -->
    
    <!-- second div starts -->
    <div class="pdt-content pdt_new_arrivals is-loaded">
      <ul class="pdt-list products-grid zoomOut play">
        <?php $j=0; foreach ($products as $product) { ?>
             <li class="item item-animate <?php if($j==0) echo 'wide-first'?> <?php if($j==2) echo 'last'?>">
                         
            <div class="item-inner">
              
              <?php if ($product['thumb']) { ?>
              <div class="item-img">
                <div class="item-img-info"> 
                  <a class="product-image" title="<?php echo $product['name']; ?>" href="<?php echo $product['href']; ?>"> 
                    <img alt="<?php echo $product['name']; ?>" src="<?php echo $product['thumb']; ?>" class="img-responsive"> 
                  </a>
                  <?php if($config->get('magikmicra_sale_label')==1) { 
                        if ($product['price'] && $product['special']) { ?>
                        <div class="sale-label"><?php echo $config->get('magikmicra_sale_labeltitle'); ?></div>
                        <?php } }?>
                  <?php if($config->get('magikmicra_quickview_button') == 1) { ?>
                <a data-fancybox-type="ajax" onclick="callQuickView('index.php?route=product/quickview&amp;product_id=<?php echo $product['product_id']; ?>');" title="Quick View" type="button" class="quickview-btn"><span>Quick View</span></a>
                <?php } ?>  
                </div>
              </div><!-- item-img -->
              <?php } ?>


              <div class="item-info">
                <div class="info-inner">
                   <div class="item-title"> <a title="<?php echo $product['name']; ?>" href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a> 
                   </div>

                   <div class="item-content">
                    
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

                    <div class="actions">
                      <a style="cursor:pointer" class="link-wishlist" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" title="<?php echo $button_wishlist; ?>"><?php //echo $button_wishlist; ?></a>
                      <div class="add_cart">
                        <button class="button btn-cart" type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><span><?php echo $button_cart; ?></span></button>
                      </div>
                      <a style="cursor:pointer" class="link-compare" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><?php //echo $button_compare; ?></a> 
                    </div><!-- action -->

                </div><!-- item-content -->

                </div><!-- info-inner -->
              </div><!-- item-info -->

            </div><!-- item-inner -->
          
             </li>
        <?php if($j==2) $j=0; else $j++;}?>
      </ul>
    </div><!-- pdt-content pdt_new_arrivals is-loaded -->
  </div><!-- magik-pdt-content wide-4 -->
</div>
</div>
</div>