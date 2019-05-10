$('.language-select').click(function(){
  $(this).toggleClass('language-select--open');
})

$('.language-select').hover(function(){
  $(this).toggleClass('language-select--open');
})

$('.language-select li').click(function(){
var setLang = $('.language-select').data('location'),
    dataLangSelect = $(this).data('lang')
    $('.language-select').data('location', dataLangSelect);
    $('.language-select li').removeClass('active');
    $(this).toggleClass('active');
})
