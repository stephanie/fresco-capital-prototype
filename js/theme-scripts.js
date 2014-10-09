//to maintain business card dimensions
var $company_box = $('.company-box');

function setCompanyBoxHeight() {
  if ($company_box.length > 0) {
    $width = $company_box.width();
    $height = $width / 1.667;

    $company_box.css('height', $height + 'px');
  }
}

$(document).ready(function() {

  $('.home-slider').slick({

  });

  setCompanyBoxHeight();

});// Ready

$(window).resize(function() {

  setCompanyBoxHeight();

});// Window resize