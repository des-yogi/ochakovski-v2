{extends 'file:templates/layout.tpl'}

{block 'main'}
  <style>
    .header-block__title { color: #CA2E34; text-align: center; }
    .header-block__intro-text { font-weight: 700; text-align: center; }
    .header-block__intro-btn {
      display: flex;
      flex-wrap: wrap;
      margin-top: 25px;
    }
    .btn {
      width: 100%;
    }
    .btn + .btn {
      margin-top: 20px;
    }
    @media (min-width: 768px) {
      .header-block__intro-btn {
        justify-content: center;
      }
      .btn {
        width: calc(50% - 15px);
        max-width: 350px;
      }
      .btn + .btn {
        margin-top: 0;
        margin-left: 30px;
      }
    }
  </style>
  <main class="main  main--bg" role="main">
    <article class="service-page">
      <div class="container">
        <header class="header-block">
          <h1 class="header-block__title">[[*longtitle:default=`[[*pagetitle]]`]]</h1>
          [[*introtext:notempty=`
            <div class="header-block__intro">
              <p class="header-block__intro-text">[[*introtext]]</p>
              <p class="header-block__intro-btn">
                <a href="javascript:history.back();" class="btn">[[$langs? &uk=`На попередню` &ru=`На предыдущую`]]</a>
                <a href="/" class="btn">[[$langs? &uk=`На головну` &ru=`На главную`]]</a>
              </p>
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
          {*<div class="service-descr__text">

          </div>*}
        </div>
      </div>
    </article>
  </main>
{/block}
