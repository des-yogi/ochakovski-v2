<div class="swiper-slide" data-hash="[[+tv.carwash_category]]">
  <div class="service-price__intro">
    <p>[[+tv.carwash_descr]]</p>
  </div>
  <dl class="row  service-price__list">
    [[!getImageList?
    &tvname=`price_simple`
    &tpl=`price_list_tpl`
    &docid=`[[+id]]`
    &limit=`99`
    ]]
  </dl>
</div>
