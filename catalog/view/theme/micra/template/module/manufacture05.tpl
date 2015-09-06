<div class="side-nav-categories">
  <div class="block-title"><?php echo $heading_title; ?></div>
  <div class="box-content box-category">
      <?php foreach ($categories as $category) { ?>
      <h2 id="<?php echo $category['name']; ?>"><?php echo $category['name']; ?></h2>
      <?php if ($category['manufacturer']) { ?>
      <?php foreach (array_chunk($category['manufacturer'], 4) as $manufacturers) { ?>
      <div class="row">
          <?php foreach ($manufacturers as $manufacturer) { ?>
          <div class="col-sm-3"><a href="<?php echo $manufacturer['href']; ?>"><?php echo $manufacturer['name']; ?></a></div>
          <?php } ?>
      </div>
      <?php } ?>
      <?php } ?>
      <?php } ?>


   
  </div>
</div>