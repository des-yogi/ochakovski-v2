<div class="swiper-slide  news__slide">
  <a href="[[+uri]]" class="news-card">
    <span class="overlay"></span>
    <div class="news-card__img">
      <picture>
        <source data-srcset="[[+tv.imageMain:phpthumbon=`w=400&h=300&zc=1&f=webp&fltr=usm`]]" media="(min-width: 992px)" type="image/webp">
        <source data-srcset="[[+tv.imageMain:phpthumbon=`w=400&h=300&zc=1&f=jpeg&fltr=usm`]]" media="(min-width: 992px)">
        <source data-srcset="[[+tv.imageMain:phpthumbon=`w=450&h=338&zc=1&f=webp&fltr=usm`]]" media="(min-width: 768px)" type="image/webp">
        <source data-srcset="[[+tv.imageMain:phpthumbon=`w=450&h=338&zc=1&f=jpeg&fltr=usm`]]" media="(min-width: 768px)">
        <source data-srcset="[[+tv.imageMain:phpthumbon=`w=640&h=480&zc=1&f=webp&fltr=usm`]]" media="(min-width: 480px)" type="image/webp">
        <source data-srcset="[[+tv.imageMain:phpthumbon=`w=640&h=480&zc=1&f=jpeg&fltr=usm`]]" media="(min-width: 480px)">
        <source data-srcset="[[+tv.imageMain:phpthumbon=`w=450&h=338&zc=1&f=webp&fltr=usm`]]" type="image/webp">
        <img class="swiper-lazy" data-src="[[+tv.imageMain:phpthumbon=`w=450&h=338&zc=1&f=jpeg&fltr=usm`]]" alt="[[+longtitle:default=`[[+pagetitle]]`]]" width="450" height="338">
      </picture>
    </div>
    <div class="news-card__text">
      <h4 class="news-card__title">[[+longtitle:default=`[[+pagetitle]]`]]</h4>
      <span class="news-card__publishedon  publishedon">[[+publishedon:date=`%d.%m.%Y`]]</span>
    </div>
    <div class="swiper-lazy-preloader"></div>
  </a>
</div>
