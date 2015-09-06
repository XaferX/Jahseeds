<div class="side-nav-categories">
  <div class="block-title"><?php echo $heading_title; ?></div>
  <div class="box-content box-category">
    <ul>
      <?php foreach ($categories as $category) { ?>
      <li>
        <a href="<?php echo $category['href']; ?>" class="active"><?php echo $category['name']; ?></a>
          </li>
          <?php } ?>
        </ul>

  </div>
</div>