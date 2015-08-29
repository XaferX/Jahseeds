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
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
  <?php } ?>
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
      <p><?php echo $text_email; ?></p>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
        <fieldset>
          <legend><?php echo $text_your_email; ?></legend>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-email"><?php echo $entry_email; ?></label>
            <div class="col-sm-10">
              <input type="text" name="email" value="" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
            </div>
          </div>
        </fieldset>
        <div class="buttons clearfix">
          <div class="left">
            <a href="<?php echo $back; ?>"><button type="button" class="button back"><?php echo $button_back; ?></button></a>&nbsp;        
            <button type="submit" class="button continue pull-right"><?php echo $button_continue; ?></button>
          </div>
        </div>
      </form>
      </div>
    <?php echo $column_right; ?></div><?php echo $content_bottom; ?>
    </div>
</div>
<?php echo $footer; ?>