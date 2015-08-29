<?php
class micra_ControllerProductProduct extends ControllerProductProduct {

    public function index() {
    $this->document->addScript('catalog/view/theme/micra/js/cloud-zoom.js');
    $this->document->addScript('catalog/view/theme/micra/js/jquery.flexslider.js');
    $this->document->addStyle('catalog/view/theme/micra/stylesheet/flexslider.css');
    $this->document->addStyle('catalog/view/javascript/jquery/owl-carousel/owl.carousel.css');
    $this->document->addScript('catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js');
    // call parent method
    return parent::index();
}
} 