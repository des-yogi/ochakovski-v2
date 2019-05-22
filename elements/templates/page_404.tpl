{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main  main--bg  main--page-404" role="main">
    <article class="page-404">
      <div class="container">
        <div class="row">
          <div class="page-404__col">
            <div class="page-404__text">
              <h1>[[*longtitle:default=`[[$langs? &uk=`Сторінку не знайдено <br>або не існує` &ru=`Страница не найдена <br> или не существует`]]`]]</h1>
              <a href="[[++site_url]]" class="btn  page-404__to-home">[[$langs? &uk=`Повернутися на головну` &ru=`Вернуться на главную`]]</a>
            </div>
          </div>
          <div class="page-404__col">
            <div class="page-404__num">
              <h2>[[*pagetitle]] <span class="visually-hidden">[[$langs? &uk=`сторінка` &ru=`страница`]]</span></h2>
            </div>
          </div>
        </div>
      </div>
    </article>
  </main>
{/block}
