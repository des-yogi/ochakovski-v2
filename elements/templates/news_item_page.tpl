{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main  main--bg" role="main">
    <article class="news-page">
      <div class="container">
        <div class="row  row--btn">
          <div class="news-page__col-img">

            <a href="[[~[[*parent]]]]" class="btn  news-page__back-btn">
              <span class="news-page__icon">
                <svg width="10" height="18">
                  <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="assets/img/sprite-svg.svg#arrow-back"/>
                </svg>
              </span>
              <span class="news-page__name-btn">
                [[$langs? &uk=`Всі новини` &ru=`Все новости`]]
              </span>
            </a>

          </div>
        </div>
      </div>
      <div class="container">
        <div class="row  news-page__article">
          <div class="news-page__col-img">
            <div class="news-page__img">
              <picture>
                <source srcset="[[*imageMain:phpthumbon=`w=550&h=412&zc=1&f=webp&fltr=usm`]]" media="(min-width: 992px)" type="image/webp">
                <source srcset="[[*imageMain:phpthumbon=`w=550&h=412&zc=1&f=jpeg&fltr=usm`]]" media="(min-width: 992px)">
                <source srcset="[[*imageMain:phpthumbon=`w=790&h=592&zc=1&f=webp&fltr=usm`]]" media="(min-width: 768px)" type="image/webp">
                <source srcset="[[*imageMain:phpthumbon=`w=790&h=592&zc=1&f=jpeg&fltr=usm`]]" media="(min-width: 768px)">
                <source srcset="[[*imageMain:phpthumbon=`w=640&h=480&zc=1&f=webp&fltr=usm`]]" type="image/webp" media="(min-width: 480px)">
                <source srcset="[[*imageMain:phpthumbon=`w=640&h=480&zc=1&f=jpeg&fltr=usm`]]" media="(min-width: 480px)">
                <source srcset="[[*imageMain:phpthumbon=`w=450&h=338&zc=1&f=webp&fltr=usm`]]" type="image/webp">
                <img src="[[*imageMain:phpthumbon=`w=450&h=338&zc=1&f=jpeg&fltr=usm`]]" alt="[[*longtitle:default=`[[*pagetitle]]`]]" width="450" height="338">
              </picture>
            </div>
          </div>
          <div class="news-page__col-text">
            <div class="news-page__text">
              <span class="publishedon publishedon--top-article">[[*publishedon:date=`%d.%m.%Y`]]</span>
              <h1>[[*longtitle:default=`[[*pagetitle]]`]]</h1>
              [[*content]]
            </div>
          </div>
        </div>
      </div>
    </article>
  </main>
{/block}
