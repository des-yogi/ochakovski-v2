<!DOCTYPE html>
<html class="no-js  page" lang="[[++cultureKey]]" prefix="og: https://ogp.me/ns#">
<head>
  <base href="[[++site_url]]">
  {block 'title'}
    <title>[[*longtitle:default=`[[*pagetitle]]`]] | [[++site_name]]</title>
  {/block}
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="MobileOptimized" content="320">
  <meta name="format-detection" content="telephone=no">

  <meta property="og:url"           content="[[~[[*id]]? &scheme=`full`]]" />
  <meta property="og:type"          content="website" />
  <meta property="og:site_name"     content="[[++site_name]] — [[$langs? &uk=`` &ru=``]]" />
  <meta property="og:locale"        content="[[$langs? &uk=`uk_UA` &ru=`ru_UA` &en=`ru_RU`]]" />
  <meta property="og:image"         content="[[*og_img:ne=``:then=`[[++site_url]][[*og_img]]`:else=`[[++site_url]]assets/images/seo/sharing_home.jpg`]]" />
  <meta property="og:title"         content="[[*longtitle:default=`[[*pagetitle]]`]]" />
  <meta property="og:description"   content="[[*description:notempty=`[[*description]]`]]" />
  <meta name="description" content="[[*description:notempty=`[[*description]]`]]">
  <meta name="keywords" content="[[+seoPro.keywords:notempty=`[[+seoPro.keywords]]`]]">
  <meta name="robots" content="[[+seoTab.robotsTag]]">

  <link rel="canonical" href="[[~[[*id]]? &scheme=`full`]]">

  <link rel="preload" href="assets/fonts/montserrat-v13-latin_cyrillic-ext-500.woff2" as="font" type="font/woff2" crossorigin>
  <link rel="preload" href="assets/fonts/montserrat-v13-latin_cyrillic-ext-600.woff2" as="font" type="font/woff2" crossorigin>
  <link rel="preload" href="assets/fonts/montserrat-v13-latin_cyrillic-ext-700.woff2" as="font" type="font/woff2" crossorigin>
  <link rel="preload" href="assets/fonts/montserrat-v13-latin_cyrillic-ext-900.woff2" as="font" type="font/woff2" crossorigin>

  <link href="[[!modxMinify?&group=`styles`]]" rel="stylesheet" media="screen">
  <script>
    // Picture element HTML5 shiv
    document.createElement("picture");
  </script>
  <link rel="apple-touch-icon" sizes="180x180" href="assets/img/apple-touch-icon.png">
  <link rel="icon" type="image/png" sizes="32x32" href="assets/img/favicon-32x32.png">
  <link rel="icon" type="image/png" sizes="16x16" href="assets/img/favicon-16x16.png">
  <link rel="manifest" href="assets/img/site.webmanifest">
  <link rel="mask-icon" href="assets/img/safari-pinned-tab.svg" color="#ffffff">
  <link rel="shortcut icon" href="assets/img/favicon.ico">
  <meta name="msapplication-TileColor" content="#ffffff">
  <meta name="msapplication-TileImage" content="assets/img/mstile-144x144.png">
  <meta name="msapplication-config" content="assets/img/browserconfig.xml">
  <meta name="theme-color" content="#ffffff"></head>
<body>

<nav class="pushy pushy-right">
  <div class="pushy-content">
    <a [[*template:ne=`1`:then=`href="/"`:else=``]] class="pushy-content__logo" title="[[++site_name]] logo">
      <img src="[[++company_logo]]" alt="[[++site_name]] logo">
    </a>
    [[pdoMenu?
    &parents=`0`
    &level=`2`
    &tplOuter=`@INLINE <ul class="pushy-list">[[+wrapper]]</ul>`
    &tplInner=`@INLINE <ul>[[+wrapper]]</ul>`
    &tpl=`@INLINE
      <li class="pushy-link">
        <a href="[[+link]]" [[+attributes]]>[[+menutitle]]</a>
        [[+wrapper]]
      </li>`
    &tplParentRow=`@INLINE
      <li class="pushy-submenu">
        <a [[+attributes]]>[[+menutitle]]</a>
        [[+wrapper]]
      </li>`
    ]]
  </div>
