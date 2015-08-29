<?php global $config; 
$facebookurl=$config->get('magikmicra_fb');
$twitterurl=$config->get('magikmicra_twitter');
$gplusurl=$config->get('magikmicra_gglplus');
$rssurl=$config->get('magikmicra_rss');
$pintresturl=$config->get('magikmicra_pinterest');
$linkedinurl=$config->get('magikmicra_linkedin');
$youtubeurl=$config->get('magikmicra_youtube');
?>
<?php if (isset($this->request->get['route'])) { 
      $route = $this->request->get['route']; } 
      else { $route = 'common/home'; } ?>


<?php if($config->get('magikmicra_ffb_ed')==1){
      echo html_entity_decode($config->get('magikmicra_ffb_content'));
      ?><?php }?>
<footer class="">
<div class="newsletter-wrap">
  <div class="container">
    <div class="row">
    <div class="col-xs-12">
      <div class="newsletter">

      <?php echo html_entity_decode($text_newsletter_info);?>
      <?php if($config->get('magikmicra_newsletter')==1){
      echo html_entity_decode($config->get('magikmicra_newslettercontent'));
      ?><?php }?>
      </div>
    </div>
    </div><!-- row -->
  </div>
</div><!-- newsletter-wrap -->

<div class="footer-middle">
  <div class="container">
    <div class="row">
      <div class="col-md-3 col-sm-4">
             <?php if($config->get('magikmicra_footer_cb')==1){
            echo html_entity_decode($config->get('magikmicra_footer_cbcontent'));}?> 
      </div>
      
      <div class="col-md-2 col-sm-4">
        <?php if ($informations) { ?>
        <h4><?php echo $text_information; ?></h4>
        <ul class="links">
        <?php $i=0;$cnt=count($informations); foreach ($informations as $information) { ?>
        <li class="<?php if($i==0){echo 'first';} if($i==$cnt){echo 'last';} ?>"><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
        <?php $i++;} ?>
        </ul>
        <?php } ?>
      </div>

      <div class="col-md-2 col-sm-4">
        <h4><?php echo $text_service; ?></h4>
      <ul class="links">
          <li class="first"><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
          <li class="last"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>"><?php echo $text_account; ?></a></li>
        </ul> 
      </div>

      <div class="col-md-2 col-sm-4">
        <h4><?php echo $text_extra; ?></h4>
      <ul class="links">
          <li class="first"><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
          <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li class="last"><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
        </ul>
      </div>


      <div class="col-md-3 col-sm-4">
            <h4><?php echo $text_contact_us;?></h4>
            <div class="contacts-info">

              <?php if ($config->get('magikmicra_address')):?>
              <address>
              <i class="add-icon">&nbsp;</i>
              <?php echo wordwrap($config->get('magikmicra_address'),25,"<br>");  ?>
              </address>
              <?php endif;?>

              <?php if ($config->get('magikmicra_phone')) : ?>
              <div class="phone-footer">
                <i class="phone-icon">&nbsp;</i> 
                <?php echo $config->get('magikmicra_phone'); ?>
              </div>
              <?php endif;?>
              
              <?php if ($config->get('magikmicra_email')): ?>  
              <div class="email-footer">
                <i class="email-icon">&nbsp;</i> 
                <a href="#"><?php echo $config->get('magikmicra_email'); ?></a> 
              </div>
              <?php endif; ?>

            </div>
          </div>

    </div><!-- row -->
  </div>
</div><!-- footer-middle -->

<div class="footer-top">
      <div class="container">
        <div class="row">
          <div class="col-xs-12 col-sm-6">
            <div class="payment-accept"> 
              <img alt="payment1" src="catalog/view/theme/micra/image/payment-1.png"> 
              <img alt="payment2" src="catalog/view/theme/micra/image/payment-2.png"> 
              <img alt="payment3" src="catalog/view/theme/micra/image/payment-3.png"> 
              <img alt="payment4" src="catalog/view/theme/micra/image/payment-4.png">
            </div>
          </div>
          <div class="col-xs-12 col-sm-6">
            <div class="social">
              <ul>
              <?php if($facebookurl!='') { ?>
              <li class="fb"><a href="<?php echo $facebookurl; ?>" target="_blank"></a></li>
              <?php } ?>
              <?php if($twitterurl!='') { ?>
              <li class="tw"><a href="<?php echo $twitterurl; ?>" target="_blank"></a></li>
              <?php } ?>
              <?php if($gplusurl!='') { ?>
              <li class="googleplus"><a href="<?php echo $gplusurl; ?>" target="_blank"></a></li>
              <?php } ?>
              <?php if($rssurl!='') { ?>
              <li class="rss"><a href="<?php echo $rssurl; ?>" target="_blank"></a></li>
              <?php } ?>
              <?php if($pintresturl!='') { ?>
              <li class="pintrest"><a href="<?php echo $pintresturl; ?>" target="_blank"></a></li>
              <?php } ?>
              <?php if($linkedinurl!='') { ?>
              <li class="linkedin"><a href="<?php echo $linkedinurl; ?>" target="_blank"></a></li>
              <?php } ?>
              <?php if($youtubeurl!='') { ?>
              <li class="youtube"><a href="<?php echo $youtubeurl; ?>" target="_blank"></a></li>
              <?php } ?>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>

