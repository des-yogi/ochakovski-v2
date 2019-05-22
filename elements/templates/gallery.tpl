{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main  main--bg" role="main">
    <div class="gallery-page">
      <div class="container">
        <div class="header-block">
          <h1>[[*longtitle:default=`[[*pagetitle]]`]]</h1>
        </div>
      </div>
      <div class="container">
        [[getPageAssets?
        &innerTpl=`gallery_item_tpl`
        &outerTpl=`<div class="row">[[+content]]</div>`
        ]]
      </div>
    </div>
  </main>
{/block}