</nav>

<div class="site-overlay"></div>

<div id="container" class="page__inner">
  <div class="page__content">
    <div class="container" style="background-color: #fff;">

      <header class="page-header" role="banner">
        <a [[*template:ne=`1`:then=`href="/"`:else=``]] class="logo" title="[[++site_name]] logo">
          <img src="[[++company_logo]]" alt="[[++site_name]] logo">
        </a>

        <div class="main-nav">
          <nav class="topbar-nav is-hoverable">
            [[pdoMenu?
            &parents=`0`
            &level=`2`
            &tplOuter=`@INLINE <ul class="metismenu"  id="menu-main">[[+wrapper]]</ul>`
            &tplInner=`@INLINE <ul class="mm-collapse">[[+wrapper]]</ul>`
            &tpl=`@INLINE
            <li>
              <a href="[[+link]]" [[+attributes]] aria-expanded="false">[[+menutitle]]</a>
              [[+wrapper]]
            </li>`
            &tplHere=`@INLINE
              <li class="mm-active">
                <a class="active" [[+attributes]] aria-expanded="false">[[+menutitle]]</a>
                [[+wrapper]]
              </li>`
            &tplParentRow=`@INLINE
            <li>
              <a class="has-arrow" [[+attributes]] aria-expanded="false">[[+menutitle]]</a>
              [[+wrapper]]
            </li>`
            ]]
          </nav>

          <div class="language-select-wrapper">
            <ul class="language-select">
              [[BabelLinks? &tpl=`babelLink`]] {*&showCurrent=`1`*}
            </ul>
          </div>

          <button id="main-nav-toggler" class="burger main-nav__toggler menu-btn" aria-label="mobile menu toggle"><span></span></button>
        </div>
      </header>
    </div>

    {block 'main'}

    {/block}

  </div>

  <footer class="page-footer" role="contentinfo">
    [[*template:ne=`8`:then=`
      <section class="contacts-bottom">
        <div class="container">
          <div class="row">
            <div class="contacts-bottom__col-text">
              <div class="contacts-bottom__address-wrapper">
                <h2 class="contacts-bottom__title">[[$langs? &uk=`Зв'яжіться з нами` &ru=`Свяжитесь с нами`]]</h2>
                <dl class="contacts-bottom__list" itemscope itemtype="http://schema.org/Organization">
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
            </div>
            <div class="contacts-bottom__col-map">
              <div id="map" class="contacts-bottom__map">
                <iframe class="b-lazy" data-src="https://snazzymaps.com/embed/39867" style="border:0;width:100%;">
                  <p>[[$langs? &uk=`Ваш браузер не підтримує iframes` &ru=`Ваш браузер не поддерживает iframes`]]</p>
                </iframe>
                <!-- AIzaSyDinp2FNdaqkD92GicqU_TG5TpGvOtCMBk -->
              </div>
            </div>
          </div>
        </div>
      </section>
    `:else=``]]

    <section class="copyrights">
      <div class="container">
        <div class="row">
          <div class="copyrights__col-text">
            <span>© &thinsp;[[!+currentYear:default=`now`:strtotime:date=`%Y`]]&nbsp;[[$langs? &uk=`Бізнес-центр «Очаківський». Всі права захищені.` &ru=`Бизнес-центр «Очаковский». Все права защищены.`]]</span>
          </div>
          <div class="copyrights__col-logo">
            <a href="https://it-doors.com/" class="copyrights__logo" target="_blank" rel="nofollow noopener" title="[[$langs? &uk=`Розробка сайту` &ru=`Разработка сайта`]] &ldquo;IT-Doors Outsourcing&rdquo;">
              <img src="assets/img/itdoors-logo.svg" alt="IT-Doors Outsourcing">
            </a>
          </div>
        </div>
      </div>
    </section>
  </footer>
</div>
{block 'modals'}{/block}

<script src="[[!modxMinify?&group=`scripts`]]" defer></script>
{block 'add_scripts'}{/block}

</body>
</html>
