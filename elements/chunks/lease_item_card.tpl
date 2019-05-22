<div class="lease__col  lease__col--page">
  <a href="[[+uri]]" class="lease__item">
    <span class="overlay  lease__item-overlay"></span>
    <div class="lease__item-img">
      <picture>
        <source data-srcset="[[+tv.imageMain:phpthumbon=`w=400&h=300&zc=1&f=webp&fltr=usm`]]" media="(min-width: 992px)" type="image/webp">
        <source data-srcset="[[+tv.imageMain:phpthumbon=`w=400&h=300&zc=1&f=jpeg&fltr=usm`]]" media="(min-width: 992px)">
        <source data-srcset="[[+tv.imageMain:phpthumbon=`w=480&h=360&zc=1&f=webp&fltr=usm`]]" media="(min-width: 768px)" type="image/webp">
        <source data-srcset="[[+tv.imageMain:phpthumbon=`w=480&h=360&zc=1&f=jpeg&fltr=usm`]]" media="(min-width: 768px)">
        <source data-srcset="[[+tv.imageMain:phpthumbon=`w=640&h=480&zc=1&f=webp&fltr=usm`]]" media="(min-width: 480px)" type="image/webp">
        <source data-srcset="[[+tv.imageMain:phpthumbon=`w=640&h=480&zc=1&f=jpeg&fltr=usm`]]" media="(min-width: 480px)">
        <source data-srcset="[[+tv.imageMain:phpthumbon=`w=450&h=338&zc=1&f=webp&fltr=usm`]]" type="image/webp">
        <img class="b-lazy" data-src="[[+tv.imageMain:phpthumbon=`w=450&h=338&zc=1&f=jpeg&fltr=usm`]]" alt="[[+longtitle:default=`[[+pagetitle]]`]]" width="450" height="338">
      </picture>
    </div>
    <div class="lease__item-text">
      <h4 class="lease__item-title">[[+longtitle:default=`[[+pagetitle]]`]]</h4>
      [[+introtext:ne=``:then=`
        <span class="publishedon  publishedon--bottom">[[+introtext:ellipsis=`10`]]</span>
      `:else=`&nbsp;`]]
      [[+content:notempty=`<div class="lease__item-descr">[[+content:ellipsis=`81`]]</div>`]]
    </div>
  </a>
</div>
