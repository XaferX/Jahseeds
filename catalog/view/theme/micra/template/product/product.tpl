<?php global $config; echo $header; ?>
  <div class="breadcrumbs">
  <div class="container">
  <div class="row">
  <div class="col-xs-12">
    <ul>
    <?php $b_i=0; $b_cnt=count($breadcrumbs); foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><?php if($b_i!=0) {?><span>→ </span><?php } ?>
      <?php if($b_i==($b_cnt-1)){ ?>
      <strong><?php echo $breadcrumb['text']; ?></strong><?php } 
      else { ?>
      <a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
      <?php }?>
    </li>
    <?php $b_i++ ;} ?>
  </ul>
  </div>
  </div>
  </div>
  </div>

  <section class="main-container col1-layout">
    <div class="main container" id="content">
    <div class="col-main">
      <div class="row">
        <div class="product-view">
          <div class="product-essential">
          
            <?php if ($thumb || $images) { ?>
            <div class="product-img-box col-lg-4 col-sm-6 col-md-4 col-xs-12 wow bounceInRight animated">
              <?php if($config->get('magikmicra_sale_label')==1) { 
                        if ($price && $special) { ?>
                        <div class="sale-label"><?php echo $config->get('magikmicra_sale_labeltitle'); ?></div>
                        <?php } }?>
              <div class="product-image">
                <div class="large-image"> 
                  <a href="<?php echo $popup; ?>" class="cloud-zoom" id="zoom1" rel="useWrapper: false, adjustY:0, adjustX:20"> 
                    <img src="<?php echo $popup; ?>"> 
                  </a> 
                </div>

                <div class="flexslider flexslider-thumb">
                    <ul class="previews-list slides">
                       <?php foreach ($images as $image) { ?>
                       <li>
                        <a href='<?php echo $image['popup']; ?>' class='cloud-zoom-gallery' rel="useZoom: 'zoom1', smallImage: '<?php echo $image['popup']; ?>' ">
                          <img src="<?php echo $image['popup']; ?>" alt = "Thumbnail 1"/>
                        </a>
                      </li>
                       <?php }?>
                    </ul>
                </div>


             </div><!-- product-image -->

            </div><!-- product-img-box -->
            <?php } ?>
            
            <div class="product-shop <?php if($products) {echo 'col-sm-6 col-lg-5  col-md-5';} else {echo 'col-sm-6 col-lg-8  col-md-8';}?> col-xs-12 bounceInUp animated">
              <div class="product-name">
              <h1><?php echo $heading_title; ?></h1>
              </div> 
              <?php if ($review_status) { ?>
              <div class="ratings">
                <div class="rating-box">
                  <div class="rating">
                  <?php for ($i = 1; $i <= 5; $i++) { ?>
                  <?php if ($rating < $i) { ?>
                  <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                  <?php } else { ?>
                  <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                  <?php } ?>
                  <?php } ?>
                  </div>
                </div>

                <p class="rating-links"><a href="" onclick="$('a[href=\'#reviews_tabs\']').trigger('click'); return false;"><?php echo $reviews; ?></a> / <a href="" onclick="$('a[href=\'#reviews_tabs\']').trigger('click'); return false;"><?php echo $text_write; ?></a></p>
              </div><!-- ratings -->
              <?php } ?>
               <p class="availability in-stock pull-right"><?php echo $stock; ?></p>

              <?php if ($price) { ?>
              <div class="price-block">
                  <input value="<?php echo $price; ?>" id="def_price" type="hidden">
              <div class="price-box">
                <?php if (!$special) { ?>
                <p class="regular-price"><span class="price"><?php echo $price; ?></span></p>
                <?php } else {?>
                  <p class="special-price"><span class="price"><?php echo $special; ?></span></p>
                  <p class="old-price"><span class="price"><?php echo $price; ?></span></p>
                 <?php } ?>
              </div>
              </div>
              
              <ul class="list-unstyled">
              <?php if ($tax) { ?>
              <li><?php echo $text_tax; ?> <?php echo $tax; ?></li>
              <?php } ?>
              <?php if ($points) { ?>
              <li><?php echo $text_points; ?> <?php echo $points; ?></li>
              <?php } ?>
              <?php if ($discounts) { ?>
              <li>
              <hr>
              </li>
              <?php foreach ($discounts as $discount) { ?>
              <li><?php echo $discount['quantity']; ?><?php echo $text_discount; ?><?php echo $discount['price']; ?></li>
              <?php } ?>
              <?php } ?>
              </ul>
              <?php } ?>
              

             

              <ul class="list-unstyled">
              <?php if ($manufacturer) { ?>
              <li><?php echo $text_manufacturer; ?> <a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a></li>
              <?php } ?>
              <li><?php echo $text_model; ?> <?php echo $model; ?></li>
              <?php if ($reward) { ?>
              <li><?php echo $text_reward; ?> <?php echo $reward; ?></li>
              <?php } ?>
              <!-- <li><?php //echo $text_stock; ?> <?php //echo $stock; ?></li> -->
              </ul>

              <div id="product">
              <?php if ($options) { ?>
              <hr>
              <h3><?php echo $text_option; ?></h3>
              <?php foreach ($options as $option) { ?>
              <?php if ($option['type'] == 'select') { ?>
              <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <select onchange="ChangePrice()" name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
              <option value=""><?php echo $text_select; ?></option>
              <?php foreach ($option['product_option_value'] as $option_value) { ?>
              <option title="<?php if(!empty($option_value['price'])) { ?><?=$option_value['price']?> <?php } else { echo 0; }?>" value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
              <?php if ($option_value['price']) { ?>
              (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
              <?php } ?>
              </option>
              <?php } ?>
              </select>
              </div>
              <?php } ?>
              <?php if ($option['type'] == 'radio') { ?>
              <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
              <?php foreach ($option['product_option_value'] as $option_value) { ?>
              <div class="radio">
              <label>
              <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
              <?php echo $option_value['name']; ?>
              <?php if ($option_value['price']) { ?>
              (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
              <?php } ?>
              </label>
              </div>
              <?php } ?>
              </div>
              </div>
              <?php } ?>
              <?php if ($option['type'] == 'checkbox') { ?>
              <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
              <?php foreach ($option['product_option_value'] as $option_value) { ?>
              <div class="checkbox">
              <label>
              <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
              <?php echo $option_value['name']; ?>
              <?php if ($option_value['price']) { ?>
              (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
              <?php } ?>
              </label>
              </div>
              <?php } ?>
              </div>
              </div>
              <?php } ?>
              <?php if ($option['type'] == 'image') { ?>
              <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
              <?php foreach ($option['product_option_value'] as $option_value) { ?>
              <div class="radio">
              <label>
              <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
              <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> <?php echo $option_value['name']; ?>
              <?php if ($option_value['price']) { ?>
              (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
              <?php } ?>
              </label>
              </div>
              <?php } ?>
              </div>
              </div>
              <?php } ?>
              <?php if ($option['type'] == 'text') { ?>
              <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
              </div>
              <?php } ?>
              <?php if ($option['type'] == 'textarea') { ?>
              <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
              </div>
              <?php } ?>
              <?php if ($option['type'] == 'file') { ?>
              <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default btn-block"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
              <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>" />
              </div>
              <?php } ?>
              <?php if ($option['type'] == 'date') { ?>
              <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group date">
              <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
              <span class="input-group-btn">
              <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
              </span></div>
              </div>
              <?php } ?>
              <?php if ($option['type'] == 'datetime') { ?>
              <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group datetime">
              <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
              <span class="input-group-btn">
              <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
              </span></div>
              </div>
              <?php } ?>
              <?php if ($option['type'] == 'time') { ?>
              <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group time">
              <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
              <span class="input-group-btn">
              <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
              </span></div>
              </div>
              <?php } ?>
              <?php } ?>
              <?php } ?>
              <?php if ($recurrings) { ?>
              <hr>
              <h3><?php echo $text_payment_recurring ?></h3>
              <div class="form-group required">

              <select name="recurring_id" class="form-control">
              <option value=""><?php echo $text_select; ?></option>
              <?php foreach ($recurrings as $recurring) { ?>
              <option value="<?php echo $recurring['recurring_id'] ?>"><?php echo $recurring['name'] ?></option>
              <?php } ?>
              </select>
              <div class="help-block" id="recurring-description"></div>
              </div>
              <?php } ?>
<!--               <div class="form-group">
              <label class="control-label" for="input-quantity"><?php //echo $entry_qty; ?></label>
              <input type="text" name="quantity" value="<?php //echo $minimum; ?>" size="2" id="input-quantity" class="form-control" />
              <input type="hidden" name="product_id" value="<?php //echo $product_id; ?>" />
              <br />
              <button type="button" id="button-cart" data-loading-text="<?php //echo $text_loading; ?>" class="btn btn-primary btn-lg btn-block"><?php //echo $button_cart; ?></button>
              </div> -->
              <?php if ($minimum > 1) { ?>
              <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $text_minimum; ?></div>
              <?php } ?>
              

          <div class="add-to-box">
                       
            <div class="add-to-cart">
              <label class="control-label" for="input-quantity"><?php echo $entry_qty; ?></label>
              <div class="pull-left">
                <div class="custom pull-left">
                    <button class="reduced items-count" onclick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty ) && qty > 0 ) result.value--;return false;" type="button">
                    <i class="icon-minus"> </i>
                    </button>  

                    <input type="text" name="quantity" value="<?php echo $minimum; ?>" size="2" id="qty" class="input-text qty" maxlength="12"/>
                    
                    <button class="increase items-count" onclick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty )) result.value++;return false;" type="button">
                    <i class="icon-plus"> </i>
                    </button>
                    
       

                    <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
                </div>
                </div> 

                <div class="pull-left">
                  <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="button btn-cart"><span><?php echo $button_cart; ?></span></button>
                </div>
              
            </div>
            
          <div class="email-addto-box">
          <ul class="add-to-links">
          <li><a class="link-wishlist" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product_id; ?>');">
          <span><?php echo $button_wishlist; ?></span>
          </a></li>
          <li><a class="link-compare"  title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product_id; ?>');">
          <span><?php echo $button_compare; ?></span>
          </a></li>
          </ul>
          </div>

          </div>

          <?php if ($review_status) { ?>
              <hr>
              <!-- AddThis Button BEGIN -->
              <div class="addthis_toolbox addthis_default_style"><a class="addthis_button_facebook_like" fb:like:layout="button_count"></a> <a class="addthis_button_tweet"></a> <a class="addthis_button_pinterest_pinit"></a> <a class="addthis_counter addthis_pill_style"></a></div>
              <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-515eeaf54693130e"></script>
              <!-- AddThis Button END -->
          <?php }?>    

