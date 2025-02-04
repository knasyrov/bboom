Проект написан на ruby-3.3.5

Используется:
  - rails 7.2
  - [devise](https://github.com/heartcombo/devise)
  - [slim](https://github.com/slim-template/slim)
  - [coingecko_ruby](https://github.com/julianfssen/coingecko_ruby)

Для API [coingecko.com](https://docs.coingecko.com/v3.0.1/)

Для запуса необходимо объявить переменные окружения

```
PRJ0_DATABASE_USERNAME=myapp
PRJ0_DATABASE_PASSWORD=password1
PRJ0_DATABASE_HOST=localhost
PRJ0_DATABASE_PORT=5432
```

Затем стандартные действия по созданию БД

```
rake db:create
rake db:migrate
```

Используется гем coingecko_ruby (на базе Faraday)

Чтобы не загружать криптовалюты предусмотрен rake

```
rake coingecko:import
```

затем запуск

```
bin/dev
```
или
```
rails s
```

Данные обновляются при перезагрузки страницы (фоновые процессы не предусмотрены)


UI на основе [Bootstrap 5](https://getbootstrap.com/docs/5.3/getting-started/introduction/)

Для поиска валют - корректных - используется [stimulus-autocomplete](https://github.com/afcapel/stimulus-autocomplete)
