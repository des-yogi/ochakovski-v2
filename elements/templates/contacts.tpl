{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main  main--bg  main--contacts" role="main">
    <article class="contacts-page">
      <div class="container">
        <header class="header-block">
          <h1>[[*longtitle:default=`[[*pagetitle]]`]]</h1>
        </header>
      </div>
      <section class="contacts-bottom">
        <div class="container">
          <div class="row">
            <div class="contacts-bottom__col-text  contacts-page__col-text">
              <div class="contacts-bottom__address-wrapper">
                <h2 class="contacts-bottom__title">[[$langs? &uk=`Контактна інформація` &ru=`Контактная информация`]]</h2>
                <dl class="contacts-bottom__list" itemscope itemtype="http://schema.org/Organization" aria-label="[[++site_name]]">
                  <div class="contacts-bottom__list-item">
                    <dt class="h4  contacts-bottom__name">[[$langs? &uk=`Адреса` &ru=`Адрес`]]:</dt>
                    <dd class="contacts-bottom__descr" itemprop="address" itemscope itemtype="http://schema.org/PostalAddress">
                      <span itemprop="streetAddress">[[++company_address]]</span>,
                      <span itemprop="addressLocality">[[++company_city]]</span>,
                      <span itemprop="postalCode">[[++company_index]]</span></dd>
                  </div>
                  <div class="contacts-bottom__list-item">
                    <dt class="h4  contacts-bottom__name">[[$langs? &uk=`Режим роботи` &ru=`Режим работы`]]:</dt>
                    <dd class="contacts-bottom__descr">
                      <span itemprop="openingHours" content="[[$langs? &uk=`Пн.-Нед. 00:00-24:00` &ru=`Пн.-Вс. 00:00-24:00`]]">[[++company_worktime]]</span>
                    </dd>
                  </div>
                  <div class="contacts-bottom__list-item">
                    <dt class="h4  contacts-bottom__name">[[$langs? &uk=`Телефон` &ru=`Телефон`]]:</dt>
                    <dd class="contacts-bottom__descr">
                      <a class="contacts-bottom__link" href="tel:+[[++company_tel]]" itemprop="telephone">[[++company_tel:phone_format]]</a>
                    </dd>
                  </div>
                  <div class="contacts-bottom__list-item">
                    <dt class="h4  contacts-bottom__name">E-mail:</dt>
                    <dd class="contacts-bottom__descr">
                      <a class="contacts-bottom__link" href="mailto:[[++company_email]]" itemprop="email">[[++company_email]]</a>
                    </dd>
                  </div>
                  <div class="contacts-bottom__list-item">
                    <dt class="h4  contacts-bottom__name">Facebook:</dt>
                    <dd class="contacts-bottom__descr">
                      <a class="contacts-bottom__link" href="[[++company_fb]]" target="_blank" rel="nofollow noopener" itemprop="sameAs">facebook.com/ochakivskyi</a>
                    </dd>
                  </div>
                </dl>
              </div>

              <div class="contacts-page__form-wrapper">
                [[!FormIt?
                &hooks=`recaptchav2,email`
                &emailFrom=`postman@ochakivskyi.com`
                &emailTpl=`@FILE chunks/form/lease_order_email.tpl`
                &emailTo=`des.yogi@gmail.com`
                &emailSubject=`Заявка на аренду с сайта [[++site_name]]`
                &validate=`name:required,email:email:required,message:required,gard2:blank`
                &validationErrorMessage=`[[$langs? &uk=`У формі міститися помилки!` &ru=`В форме содержаться ошибки!`]]`
                &successMessage=`[[$langs? &uk=`Повідомлення успішно відправлено!` &ru=`Сообщение успешно отправлено!`]]`
                ]]

                <form id="contacts-form" class="form" action="[[~[[*id]]]]" method="post">
                  [[!+fi.success:is=`1`:then=`<h2 class="form__title">[[!+fi.successMessage]]</h2>`:else=`
                  <h2 class="form__title">[[$langs? &uk=`Напишіть нам` &ru=`Напишите нам`]]</h2>
                  `]]

                  <div class="row">

                    <div class="specifications__col-form-inner">
                      <div class="form__group">
                        <input type="hidden" name="gard2" value="">
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
                      <div class="form__group">
                        <input class="form__text-input" type="email" name="email" value="[[!+fi.email]]" placeholder="Ваш Email">
                        <span class="error">[[!+fi.error.email]]</span>
                      </div>
                    </div>

                    <div class="specifications__col-form-inner">
                      <div class="form__group">
                        <textarea class="form__text-input  form__text-input--textarea" name="message" value="[[!+fi.message]]" placeholder="[[$langs? &uk=`Текст повідомлення` &ru=`Текст сообщения`]]"></textarea>
                        <span class="error">[[!+fi.error.message]]</span>
                      </div>
                    </div>

                    <div class="specifications__col-form-inner">
                      <div class="form__group">
                        [[!recaptchav2_render]]
                        <span class="error"></span>
                        {*[[!+fi.error.recaptchav2_error]]*}
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

              </div>
            </div>
          </div>
        </div>
        <div id="map" class="contacts-bottom__map">
          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1270.8509928351853!2d30.452311743170256!3d50.42802387367665!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40d4ceb000edffa3%3A0x4d234e90becf6884!2z0J7Rh9Cw0LrQvtCy0YHQutC40Lkg0L_QtdGALiwgNS82LCDQmtC40LXQsiwgMDIwMDA!5e0!3m2!1sru!2sua!4v1557744990801!5m2!1sru!2sua" style="border:0;width:100%;" allowfullscreen></iframe>
        </div>
      </section>
    </article>
  </main>
{/block}