</div>


            </div><!-- product-shop -->
            
           
          
          </div><!-- product essential -->
       </div><!-- product-view -->

       <?php if($products) { ?>
        <div class="related-slider col-lg-3 col-sm-4 col-md-3 col-xs-12 bounceInDown animated">
          <div class="slider-items-products">
              <div class="slider-items-products">
                <div class="related-block">
                <div class="new_title center"><h2><span><?php echo $text_related; ?></span></h2></div>
                <div id="related-products-slider" class="product-flexslider hidden-buttons">
                  <div class="slider-items slider-width-col4 products-grid">
                    <?php foreach ($products as $product) { ?>
        <div class="item">
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
          </div><!-- item -->
                    <?php } ?>
                  </div><!-- slider-items slider-width-col4 products-grid -->
                </div><!-- related-products-slider -->
                </div><!-- related-block -->
              </div><!-- slider-items-products -->             
          </div><!-- slider-items-products -->
        </div><!-- related-slider col-lg-3 col-sm-4 col-md-3 col-xs-12 bounceInDown animated -->
        <?php } ?>

          <div class="product-collateral col-lg-12 col-sm-12 col-xs-12 bounceInUp animated">
            <div class="add_info">
                          <ul id="product-detail-tab" class="nav nav-tabs product-tabs">
              <li class="active"> <a href="#product_tabs_description" data-toggle="tab"><?php echo $tab_description; ?></a> </li>
              
              <?php if ($attribute_groups) { ?>
              <li> <a href="#attribute_groups" data-toggle="tab"><?php echo $tab_attribute; ?></a> </li>
              <?php } ?>
              
              <?php if ($tags) { ?>
              <li><a href="#product_tabs_tags" data-toggle="tab"><?php echo $text_tags; ?></a></li>
              <?php }?>

              <?php if ($review_status) { ?>
              <li><a href="#reviews_tabs" data-toggle="tab"><?php echo $tab_review; ?></a></li>
              <?php } ?>


              
            </ul>

                      <div id="productTabContent" class="tab-content">
            
            <div class="tab-pane fade in active" id="product_tabs_description">
                <div class="std"><?php echo $description; ?></div>
            </div>

            <?php if ($attribute_groups) { ?>
            <div class="tab-pane fade" id="attribute_groups">
              <table class="table table-bordered">
              <?php foreach ($attribute_groups as $attribute_group) { ?>
              <thead>
              <tr>
              <td colspan="2"><strong><?php echo $attribute_group['name']; ?></strong></td>
              </tr>
              </thead>
              <tbody>
              <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
              <tr>
              <td><?php echo $attribute['name']; ?></td>
              <td><?php echo $attribute['text']; ?></td>
              </tr>
              <?php } ?>
              </tbody>
              <?php } ?>
              </table>
            </div>
            <?php } ?>

            <?php if ($tags) { ?>
            <div class="tab-pane fade" id="product_tabs_tags">
              <table class="table table-bordered">
                <?php for ($i = 0; $i < count($tags); $i++) { ?>
                <?php if ($i < (count($tags) - 1)) { ?>
                <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
                <?php } else { ?>
                <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
                <?php } ?>
                <?php } ?>
              </table> 
            </div>
            <?php } ?>

            <?php if ($review_status) { ?>
            <div class="tab-pane fade" id="reviews_tabs">
              <form class="form-horizontal">
                <div id="review"></div>
                <h2><?php echo $text_write; ?></h2>
                <?php if ($review_guest) { ?>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                    <input type="text" name="name" value="" id="input-name" class="form-control" />
                  </div>
                </div>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
                    <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
                    <div class="help-block"><?php echo $text_note; ?></div>
                  </div>
                </div>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label"><?php echo $entry_rating; ?></label>
                    &nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
                    <input type="radio" name="rating" value="1" />
                    &nbsp;
                    <input type="radio" name="rating" value="2" />
                    &nbsp;
                    <input type="radio" name="rating" value="3" />
                    &nbsp;
                    <input type="radio" name="rating" value="4" />
                    &nbsp;
                    <input type="radio" name="rating" value="5" />
                    &nbsp;<?php echo $entry_good; ?></div>
                </div>
                <?php if ($site_key) { ?>
                  <div class="form-group">
                    <div class="col-sm-12">
                      <div class="g-recaptcha" data-sitekey="<?php echo $site_key; ?>"></div>
                    </div>
                  </div>
                <?php } ?>
                <div class="buttons clearfix">
                  <div class="pull-right">
                    <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="button submit"><?php echo $button_continue; ?></button>
                  </div>
                </div>
                <?php } else { ?>
                <?php echo $text_login; ?>
                <?php } ?>
              </form>
            </div>
            <?php } ?>



          </div><!-- productTabContent -->

            </div><!-- add_info -->
          </div><!-- product-collateral -->

       
      </div>
      </div>
      </div>
    </section>


