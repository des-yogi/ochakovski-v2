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

      [[!getImageList?
        &tvname=`carwash_offer`
        &tpl=`carwash_offer_tpl`
        &toPlaceholder =`carwash_offer_placeholder`
        &docid=`[[BabelTranslation:default=`27`? &resourceId=`27` &contextKey=`[[*context_key]]`]]`
        &limit=`3`
      ]]

      [[+carwash_offer_placeholder:ne=``:then=`
        <div class="container">
          <section class="carwash-special-offer">
            <h2 class="carwash-special-offer__title">[[pdoField? &id=`[[BabelTranslation:default=`27`? &resourceId=`27` &contextKey=`[[*context_key]]`]]` &field=`pagetitle`]]</h2>
            <div class="row">
              [[+carwash_offer_placeholder]]
            </div>
          </section>
        </div>
      `:else=``]]

      <div class="container">
        <section class="service-price">
          <div id="alert-place" class="service-price__order">

            [[!+fi.success:is=`1`:then=`
              <div class="service__alert">
                <h3>[[!+fi.successMessage]]</h3>
              </div>
            `:else=`

            `]]

            <div class="row">
              <div class="service-price__order-col-btn">
                <a class="btn" data-fancybox data-src="#carwash-order" href="javascript:;">[[$langs? &uk=`Записатись на автомийку` &ru=`Записаться на автомойку`]]</a>
              </div>
              <div class="service-price__order-col-text">
                <span class="service-price__order-call">[[$langs? &uk=`Телефонуйте` &ru=`Звоните`]]:</span>
                <a href="tel:+[[++carwash_tel_1]]" class="service-price__tel">[[++carwash_tel_1:phone_format]]</a>
                <a href="tel:+[[++carwash_tel_2]]" class="service-price__tel">[[++carwash_tel_2:phone_format]]</a>
              </div>
            </div>
          </div>

          <h2 class="service-price__title">[[$langs? &uk=`Прайс-лист` &ru=`Прайс-лист`]] <span class="service-price__subtitle">[[$langs? &uk=`(Ціна вказана в грн.)` &ru=`(Цена указана в грн.)`]]</span></h2>

          <div id="carwash-slider-nav" class="service-price__nav  swiper-container" role="navigation">
            <div class="swiper-wrapper">
              [[pdoResources?
                &parents=`[[*id]]`
                &resources=`-[[BabelTranslation:default=`27`? &resourceId=`27` &contextKey=`[[*context_key]]`]]`
                &depth=`0`
                &tpl=`@INLINE
                <div class="swiper-slide">
                  <a href="[[*uri]]#[[+tv.carwash_category]]" class="h3">[[+pagetitle]]</a>
                </div>
                `
                &includeTVs=`carwash_category`
              ]]
            </div>
          </div>

          <div id="carwash-slider" class="service-price__price  swiper-container">
            <div class="swiper-wrapper">
              [[pdoResources?
                &parents=`[[*id]]`
                &resources=`-[[BabelTranslation:default=`27`? &resourceId=`27` &contextKey=`[[*context_key]]`]]`
                &depth=`0`
                &tpl=`@FILE chunks/price_slider.tpl`
                &includeTVs=`carwash_category,carwash_descr,price_simple`
                &processTVs=`price_simple`
              ]]
            </div>
          </div>
        </section>
      </div>

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

{block 'modals'}
  <div class="carwash-order-modal" style="display: none;" id="carwash-order">
    <header class="carwash-order-modal__header">
      <h3>[[$langs? &uk=`Записатись на автомийку` &ru=`Записаться на автомойку`]]</h3>
    </header>
    <div class="carwash-order-modal__content">

      [[!FormIt?
      &hooks=`email,redirect`
      &emailFrom=`postman@ochakivskyi.com`
      &emailTpl=`@FILE chunks/form/lease_order_email.tpl`
      &emailTo=`des.yogi@gmail.com`
      &emailSubject=`Запись на автомойку - [[++site_name]]`
      &validate=`name:required,tel:required,date:required,time:required,gard3:blank`
      &validationErrorMessage=`[[$langs? &uk=`У формі міститися помилки!` &ru=`В форме содержаться ошибки!`]]`
      &successMessage=`[[$langs? &uk=`Повідомлення успішно відправлено!` &ru=`Сообщение успешно отправлено!`]]`
      &redirectTo=`[[BabelTranslation:default=`70`? &resourceId=`70` &contextKey=`[[*context_key]]`]]`
      ]]

      <form id="carwash-order-form" class="form" action="[[~[[*id]]]]" method="post">
        <div class="form__group">
          <input type="hidden" name="gard3" value="">
          <input class="form__text-input" type="text" name="name" value="[[!+fi.name]]" placeholder="[[$langs? &uk=`Ваше ім'я` &ru=`Ваше имя`]]">
          <span class="error">[[!+fi.error.name]]</span>
        </div>
        <div class="form__group">
          <input class="form__text-input" type="tel" name="tel" value="[[!+fi.tel]]" placeholder="[[$langs? &uk=`Ваш телефон` &ru=`Ваш телефон`]]">
          <span class="error">[[!+fi.error.tel]]</span>
        </div>
        <div class="form__group  form__group--data-time">
          <input class="form__text-input" type="date" name="date" value="[[!+fi.date]]">
          <input class="form__text-input" type="time" name="time" value="[[!+fi.time]]">
          <span class="error">[[!+fi.error.tel]] [[!+fi.time]]</span>
        </div>
        <div class="form__group  form__group--submit">
          <button class="form__submit" type="submit">[[$langs? &uk=`Надіслати` &ru=`Отправить`]]</button>
        </div>
        <div class="form__group">
          <label class="form__agreement-wrapper">
            <input class="form__agreement" type="checkbox" name="agreement" value checked>
            <span class="form__agreement-label">[[$langs? &uk=`Дозволяю обробку персональної інформації` &ru=`Разрешаю обработку персональной информации`]]</span>
          </label>
        </div>
      </form>
    </div>
  </div>
{/block}
