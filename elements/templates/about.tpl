{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main  main--bg" role="main">
    <article class="about-block">
      <div class="container">
        <div class="header-block">
          <h1>[[*longtitle:default=`[[*pagetitle]]`]] <br>
            [[++company_slogan]]</h1>
        </div>
      </div>
      <div class="container  about-block__bg">
        <div class="about-block__content">
          [[!getImageList?
          &tvname=`about_block`
          &tpl=`about_block_tpl`
          &docid=`[[*id]]`
          &limit=`9`
          ]]
        </div>
      </div>
      <div class="container">
        <div class="header-block  header-block--bottom">
          <div class="row">
            <div class="header-block__col-head">
              <h2>[[$langs? &uk=`Ласкаво просимо, переглянути нашу галерею!` &ru=`Добро пожаловать, в нашу галерею!`]]</h2>
            </div>
            <div class="header-block__col-link">
              <a class="btn  header-block__link" href="[[~[[BabelTranslation:default=`37`? &resourceId=`37` &contextKey=`[[*context_key]]`]]]]">[[$langs? &uk=`Галерея` &ru=`Галерея`]]</a>
            </div>
          </div>
        </div>
      </div>
    </article>
  </main>
{/block}