<?php echo $content_bottom; ?>
<script type="text/javascript">
    function ChangePrice(){



        var symbol = $("#def_price").val().substring(0,1);
        var new_price = $("select option:selected").attr('title');

        if(new_price.length > 1){
            new_price = parseFloat($("select option:selected").attr('title').substring(1,9));
        } else {
            new_price=0;
        }
    var  def_price = parseFloat($("#def_price").val().substring(1,9));
       $(".price").html(symbol+(new_price+def_price) );

    }

</script>
<script type="text/javascript"><!--
$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
  $.ajax({
    url: 'index.php?route=product/product/getRecurringDescription',
    type: 'post',
    data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
    dataType: 'json',
    beforeSend: function() {
      $('#recurring-description').html('');
    },
    success: function(json) {
      $('.alert, .text-danger').remove();

      if (json['success']) {
        $('#recurring-description').html(json['success']);
      }
    }
  });
});
//--></script>
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
  $.ajax({
    url: 'index.php?route=checkout/cart/add',
    type: 'post',
    data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
    dataType: 'json',
    beforeSend: function() {
      $('#button-cart').button('loading');
    },
    complete: function() {
      $('#button-cart').button('reset');
    },
    success: function(json) {
      $('.alert, .text-danger').remove();
      $('.form-group').removeClass('has-error');

      if (json['error']) {
        if (json['error']['option']) {
          for (i in json['error']['option']) {
            var element = $('#input-option' + i.replace('_', '-'));

            if (element.parent().hasClass('input-group')) {
              element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
            } else {
              element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
            }
          }
        }

        if (json['error']['recurring']) {
          $('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
        }

        // Highlight any found errors
        $('.text-danger').parent().addClass('has-error');
      }

      if (json['success']) {
        $('.breadcrumbs').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

         var myarr = [];
         var myarr = json['total'].split(" ");
        $('#cart .header > a .before-cart-total').html('<span id="cart-total">' + myarr['0'] + '</span>');

        $('html, body').animate({ scrollTop: 0 }, 'slow');

        $('#cart > ul').load('index.php?route=common/cart/info ul li');
      }
    }
  });
});
//--></script>
<script type="text/javascript"><!--
$('.date').datetimepicker({
  pickTime: false
});

