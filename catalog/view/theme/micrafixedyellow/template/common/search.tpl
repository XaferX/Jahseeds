<!-- <div class="collapse navbar-collapse">
              <div class="navbar-form" role="search">
                <div class="input-group">
                  <input type="text" class="form-control b" placeholder="Search" name="search">
                  <span class="input-group-btn">
                  <button type="reset" class="btn btn-default a"> <span class="glyphicon glyphicon-remove"> <span class="sr-only">Close</span> </span> </button>
                  <button type="text" class="btn btn-default"> <span class="glyphicon glyphicon-search"> <span class="sr-only">Search</span> </span> </button>
                  </span> </div>
              </div>
            </div> -->

<div id="form-search" class="search-bar">
   <div  id="search_mini_form">                     
        <input type="text" maxlength="128" value="women" placeholder="<?php echo $text_search; ?>" name="search" class="search-bar-input" autocomplete="off">
        <div class="search-icon a" title="Search"><span></span></div>
        <button class="search-icon b" title="Search" style="display:none"><span></span></button>

       
      
   </div>
 </div>
<script type="text/javascript">
            new UISearch(document.getElementById('form-search'));
</script>             
<script>
$('.search-bar .a').click(function() {
//$('#form-search').attr('class','search-bar search-bar-open');
$('#form-search .a').hide();
$('#form-search .b').show();
});
</script>

<script>
// jQuery(document).ready(function(){
// $('.glyphicon-search').click(function() {
// $('.navbar-form').attr('class','navbar-form active');
//$('#form-search .a').hide();
//$('#form-search .b').show();
// });
// });
</script>


<!-- <div id="form-search" class="search-bar">
   <a  id="search_mini_form">                     
        <input type="text" maxlength="128" value="" placeholder="<?php //echo $text_search; ?>" name="search" class="search-bar-input" autocomplete="off">
        <div class="search-icon a" title="Search"><span></span></div>
        <button class="search-icon b" title="Search" style="display:none"><span></span></button>
  </a>
 </div> -->
<script>
// $('.search-bar .a').click(function() {
// //$('#form-search').attr('class','search-bar search-bar-open');
// $('#form-search .a').hide();
// $('#form-search .b').show();
// });
</script>