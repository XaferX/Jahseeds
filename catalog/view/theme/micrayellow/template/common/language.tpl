<?php if (count($languages) > 1) { ?>
<div class="dropdown block-language-wrapper">
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="language">
  
    <div class="block-language dropdown-toggle" data-toggle="dropdown">
    <?php foreach ($languages as $language) { ?>
    <?php if ($language['code'] == $code) { ?>
    <img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>">
    <?php echo substr($language['name'],0,2); ?>
    <span class="caret"></span>
    <?php } ?>
    <?php } ?>
    </div>
    <ul class="dropdown-menu">
      <?php foreach ($languages as $language) { ?>
      <li><a href="<?php echo $language['code']; ?>"><img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
      <?php } ?>
    </ul>
 
  <input type="hidden" name="code" value="" />
  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>
</div><!-- dropdown block-language-wrapper -->
<?php } ?>
