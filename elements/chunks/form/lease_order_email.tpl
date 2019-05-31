<h4>
  [[*template:is=`5`:then=`Аренда офисного помещения`:else=``]]
  [[*template:is=`8`:then=`Сообщение`:else=``]]
  [[*template:is=`10`:then=`Запись на автомойку`:else=``]]
</h4>
<hr>
<p>Имя: <strong>[[+name]]</strong></p>
<p>Телефон: <strong>[[+tel]]</strong></p>
[[+email:notempty=`
<p>Email: <strong>[[+email]]</strong></p>
`]]
[[+message:notempty=`
<p>Сообщение: <strong>[[+message]]</strong></p>
`]]
[[+date:notempty=`
<p>Дата: <strong>[[+date:strtotime:date=`%A, %d %B %Y`]]</strong></p>
`]]
[[+time:notempty=`
<p>Время: <strong>[[+time]]</strong></p>
`]]
<hr>

