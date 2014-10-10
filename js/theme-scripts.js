//to maintain business card dimensions
var $company_box = $('.company-box');
var $perspective_box = $('.perspective-box');
var $home_box = $('.home-box');
var $member_box = $('.team-member-box');
var $width, $height, $elementHeights, $maxHeight;

function setBoxHeight(element, ratio) {
  if (element.length > 0) {
    $width = element.width();
    $height = $width / ratio;

    element.height($height);
  }
}

function alignBoxHeight(element) {
  // Get an array of all element heights
  $elementHeights = element.map(function() {
    return $(this).height();
  }).get();

  // Math.max takes a variable number of arguments
  // `apply` is equivalent to passing each height as an argument
 $maxHeight = Math.max.apply(null, $elementHeights);

  // Set each height to the max height
  element.height($maxHeight);
}


$(document).ready(function() {

  $('.home-slider').slick({
  });
  
  $('.process-slider').slick({
  });

  setBoxHeight($company_box, 1.667);
  setBoxHeight($perspective_box, 1);

  // alignBoxHeight($home_box);
  // alignBoxHeight($member_box);

});// Ready

$(window).resize(function() {

  setBoxHeight($company_box, 1.667);
  setBoxHeight($perspective_box, 1);

  // alignBoxHeight($home_box);
  // alignBoxHeight($member_box);

});// Window resize