<?php echo $header; ?>
<div class="breadcrumbs">
  <div class="container">
  <div class="row">
  <div class="col-xs-12">
    <ul>
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a><span>→ </span></li>
    <?php } ?>
  </ul>
  </div>
  </div>
  </div>
</div>
<div class="container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h2><?php echo $heading_title; ?></h2>
      <?php if ($products) { ?>
      
            <div class="toolbar">
        <div class="sorter">
          <div class="view-mode">
            <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>
            <button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>
            
            <a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a>
          </div>
        </div>

        <div id="sort-by">
          <label class="left"><?php echo $text_sort; ?></label>
          <select id="input-sort" class="form-control" onchange="location = this.value;">
            <?php foreach ($sorts as $sorts) { ?>
            <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
            <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
            <?php } ?>
            <?php } ?>
          </select>
        </div>

        <div class="pager">
          <div id="limiter">
            <label><?php echo $text_limit; ?></label>
            <select id="input-limit" class="form-control" onchange="location = this.value;">
            <?php foreach ($limits as $limits) { ?>
            <?php if ($limits['value'] == $limit) { ?>
            <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
            <?php } ?>
            <?php } ?>
          </select>
          </div>
        </div>


      </div><!-- toolbar -->
      
      <div class="category-products">
      <div class="product-layout products-list">
        <?php global $config; foreach ($products as $product) { ?>
            <li class="item">
              
<!-- for grid view -->
            <div class="item-inner">
              
              <div class="product-block">
              <?php if ($product['thumb']) { ?>
              <div class="product-image">
                  <a href="javascript:;">
                      <figure class="product-display">
                        <?php if($config->get('magikmicra_sale_label')==1) { 
                        if ($product['price'] && $product['special']) { ?>
                        <div class="sale-label"><?php echo $config->get('magikmicra_sale_labeltitle'); ?></div>
                        <?php } }?>
                        <img style="display: block;" alt="<?php echo $product['name']; ?>" class="lazyOwl product-mainpic img-responsive" src="<?php echo $product['thumb']; ?>"> 
                        <img width="258" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" class="product-secondpic img-responsive"> 
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

            </div><!-- item-inner -->
<!-- end for grid view -->

              <div class="p_list product-image">
                <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>
              </div>

              <div class="product-shop">
              <h2 class="product-name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h2>
              
                    <?php //if ($product['rating']) { ?>
                    
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
                   
                    <?php // }?>
             
              <div class="desc std"><p><?php echo $product['description']; ?></p></div>
              
              <?php if ($product['price']) { ?>
              <div class="item-price">
                <div class="price-box"> 
                  <?php if (!$product['special']) { ?>
                  <span class="regular-price"><span class="price"><?php echo $product['price']; ?></span></span> 
                  <?php } else { ?>
                  <span class="old-price"><span class="price"><?php echo $product['price']; ?></span></span> 
                  <span class="special-price"><span class="price"><?php echo $product['special']; ?></span></span> 
                  <?php } ?>
                  <?php  if ($product['tax']) { ?>
                  <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                  <?php } ?>
                </div>
              </div>
              <?php } ?>
              
              <div class="actions">
                <button title="<?php echo $button_cart; ?>" type="button" class="button btn-cart ajx-cart" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><span><?php echo $button_cart; ?></span></button>

                <span class="add-to-links">
                <a style="cursor:pointer" class="button link-wishlist" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" title="<?php echo $button_wishlist; ?>"><span><?php echo $button_wishlist; ?></span></a>

                <a style="cursor:pointer" class="button link-compare" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><span><?php echo $button_compare; ?></span></a> 
                </span>
              </div>

              </div>
            </li>
        <?php } ?>
      </div><!-- product-layout products-list -->
    </div><!-- category-products -->
      <div class="bottom_pagination">
      <div class="row">
        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
      </div>
    </div>
      <?php } else { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>