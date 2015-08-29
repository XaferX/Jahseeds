<?php if (count($currencies) > 1) { ?>
<div class="dropdown block-currency-wrapper">
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="currency">

    <a class="block-currency dropdown-toggle" data-toggle="dropdown">
    <?php foreach ($currencies as $currency) { ?>
    <?php if ($currency['symbol_left'] && $currency['code'] == $code) { ?>
    <!-- <strong><?php //echo $currency['symbol_left']; ?></strong> -->
     <?php echo $currency['code'];?><span class="caret"></span>
    <?php } elseif ($currency['symbol_right'] && $currency['code'] == $code) { ?>
    <!-- <strong><?php //echo $currency['symbol_right']; ?></strong> -->
     <?php echo $currency['code'];?><span class="caret"></span>
     <?php } ?>
    <?php } ?>
    </a>

    <ul class="dropdown-menu">
      <?php foreach ($currencies as $currency) { ?>
      <?php if ($currency['symbol_left']) { ?>
      <li><a class="currency-select btn btn-link btn-block" name="<?php echo $currency['code']; ?>"><?php echo $currency['symbol_left']; ?> <?php echo $currency['title']; ?></a></li>
      <?php } else { ?>
      <li><a class="currency-select btn btn-link btn-block" name="<?php echo $currency['code']; ?>"><?php echo $currency['symbol_right']; ?> <?php echo $currency['title']; ?></a></li>
      <?php } ?>
      <?php } ?>
    </ul>
  
  <input type="hidden" name="code" value="" />
  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>
</div>
<?php } ?>
