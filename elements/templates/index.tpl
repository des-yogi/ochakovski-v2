{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main role="main">

    <section class="banner-main">
      <video class="banner-main__item" autoplay muted loop>
        <source src="[[*video_mp4]]" type="video/mp4">
        <source src="[[*video_webm]]" type="video/webm">
        Ми вибачаємося! Ваш браузер не підтримує HTML5 відео в WebM з VP8 / VP9 або MP4 з H.264.
      </video>
    </section>

    <section class="intro">
      <div class="container">
        <h1 class="intro__title">[[++company_slogan]]</h1>
        [[*content]]
      </div>
    </section>

    <section class="container  features">
      <h2 class="features__title">[[$langs? &uk=`Наші переваги` &ru=`Наши преимущества`]]</h2>
      <ul class="row  features__list">
        [[!getImageList?
        &tvname=`features_list`
        &tpl=`features_list_tpl`
        &docid=`[[*id]]`
        &limit=`8`
        ]]
      </ul>
    </section>

    <section class="b-lazy  lease" data-src="assets/img/lease-bg.jpg">
      <div class="container">
        <h2 class="lease__title">[[pdoField? &id=`[[BabelTranslation:default=`14`? &resourceId=`14` &contextKey=`[[*context_key]]`]]` &field=`pagetitle`]]</h2>
        <div class="lease__intro">
          <p class="lease__para">[[pdoField? &id=`[[BabelTranslation:default=`14`? &resourceId=`14` &contextKey=`[[*context_key]]`]]` &field=`introtext`]]</p>
        </div>
        <div class="row  lease__gallery">
          [[pdoResources?
          &parents=`[[BabelTranslation:default=`14`? &resourceId=`14` &contextKey=`[[*context_key]]`]]`
          &depth=`0`
          &tpl=`@FILE chunks/lease_item_card.tpl`
          &includeTVs=`imageMain`
          &processTVs=`imageMain`
          &limit=`2`
          &sortby=`{ "publishedon":"DESC" }`
          ]]
          <div class="lease__col">
            <a href="lease-page.html" class="lease__item  lease__item--show-more" title="[[$langs? &uk=`Показати більше приміщень` &ru=`Показать больше помещений`]]">
              <span class="overlay  lease__item-overlay"></span>
              <div class="lease__item-img  lease__item-img--show-more">
                <picture>
                  <source data-srcset="assets/img/lease-img-btn.jpg" media="(min-width: 992px)" type="image/webp">
                  <source data-srcset="assets/img/lease-img-btn.jpg" media="(min-width: 992px)">
                  <source data-srcset="assets/img/lease-img-btn.jpg" media="(min-width: 768px)" type="image/webp">
                  <source data-srcset="assets/img/lease-img-btn.jpg" media="(min-width: 768px)">
                  <source data-srcset="assets/img/lease-img-btn.jpg" media="(min-width: 480px)" type="image/webp">
                  <source data-srcset="assets/img/lease-img-btn.jpg" media="(min-width: 480px)">
                  <source data-srcset="assets/img/lease-img-btn.jpg" type="image/webp">
                  <img class="b-lazy" data-src="assets/img/lease-img-btn.jpg" alt="[[$langs? &uk=`Показати більше приміщень` &ru=`Показать больше помещений`]]" width="450" height="338">
                </picture>
              </div>
              <div class="lease__item-text  lease__item-text--show-more">
                <h4 class="lease__item-title  lease__item-title--show-more">[[$langs? &uk=`Показати <br>більше приміщень` &ru=`Показать <br>больше помещений`]]</h4>
              </div>
            </a>
          </div>
        </div>
      </div>
    </section>
    <div class="container">

      <section class="news">
        <h2 class="news__title">[[pdoField? &id=`[[BabelTranslation:default=`11`? &resourceId=`11` &contextKey=`[[*context_key]]`]]` &field=`pagetitle`]]</h2>

        <div id="news-slider" class="news__container  swiper-container">
          <div class="news__wrapper  swiper-wrapper">
            [[pdoResources?
            &parents=`[[BabelTranslation:default=`11`? &resourceId=`11` &contextKey=`[[*context_key]]`]]`
            &depth=`0`
            &limit=`9`
            &tpl=`@FILE chunks/news_slide.tpl`
            &includeTVs=`imageMain`
            &processTVs=`imageMain`
            &sortby=`{ "publishedon":"DESC" }`
            ]]
          </div>

          <div class="controls-wrapper">
            <div class="btn  btn--prev"></div>
            <a href="[[~[[BabelTranslation:default=`11`? &resourceId=`11` &contextKey=`[[*context_key]]`]]]]" class="btn  news__page-link">[[$langs? &uk=`Всі новини` &ru=`Все новости`]]</a>
            <div class="btn  btn--next"></div>
          </div>
        </div>
      </section>

      <section class="services">
        <h2 class="services__title">[[pdoField? &id=`[[BabelTranslation:default=`16`? &resourceId=`16` &contextKey=`[[*context_key]]`]]` &field=`pagetitle`]]</h2>
        <div class="services__inner">
          <div class="row">
            <div class="services__col">
              [[pdoResources?
              &parents=`[[BabelTranslation:default=`16`? &resourceId=`16` &contextKey=`[[*context_key]]`]]`
              &depth=`0`
              &limit=`3`
              &tpl=`@FILE chunks/services_block_index.tpl`
              &includeTVs=`service_header_img`
              &sortby=`{ "menuindex":"DESC" }`
              ]]
            </div>
          </div>
        </div>
      </section>

    </div>

    <section class="partners">
      <div class="container">
        <h2 class="partners__title">[[pdoField? &id=`[[BabelTranslation:default=`22`? &resourceId=`22` &contextKey=`[[*context_key]]`]]` &field=`pagetitle`]]</h2>
        <div class="partners__container  swiper-container">
          <div class="swiper-wrapper">
            [[!getImageList?
            &tvname=`partners`
            &tpl=`partners_tpl`
            &docid=`[[BabelTranslation:default=`22`? &resourceId=`22` &contextKey=`[[*context_key]]`]]`
            &limit=`30`
            ]]
          </div>

        </div>
      </div>
    </section>

    <div class="container">

      <section class="gallery">
        <h2 class="gallery__title">[[pdoField? &id=`[[BabelTranslation:default=`37`? &resourceId=`37` &contextKey=`[[*context_key]]`]]` &field=`pagetitle`]]</h2>
        <div class="row  gallery__inner">
          <div class="gallery__col-1">
            <div class="row">
              [[!getImageList?
              &tvname=`gallery_index`
              &tpl=`gallery_index_tpl_part_1`
              &docid=`[[*id]]`
              &limit=`3`
              ]]
            </div>
          </div>

          <div class="gallery__col-2">
            [[!getImageList?
            &tvname=`gallery_index`
            &tpl=`gallery_index_tpl_part_2`
            &docid=`[[*id]]`
            &limit=`1`
            ]]
            <a href="[[~[[BabelTranslation:default=`37`? &resourceId=`37` &contextKey=`[[*context_key]]`]]]]" class="btn  gallery__link">[[$langs? &uk=`Всі фотографії` &ru=`Все фотографии`]]</a>
          </div>

        </div>
      </section>

    </div>
  </main>
{/block}
