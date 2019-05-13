// Если на проекте jQuery
// $( document ).ready(function() {
//   // code
// });

// Изоляция без jQuery
// (function(){
//   // code
// }());

// На проекте нет jQuery, но хочется $( document ).ready...
// function ready(fn) {
//   if (document.attachEvent ? document.readyState === "complete" : document.readyState !== "loading"){
//     fn();
//   } else {
//     document.addEventListener('DOMContentLoaded', fn);
//   }
// }
//
// ready(function(){
//   // code
// });

(function(){

  var newsSlider = new Swiper ('.news__container', {
    preloadImages: false,
    lazy: true,
    watchSlidesVisibility: true,
    spaceBetween: 20,
    slidesPerView: 1,
    grabCursor: true,
    navigation: {
      nextEl: '.btn--next',
      prevEl: '.btn--prev',
    },
    breakpointsInverse: true,
    breakpoints: {
      // when window width is >= 768px
      320: {
        slidesPerView: 1
      },
      768: {
        slidesPerView: 2
      },
      992: {
        slidesPerView: 3
      }
    }
  });

  var partnersSlider = new Swiper ('.partners__container', {
    preloadImages: false,
    lazy: true,
    watchSlidesVisibility: true,
    spaceBetween: 20,
    slidesPerView: 2,
    grabCursor: true,
    /*pagination: {
      el: '.swiper-pagination',
      type: 'progressbar',
    },*/
    breakpointsInverse: true,
    breakpoints: {
      // when window width is >= 768px
      480: {
        slidesPerView: 3
      },
      768: {
        slidesPerView: 4
      },
      992: {
        slidesPerView: 5
      },
      1280: {
        slidesPerView: 6
      }
    }
  });

}());

(function(){
  // code
  var bLazy = new Blazy({
    selector: '.b-lazy'
  });

}());

