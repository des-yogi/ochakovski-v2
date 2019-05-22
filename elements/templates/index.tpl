{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main role="main">
    <section class="banner-main">
      <video class="banner-main__item" autoplay muted loop>
        <source src="assets/images/video/tests.mp4" type="video/mp4">
        <source src="assets/images/video/tests.webm" type="video/webm">
        Ми вибачаємося! Ваш браузер не підтримує HTML5 відео в WebM з VP8 / VP9 або MP4 з H.264.
      </video>
    </section>
    <section class="intro">
      <div class="container">
        <h1 class="intro__title">Екологічне житло для вашого бізнесу <span class="h3  intro__subtitle">Бізнес центр класу Б+</span></h1>
        <p class="intro__descr">Бізнес-центр класу "А" розташований у безпечній та затишній частині Солом'янського району з урахуванням мінімального віддалення від центральної частини Києва, та водночас можливістю швидко дістатися до віддалених районів міста внаслідок розташування на перетині основних магістралей.
        </p>
        <p>Унікальної архітектури будівлю забезпечену сучасною технологічною інфраструктурою, оточену парковою зоною, автомобільною стоянкою з послугою автомийки входить в розташування входить до розпорядження співробітників бізнес-центру роблячи його ефективним інструментом для розвитку бізнесу компанії будь-якого профілю.</p>
      </div>
    </section>
    <section class="container  features">
      <h2 class="features__title">Наші переваги</h2>
      <ul class="row  features__list">
        <li class="features__col">
          <div class="features__item">
            <div class="features__item-header">
              <img src="assets/img/energy-safe-icon.svg" alt="Иконка услуги">
            </div>
            <div class="features__item-text">
              <h3 class="features__item-title">Зручне місцерозташування</h3>
              <p class="features__item-desc">Бізнес-центр “Очаківський” розташований у безпечній та затишній зоні Солом’янського району і в той самий час на перетині основних автомагістралей, что забезпечує невіддаленість від центру.</p>
            </div>
          </div>
        </li>
        <li class="features__col">
          <div class="features__item">
            <div class="features__item-header">
              <img src="assets/img/energy-safe-icon.svg" alt="Иконка услуги">
            </div>
            <div class="features__item-text">
              <h3 class="features__item-title">Зручне місцерозташування</h3>
              <p class="features__item-desc">Бізнес-центр “Очаківський” розташований у безпечній та затишній зоні Солом’янського району і в той самий час на перетині основних автомагістралей, что забезпечує невіддаленість від центру.</p>
            </div>
          </div>
        </li>
        <li class="features__col">
          <div class="features__item">
            <div class="features__item-header">
              <img src="assets/img/energy-safe-icon.svg" alt="Иконка услуги">
            </div>
            <div class="features__item-text">
              <h3 class="features__item-title">Зручне місцерозташування</h3>
              <p class="features__item-desc">Бізнес-центр “Очаківський” розташований у безпечній та затишній зоні Солом’янського району і в той самий час на перетині основних автомагістралей, что забезпечує невіддаленість від центру.</p>
            </div>
          </div>
        </li>
        <li class="features__col">
          <div class="features__item">
            <div class="features__item-header">
              <img src="assets/img/energy-safe-icon.svg" alt="Иконка услуги">
            </div>
            <div class="features__item-text">
              <h3 class="features__item-title">Зручне місцерозташування</h3>
              <p class="features__item-desc">Бізнес-центр “Очаківський” розташований у безпечній та затишній зоні Солом’янського району і в той самий час на перетині основних автомагістралей, что забезпечує невіддаленість від центру.</p>
            </div>
          </div>
        </li>
        <li class="features__col">
          <div class="features__item">
            <div class="features__item-header">
              <img src="assets/img/energy-safe-icon.svg" alt="Иконка услуги">
            </div>
            <div class="features__item-text">
              <h3 class="features__item-title">Зручне місцерозташування</h3>
              <p class="features__item-desc">Бізнес-центр “Очаківський” розташований у безпечній та затишній зоні Солом’янського району і в той самий час на перетині основних автомагістралей, что забезпечує невіддаленість від центру.</p>
            </div>
          </div>
        </li>
        <li class="features__col">
          <div class="features__item">
            <div class="features__item-header">
              <img src="assets/img/energy-safe-icon.svg" alt="Иконка услуги">
            </div>
            <div class="features__item-text">
              <h3 class="features__item-title">Зручне місцерозташування</h3>
              <p class="features__item-desc">Бізнес-центр “Очаківський” розташований у безпечній та затишній зоні Солом’янського району і в той самий час на перетині основних автомагістралей, что забезпечує невіддаленість від центру.</p>
            </div>
          </div>
        </li>
      </ul>
    </section>
    <section class="b-lazy  lease" data-src="assets/img/lease-bg.jpg">
      <div class="container">
        <h2 class="lease__title">Оренда</h2>
        <div class="lease__intro">
          <p class="lease__para">Для орендарів у бізнес-центрі представлена цілодобова охорона та розвинена внутрішня інфраструктура, яка включає ресторан, кафе та дворівневий підземний паркінг.</p>
          <p class="lease__para">Для орендарів у бізнес-центрі представлена цілодобова охорона та розвинена внутрішня інфраструктура, яка включає ресторан, кафе та дворівневий підземний паркінг.</p>
        </div>
        <div class="row  lease__gallery">
          <div class="lease__col">
            <a href="lease-item-page.html" class="lease__item" title>
              <span class="overlay  lease__item-overlay"></span>
              <div class="lease__item-img">
                <img class="b-lazy" data-src="assets/img/lease-img.jpg" alt="Офісне приміщення">
              </div>
              <div class="lease__item-text">
                <h4 class="lease__item-title">Офісне приміщення 558,08 кв.м</h4>
                <p class="lease__item-descr">Далеко-далеко за словесными горами в стране, гласных и согласных.</p>
              </div>
            </a>
          </div>
          <div class="lease__col">
            <a href="lease-item-page.html" class="lease__item" title>
              <span class="overlay  lease__item-overlay"></span>
              <div class="lease__item-img">
                <img class="b-lazy" data-src="assets/img/lease-img.jpg" alt="Офісне приміщення">
              </div>
              <div class="lease__item-text">
                <h4 class="lease__item-title">Офісне приміщення 558,08 кв.м</h4>
                <p class="lease__item-descr">Далеко-далеко за словесными горами в стране, гласных и согласных. Далеко-далеко за словесными горами в стране, гласных и согласных</p>
              </div>
            </a>
          </div>
          <div class="lease__col">
            <a href="lease-page.html" class="lease__item  lease__item--show-more" title>
              <span class="overlay  lease__item-overlay"></span>
              <div class="lease__item-img  lease__item-img--show-more">
                <img class="b-lazy" data-src="assets/img/lease-img-btn.jpg" alt="Офісне приміщення">
              </div>
              <div class="lease__item-text  lease__item-text--show-more">
                <h4 class="lease__item-title  lease__item-title--show-more">Показати<br> більше приміщень</h4>
              </div>
            </a>
          </div>
        </div>
      </div>
    </section>
    <div class="container">
      <section class="news">
        <h2 class="news__title">Новини</h2>
        <div id="news-slider" class="news__container  swiper-container">
          <div class="news__wrapper  swiper-wrapper">
            <div class="swiper-slide  news__slide">
              <a href="news-item-page.html" class="news-card" title>
                <span class="overlay"></span>
                <div class="news-card__img">
                  <img class="swiper-lazy" data-src="assets/img/news-card-img.jpg" alt="Img">
                </div>
                <div class="news-card__text">
                  <h4 class="news-card__title">С Новим Роком! Далеко-далеко за словесными горами в стране, гласных и согласных живут гласных и согласных живут.</h4>
                  <span class="news-card__publishedon  publishedon">01.01.2018</span>
                </div>
                <div class="swiper-lazy-preloader"></div>
              </a>
            </div>
            <div class="swiper-slide  news__slide">
              <a href="news-item-page.html" class="news-card" title>
                <span class="overlay"></span>
                <div class="news-card__img">
                  <img class="swiper-lazy" data-src="assets/img/news-card-img.jpg" alt="Img">
                </div>
                <div class="news-card__text">
                  <h4 class="news-card__title">С Новим Роком!</h4>
                  <span class="news-card__publishedon  publishedon">01.01.2018</span>
                </div>
                <div class="swiper-lazy-preloader"></div>
              </a>
            </div>
            <div class="swiper-slide  news__slide">
              <a href="news-item-page.html" class="news-card" title>
                <span class="overlay"></span>
                <div class="news-card__img">
                  <img class="swiper-lazy" data-src="assets/img/news-card-img.jpg" alt="Img">
                </div>
                <div class="news-card__text">
                  <h4 class="news-card__title">С Новим Роком! Далеко-далеко за словесными горами в стране, гласных и согласных живут.</h4>
                  <span class="news-card__publishedon  publishedon">01.01.2018</span>
                </div>
                <div class="swiper-lazy-preloader"></div>
              </a>
            </div>
            <div class="swiper-slide  news__slide">
              <a href="news-item-page.html" class="news-card" title>
                <span class="overlay"></span>
                <div class="news-card__img">
                  <img class="swiper-lazy" data-src="assets/img/news-card-img.jpg" alt="Img">
                </div>
                <div class="news-card__text">
                  <h4 class="news-card__title">С Новим Роком! Далеко-далеко за словесными горами в стране, гласных и согласных живут гласных и согласных живут.</h4>
                  <span class="news-card__publishedon  publishedon">01.01.2018</span>
                </div>
                <div class="swiper-lazy-preloader"></div>
              </a>
            </div>
            <div class="swiper-slide  news__slide">
              <a href="news-item-page.html" class="news-card" title>
                <span class="overlay"></span>
                <div class="news-card__img">
                  <img class="swiper-lazy" data-src="assets/img/news-card-img.jpg" alt="Img">
                </div>
                <div class="news-card__text">
                  <h4 class="news-card__title">С Новим Роком!</h4>
                  <span class="news-card__publishedon  publishedon">01.01.2018</span>
                </div>
                <div class="swiper-lazy-preloader"></div>
              </a>
            </div>
            <div class="swiper-slide  news__slide">
              <a href="news-item-page.html" class="news-card" title>
                <span class="overlay"></span>
                <div class="news-card__img">
                  <img class="swiper-lazy" data-src="assets/img/news-card-img.jpg" alt="Img">
                </div>
                <div class="news-card__text">
                  <h4 class="news-card__title">С Новим Роком! Далеко-далеко за словесными горами в стране, гласных и согласных живут.</h4>
                  <span class="news-card__publishedon  publishedon">01.01.2018</span>
                </div>
                <div class="swiper-lazy-preloader"></div>
              </a>
            </div>
          </div>
          <div class="controls-wrapper">
            <div class="btn  btn--prev "></div>
            <a href="news.html" class="btn  news__page-link">Всі новини</a>
            <div class="btn  btn--next "></div>
          </div>
        </div>
      </section>
      <section class="services">
        <h2 class="services__title">Сервіси</h2>
        <div class="services__inner">
          <div class="row">
            <div class="services__col">
              <a href="service-carwash.html" class="services__item">
                <div class="services__img">
                  <picture>
                    <source data-srcset="assets/img/service-item.jpg" media="(min-width: 768px)">
                    <img class="b-lazy" data-src="assets/img/service-item.jpg" alt="Title">
                  </picture>
                </div>
                <div class="services__text">
                  <span class="overlay"></span>
                  <h4 class="services__item-title">Автомойка</h4>
                  <p class="services__descr">Парковка розташована в найбільш комфортній зоні з гарантованою ізоляцією від основного потоку.</p>
                </div>
              </a>
              <a href="service-cafe.html" class="services__item">
                <div class="services__img">
                  <picture>
                    <source data-srcset="assets/img/service-item.jpg" media="(min-width: 768px)">
                    <img class="b-lazy" data-src="assets/img/service-item.jpg" alt="Title">
                  </picture>
                </div>
                <div class="services__text">
                  <span class="overlay"></span>
                  <h4 class="services__item-title">Лаунж-зона и кафе</h4>
                  <p class="services__descr">Парковка розташована в найбільш комфортній зоні з гарантованою ізоляцією від основного потоку.</p>
                </div>
              </a>
              <a href="service-parking.html" class="services__item">
                <div class="services__img">
                  <picture>
                    <source data-srcset="assets/img/service-item.jpg" media="(min-width: 768px)">
                    <img class="b-lazy" data-src="assets/img/service-item.jpg" alt="Title">
                  </picture>
                </div>
                <div class="services__text">
                  <span class="overlay"></span>
                  <h4 class="services__item-title">Парковка</h4>
                  <p class="services__descr">Парковка розташована в найбільш комфортній зоні з гарантованою ізоляцією від основного потоку.</p>
                </div>
              </a>
            </div>
          </div>
        </div>
      </section>
    </div>
    <section class="partners">
      <div class="container">
        <h2 class="partners__title">Наші партнери</h2>
        <div class="partners__container  swiper-container">
          <div class="swiper-wrapper">
            <a href="#" class="swiper-slide  partners__slide" title="Партнер">
              <picture>
                <source srcset="assets/img/partner-logo.jpg" type>
                <img class="swiper-lazy" data-src="assets/img/partner-logo.jpg" alt="Партнер">
              </picture>
              <div class="swiper-lazy-preloader"></div>
            </a>
            <a href="#" class="swiper-slide  partners__slide" title="Партнер">
              <picture>
                <source srcset="assets/img/partner-logo.jpg" type>
                <img class="swiper-lazy" data-src="assets/img/partner-logo.jpg" alt="Партнер">
              </picture>
              <div class="swiper-lazy-preloader"></div>
            </a>
            <a href="#" class="swiper-slide  partners__slide" title="Партнер">
              <picture>
                <source srcset="assets/img/partner-logo.jpg" type>
                <img class="swiper-lazy" data-src="assets/img/partner-logo.jpg" alt="Партнер">
              </picture>
              <div class="swiper-lazy-preloader"></div>
            </a>
            <a href="#" class="swiper-slide  partners__slide" title="Партнер">
              <picture>
                <source srcset="assets/img/partner-logo.jpg" type>
                <img class="swiper-lazy" data-src="assets/img/partner-logo.jpg" alt="Партнер">
              </picture>
              <div class="swiper-lazy-preloader"></div>
            </a>
            <a href="#" class="swiper-slide  partners__slide" title="Партнер">
              <picture>
                <source srcset="assets/img/partner-logo.jpg" type>
                <img class="swiper-lazy" data-src="assets/img/partner-logo.jpg" alt="Партнер">
              </picture>
              <div class="swiper-lazy-preloader"></div>
            </a>
            <a href="#" class="swiper-slide  partners__slide" title="Партнер">
              <picture>
                <source srcset="assets/img/partner-logo.jpg" type>
                <img class="swiper-lazy" data-src="assets/img/partner-logo.jpg" alt="Партнер">
              </picture>
              <div class="swiper-lazy-preloader"></div>
            </a>
          </div>
          <!-- <div class="swiper-pagination"></div> -->
        </div>
      </div>
    </section>
    <div class="container">
      <section class="gallery">
        <h2 class="gallery__title">Галерея</h2>
        <div class="row  gallery__inner">
          <div class="gallery__col-1">
            <div class="row">
              <div class="gallery__col-img">
                <div class="gallery__img">
                  <picture>
                    <source srcset="assets/img/gallery-img.jpg" media type>
                    <img src="assets/img/gallery-img.jpg" alt="Картинка" title="Картинка">
                  </picture>
                </div>
              </div>
              <div class="gallery__col-img">
                <div class="gallery__img">
                  <picture>
                    <source srcset="assets/img/gallery-img.jpg" media type>
                    <img src="assets/img/gallery-img.jpg" alt="Картинка" title="Картинка">
                  </picture>
                </div>
              </div>
              <div class="gallery__col-img">
                <div class="gallery__img">
                  <picture>
                    <source srcset="assets/img/gallery-img.jpg" media type>
                    <img src="assets/img/gallery-img.jpg" alt="Картинка" title="Картинка">
                  </picture>
                </div>
                <a href="gallery.html" class="btn  gallery__link">Всі фотографії</a>
              </div>
            </div>
          </div>
          <div class="gallery__col-2">
            <div class="gallery__img">
              <picture>
                <source srcset="assets/img/gallery-img.jpg" media type>
                <img src="assets/img/gallery-img.jpg" alt="Картинка" title="Картинка">
              </picture>
            </div>
            <a href="gallery.html" class="btn  gallery__link">Всі фотографії</a>
          </div>
        </div>
      </section>
    </div>
  </main>
{/block}
