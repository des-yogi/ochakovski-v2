{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main  main--bg" role="main">
    <div class="lease  lease--page">
      <div class="container">
        <div class="header-block">
          <h1>[[*longtitle:default=`[[*pagetitle]]`]]</h1>
          [[*introtext:notempty=`<div class="header-block__intro"><p>[[*introtext]]</p></div>`]]
        </div>
      </div>
      <div class="container">
        <h2 class="h2">[[$langs? &uk=`Вільні приміщення` &ru=`Свободные помещения`]]</h2>
        <div class="row  lease__gallery">
          [[!pdoResources?
          &parents=`[[BabelTranslation:default=`14`? &resourceId=`14` &contextKey=`[[*context_key]]`]]`
          &depth=`0`
          &tpl=`@FILE chunks/lease_item_card.tpl`
          &includeTVs=`imageMain`
          &processTVs=`imageMain`
          &includeContent=`1`
          &sortby=`{ "publishedon":"DESC" }`
          ]]
        </div>

        <section class="specifications">
          <div class="row">
            <div class="specifications__col-intro">
              <div class="specifications__intro">
                <h2>[[*spec-title]]</h2>
                <p class="specifications__intro-descr">[[*spec-descr]]</p>
              </div>
            </div>
            <div class="specifications__col-form">
              <div class="b-lazy  specifications__form" data-src="assets/img/specs-bg.jpg">
                [[!FormIt?
                &hooks=`spam,email`
                &emailFrom=`postman@ochakivskyi.com`
                &emailTpl=`@FILE chunks/form/lease_order_email.tpl`
                &emailTo=`des.yogi@gmail.com`
                &emailSubject=`Заявка на аренду с сайта [[++site_name]]`
                &validate=`name:required,tel:required,gard:blank`
                &validationErrorMessage=`[[$langs? &uk=`У формі міститися помилки!` &ru=`В форме содержаться ошибки!`]]`
                &successMessage=`[[$langs? &uk=`Повідомлення успішно відправлено!` &ru=`Сообщение успешно отправлено!`]]`
                ]]

                [[!+fi.success:is=`1`:then=`
                  <div style="padding:25px 20px; background-color: #fff;">
                    <h3 class="subscription-form__title" style="margin:0;">[[!+fi.successMessage]]</h3>
                  </div>
                `:else=`
                  <form id="lease-order" class="form" action="[[~[[*id]]]]" method="post">
                    <h2 class="form__title">[[$langs? &uk=`Відправити заявку` &ru=`Отправить заявку`]]</h2>
                    <div class="row">
                      <div class="specifications__col-form-inner">
                        <div class="form__group">
                          <input type="hidden" name="gard" value="">
                          <input class="form__text-input" type="text" name="name" value="[[!+fi.name]]" placeholder="[[$langs? &uk=`Ваше ім'я` &ru=`Ваше имя`]]">
                          <span class="error">[[!+fi.error.name]]</span>
                        </div>
                      </div>
                      <div class="specifications__col-form-inner">
                        <div class="form__group">
                          <input class="form__text-input" type="tel" name="tel" value="[[!+fi.tel]]" placeholder="[[$langs? &uk=`Ваш телефон` &ru=`Ваш телефон`]]">
                          <span class="error">[[!+fi.error.tel]]</span>
                        </div>
                      </div>
                      <div class="specifications__col-form-inner">
                        <div class="form__group  form__group--submit">
                          <button class="form__submit" type="submit">[[$langs? &uk=`Надіслати` &ru=`Отправить`]]</button>
                        </div>
                      </div>
                      <div class="specifications__col-form-inner">
                        <div class="form__group">
                          <label class="form__agreement-wrapper">
                            <input class="form__agreement" type="checkbox" name="agreement" checked>
                            <span class="form__agreement-label">[[$langs? &uk=`Дозволяю обробку персональної інформації` &ru=`Разрешаю обработку персональной информации`]]</span>
                          </label>
                        </div>
                      </div>
                    </div>
                  </form>
                `]]

              </div>
            </div>
          </div>
        </section>

      </div>
    </div>
  </main>
{/block}
