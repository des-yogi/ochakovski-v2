{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main  main--bg" role="main">
    <article class="news-page">
      <div class="container">
        <div class="row  row--btn">
          <div class="news-page__col-img  news-page__col-img--lease">
            <a href="[[~[[*parent]]]]" class="btn  news-page__back-btn">
              <span class="news-page__icon">
                <svg width="10" height="18">
                  <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="assets/img/sprite-svg.svg#arrow-back"/>
                </svg>
              </span>
              <span class="news-page__name-btn">[[$langs? &uk=`Всі приміщення` &ru=`Все помещения`]]</span>
            </a>
          </div>
        </div>
      </div>
      <div class="container">
        <div class="row  news-page__article">
          <div class="news-page__col-img  news-page__col-img--lease">
            [[!getImageList?
            &tvname=`office_img`
            &tpl=`office_img_tpl`
            &docid=`[[*id]]`
            &limit=`5`
            ]]
          </div>
          <div class="news-page__col-text  news-page__col-text--lease">
            <div class="news-page__text">
              [[*introtext:notempty=`<span class="publishedon  publishedon--top-article">[[*introtext]]</span>`]]
              <h1>[[*longtitle:default=`[[*pagetitle]]`]]</h1>
              <h3>[[$langs? &uk=`Комерційні умови` &ru=`Коммерческие условия`]]:</h3>

              <dl class="news-page__lease-list">
                [[!getImageList?
                &tvname=`lease_options_list`
                &tpl=`lease_options_list_tpl`
                &docid=`[[*id]]`
                &limit=`20`
                ]]
              </dl>

              [[*floor_plan:notempty=`
                <a class="news-page__office-plan" href="[[*floor_plan]]" data-fancybox data-caption="План приміщення">
                <figure>
                  <picture>
                    <source data-srcset="[[*floor_plan:phpthumbon=`w=675&h=506&zc=1&f=webp&fltr=usm`]]" media="(min-width: 992px)" type="image/webp">
                    <source data-srcset="[[*floor_plan:phpthumbon=`w=675&h=506&zc=1&f=jpeg&fltr=usm`]]" media="(min-width: 992px)">
                    <source data-srcset="[[*floor_plan:phpthumbon=`w=500&h=375&zc=1&f=webp&fltr=usm`]]" media="(min-width: 768px)" type="image/webp">
                    <source data-srcset="[[*floor_plan:phpthumbon=`w=500&h=375&zc=1&f=jpeg&fltr=usm`]]" media="(min-width: 768px)">
                    <source data-srcset="[[*floor_plan:phpthumbon=`w=640&h=480&zc=1&f=webp&fltr=usm`]]" media="(min-width: 480px)" type="image/webp">
                    <source data-srcset="[[*floor_plan:phpthumbon=`w=640&h=480&zc=1&f=jpeg&fltr=usm`]]" media="(min-width: 480px)">
                    <source data-srcset="[[*floor_plan:phpthumbon=`w=450&h=338&zc=1&f=webp&fltr=usm`]]" type="image/webp">
                    <img class="b-lazy" data-src="[[*floor_plan:phpthumbon=`w=450&h=338&zc=1&f=jpeg&fltr=usm`]]" alt="[[*longtitle:default=`[[*pagetitle]]`]]" width="450" height="338">
                  </picture>
                  <figcaption>[[$langs? &uk=`План приміщення` &ru=`План помещения`]]</figcaption>
                </figure>
              </a>
              `]]

              [[*content:notempty=`<div style="margin-top: 30px;">[[*content]]</div>`]]

            </div>
          </div>
        </div>
      </div>
    </article>
  </main>
{/block}