$('.datetime').datetimepicker({
  pickDate: true,
  pickTime: true
});

$('.time').datetimepicker({
  pickDate: false
});

$('button[id^=\'button-upload\']').on('click', function() {
  var node = this;

  $('#form-upload').remove();

  $('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

  $('#form-upload input[name=\'file\']').trigger('click');

  if (typeof timer != 'undefined') {
      clearInterval(timer);
  }

  timer = setInterval(function() {
    if ($('#form-upload input[name=\'file\']').val() != '') {
      clearInterval(timer);

      $.ajax({
        url: 'index.php?route=tool/upload',
        type: 'post',
        dataType: 'json',
        data: new FormData($('#form-upload')[0]),
        cache: false,
        contentType: false,
        processData: false,
        beforeSend: function() {
          $(node).button('loading');
        },
        complete: function() {
          $(node).button('reset');
        },
        success: function(json) {
          $('.text-danger').remove();

          if (json['error']) {
            $(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
          }

          if (json['success']) {
            alert(json['success']);

            $(node).parent().find('input').attr('value', json['code']);
          }
        },
        error: function(xhr, ajaxOptions, thrownError) {
          alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
      });
    }
  }, 500);
});
//--></script>
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
  e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
  $.ajax({
    url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
    type: 'post',
    dataType: 'json',
    data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : ''),
    beforeSend: function() {
      $('#button-review').button('loading');
    },
    complete: function() {
      $('#button-review').button('reset');
    },
    success: function(json) {
      $('.alert-success, .alert-danger').remove();

      if (json['error']) {
        $('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
      }

      if (json['success']) {
        $('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

        $('input[name=\'name\']').val('');
        $('textarea[name=\'text\']').val('');
        $('input[name=\'rating\']:checked').prop('checked', false);
      }
    }
  });
});

$(document).ready(function() {
  $('.thumbnails').magnificPopup({
    type:'image',
    delegate: 'a',
    gallery: {
      enabled:true
    }
  });
});
//--></script>
<?php echo $footer; ?>