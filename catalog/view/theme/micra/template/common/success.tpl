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
<div class="main-container col2-right-layout wow bounceInUp animated">
  <div class="main container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <div class="page-title"><h1><?php echo $heading_title; ?></h1></div>
      <?php echo $text_message; ?>
      <div class="buttons">
        <div class=""><a href="<?php echo $continue; ?>" class=""><button class="button continue"><?php echo $button_continue; ?></button></a></div>
      </div>
      </div>
    <?php echo $column_right; ?></div><?php echo $content_bottom; ?>
</div>
</div>
<?php echo $footer; ?>