{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main  main--bg" role="main">
    <article class="service-page">
      <div class="container">
        <header class="header-block">
          <h1>[[*longtitle:default=`[[*pagetitle]]`]]</h1>
          [[*introtext:notempty=`
            <div class="header-block__intro">
              <p>[[*introtext]]</p>
            </div>
          `]]
        </header>
      </div>
      <div class="container">
        <div class="service-descr">
          <div class="service-descr__img">
            <picture>
              <source data-srcset="[[*service_header_img:phpthumbon=`w=1120&h=300&zc=1&f=webp&fltr=usm`]]" media="(min-width: 1280px)" type="image/webp">
              <source data-srcset="[[*service_header_img:phpthumbon=`w=1120&h=300&zc=1&f=jpeg&fltr=usm`]]" media="(min-width: 1280px)">
              <source data-srcset="[[*service_header_img:phpthumbon=`w=1240&h=250&zc=1&f=webp&fltr=usm`]]" media="(min-width: 992px)" type="image/webp">
              <source data-srcset="[[*service_header_img:phpthumbon=`w=1240&h=250&zc=1&f=jpeg&fltr=usm`]]" media="(min-width: 992px)">
              <source data-srcset="[[*service_header_img:phpthumbon=`w=950&h=200&zc=1&f=webp&fltr=usm`]]" media="(min-width: 768px)" type="image/webp">
              <source data-srcset="[[*service_header_img:phpthumbon=`w=950&h=200&zc=1&f=jpeg&fltr=usm`]]" media="(min-width: 768px)">
              <source data-srcset="[[*service_header_img:phpthumbon=`w=640&h=150&zc=1&f=webp&fltr=usm`]]" media="(min-width: 480px)" type="image/webp">
              <source data-srcset="[[*service_header_img:phpthumbon=`w=640&h=150&zc=1&f=jpeg&fltr=usm`]]" media="(min-width: 480px)">
              <source data-srcset="[[*service_header_img:phpthumbon=`w=480&h=150&zc=1&f=webp&fltr=usm`]]" type="image/webp">
              <img class="b-lazy" data-src="[[*service_header_img:phpthumbon=`w=480&h=150&zc=1&f=jpeg&fltr=usm`]]" alt="[[+longtitle:default=`[[+pagetitle]]`]]" width="480" height="225">
            </picture>
          </div>
          <div class="service-descr__text">
            [[*content]]
          </div>
        </div>
      </div>

      [[*price_simple:notempty=`
        <div class="container">
          <section class="service-price">
            <h2 class="service-price__title">[[$langs? &uk=`Прайс-лист кафе` &ru=`Прайс-лист кафе`]]</h2>
            <div class="service-price__price">

              <dl class="row  service-price__list  service-price__list--noslider">
                [[!getImageList?
                &tvname=`price_simple`
                &tpl=`price_list_tpl`
                &docid=`[[*id]]`
                &limit=`99`
                ]]
              </dl>
            </div>
          </section>
        </div>
      `]]

      [[*special_offer_block:notempty=`
        [[!getImageList?
        &tvname=`special_offer_block`
        &tpl=`special_block_tpl`
        &docid=`[[*id]]`
        &limit=`1`
        ]]
      `]]

    </article>
  </main>
{/block}
