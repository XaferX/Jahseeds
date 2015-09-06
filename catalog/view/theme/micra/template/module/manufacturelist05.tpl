<div class="side-nav-categories">
  <div class="block-title"><?php echo $heading_title; ?></div>
  <div class="box-content box-category">
      <?php foreach ($categories as $category) { ?>
      <?php if ($category['manufacturelistr']) { ?>
      <?php foreach (array_chunk($category['manufacturelistr'], 4) as $manufacturelistrs) { ?>
      
          <ul>


          <?php foreach ($manufacturelistrs as $manufacturelistr) { ?>
          <li>
              <a href="<?php echo $manufacturelistr['href']; ?>"><?php echo $manufacturelistr['name']; ?></a>
          </li>

          <?php } ?>
          </ul>

      <?php } ?>
      <?php } ?>
      <?php } ?>



  </div>
</div>