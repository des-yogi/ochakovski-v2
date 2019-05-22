{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main  main--bg" role="main">
    <div class="news-page">
      <div class="container">
        <div class="header-block">
          <h1>[[*longtitle:default=`[[*pagetitle]]`]]</h1>
        </div>
      </div>
      <div class="container">
        <div class="row  news-page__content">
          [[!pdoPage@sitePagination?
            &parents=`[[BabelTranslation:default=`11`? &resourceId=`11` &contextKey=`[[*context_key]]`]]`
            &depth=`0`
            &limit=`6`
            &pageLimit=`5`
            &pageLinkScheme=`/[[+pageVarKey]]-[[+page]]`
            &tpl=`@FILE chunks/news_page_card.tpl`
            &includeTVs=`imageMain`
            &processTVs=`imageMain`
            &sortby=`{ "publishedon":"DESC" }`
          ]]
        </div>
      </div>

      [[+page.total:gt=`6`:then=`
        <div class="container">
          [[!+page.nav]]
        </div>
      `:else=``
      ]]

    </div>

  </main>
{/block}
