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
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
        <fieldset>
          <div class="form-group">
            <label class="col-sm-2 control-label"><?php echo $entry_newsletter; ?></label>
            <div class="col-sm-10">
              <?php if ($newsletter) { ?>
              <label class="radio-inline">
                <input type="radio" name="newsletter" value="1" checked="checked" />
                <?php echo $text_yes; ?> </label>
              <label class="radio-inline">
                <input type="radio" name="newsletter" value="0" />
                <?php echo $text_no; ?></label>
              <?php } else { ?>
              <label class="radio-inline">
                <input type="radio" name="newsletter" value="1" />
                <?php echo $text_yes; ?> </label>
              <label class="radio-inline">
                <input type="radio" name="newsletter" value="0" checked="checked" />
                <?php echo $text_no; ?></label>
              <?php } ?>
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