<div class="footer-bottom">
<div class="container">
<div class="row">
    
      <?php
        if(trim($config->get('magikmicra_powerby')) != '') {
          echo html_entity_decode($config->get('magikmicra_powerby'));
        } else {
          echo $powered;
        }
      ?>
   
</div>
</div>
</div>
<div id="mgkquickview">
<div id="magikloading" style="display:none;text-align:center;margin-top:400px;"><img src="catalog/view/theme/micra/image/loading.gif" alt="loading">
</div></div>
</footer>
<?php if($route=='common/home' || $route=='home') { } else {?> </div><!-- page --> <?php } ?>
<div id="mobile-menu">
  <ul>
    <?php if($config->get('magikmicra_home_option')==1){ ?>
      <li>
        <div class="home"><a href="<?php echo $home;?>" class="active"><i class="icon-home"></i>Home</a></div>
      </li><?php }?>

      <?php foreach ($categories1 as $category) { ?>
      <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
        <?php if ($category['children']) { ?>
        <ul>
          <?php for($i=0;$i<count($category['children']);$i++){ ?>
          <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a>
              <?php if($category['children'][$i]['children']) {?>
              <ul>
                <?php for($j=0;$j<count($category['children'][$i]['children']);$j++) { ?>
                <li><a href="<?php echo $category['children'][$i]['children'][$j]['href']; ?>"><?php echo $category['children'][$i]['children'][$j]['name']; ?></a></li>
                <?php }?>
              </ul>
              <?php }?> 
          </li>
          <?php }?>
        </ul>
        <?php }?>
      </li>
      <?php } ?>
  </ul>
</div><!-- mobile-menu -->



<?php if($config->get('magikmicra_scroll_totop') == 1) { ?>
<script type="text/javascript">
var isTouchDevice = ('ontouchstart' in window) || (navigator.msMaxTouchPoints > 0);
jQuery(window).on("load", function() {

if (isTouchDevice)
{
jQuery('#nav a.level-top').click(function(e) {
$t = jQuery(this);
$parent = $t.parent();
if ($parent.hasClass('parent'))
{
if ( !$t.hasClass('menu-ready'))
{                    
jQuery('#nav a.level-top').removeClass('menu-ready');
$t.addClass('menu-ready');
return false;
}
else
{
$t.removeClass('menu-ready');
}
}
});
}
//on load
jQuery().UItoTop();


}); //end: on load

//]]>


/*--------| UItoTop jQuery Plugin 1.1-------------------*/
(function($){
jQuery.fn.UItoTop = function(options) {

var defaults = {
text: '',
min: 200,
inDelay:600,
outDelay:400,
containerID: 'toTop',
containerHoverID: 'toTopHover',
scrollSpeed: 1200,
easingType: 'linear'
};

var settings = $.extend(defaults, options);
var containerIDhash = '#' + settings.containerID;
var containerHoverIDHash = '#'+settings.containerHoverID;

jQuery('body').append('<a href="#" id="'+settings.containerID+'">'+settings.text+'</a>');
jQuery(containerIDhash).hide().click(function(){
jQuery('html, body').animate({scrollTop:0}, settings.scrollSpeed, settings.easingType);
jQuery('#'+settings.containerHoverID, this).stop().animate({'opacity': 0 }, settings.inDelay, settings.easingType);
return false;
})
.prepend('<span id="'+settings.containerHoverID+'"></span>')
.hover(function() {
jQuery(containerHoverIDHash, this).stop().animate({
'opacity': 1
}, 600, 'linear');
}, function() { 
jQuery(containerHoverIDHash, this).stop().animate({
'opacity': 0
}, 700, 'linear');
});

jQuery(window).scroll(function() {
var sd = $(window).scrollTop();
if(typeof document.body.style.maxHeight === "undefined") {
jQuery(containerIDhash).css({
'position': 'absolute',
'top': $(window).scrollTop() + $(window).height() - 50
});
}
if ( sd > settings.min ) 
jQuery(containerIDhash).fadeIn(settings.inDelay);
else 
jQuery(containerIDhash).fadeOut(settings.Outdelay);
});

};
})(jQuery);


/*--------| End UItoTop -------------------*/
</script>
<?php }?>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->

</body></html>