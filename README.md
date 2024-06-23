## Назначение и цели приложения

Приложение помогает пользователям формировать полезные привычки и отслеживать их выполнение.

Цели приложения:

- Контроль привычек по дням недели;
- Просмотр прогресса по привычкам;

## Краткое описание приложения

- Приложение состоит из карточек-трекеров, которые создает пользователь.
- Он может указать название, категорию и задать расписание. Также можно выбрать эмодзи и цвет, чтобы отличать карточки друг от друга.
- Карточки отсортированы по категориям. Пользователь может искать их с помощью поиска и фильтровать.
- С помощью календаря пользователь может посмотреть какие привычки у него запланированы на конкретный день.
- В приложении есть статистика, которая отражает успешные показатели пользователя, его прогресс и средние значения.

## Функциональные требования

# Онбординг

При первом входе в приложение пользователь попадает на экран онбординга.

**Экран онбординга содержит:**

1. Заставку
2. Заголовок и вторичный текст
3. Page controls
4. Кнопку «Вот это технологии»
   
**Алгоритмы и доступные действия:**

1. С помощью свайпа вправо и влево пользователь может переключаться между страницами. При переключении страницы page controls меняет состояние
2. При нажатии на кнопку «Вот это технологии» пользователь переходит на главный экран

# Создание карточки привычки

На главном экране пользователь может создать трекер для привычки или нерегулярного события. Привычка – событие, которое повторяется с определенной периодичностью. Нерегулярное событие не привязано к конкретным дням.

**Экран создания трекера для привычки содержит:**

- Заголовок экрана;
- Поле для ввода названия трекера;
- Раздел категории;
- Раздел настройки расписания;
- Раздел с эмоджи;
- Раздел с выбором цвета трекера;
- Кнопка «Отменить»;
- Кнопка «Создать».
  
** Экран создания трекера для нерегулярного события содержит:**

- Заголовок экрана;
- Поле для ввода названия трекера;
- Раздел категории;
- Раздел с эмоджи;
- Раздел с выбором цвета трекера;
- Кнопка «Отменить»;
- Кнопка «Создать».

  # Алгоритмы и доступные действия:

1. Пользователь может создать трекер для привычки или нерегулярного события. Алгоритм создания трекеров аналогичен, но в событии отсутствует раздел расписания.
2. Пользователь может ввести название трекера;
   i. После ввода одного символа появляется иконка крестика. При нажатии на иконку пользователь может удалить введенный текст;
   ii. Максимальное количество символов – 38;
   iii. Если пользователь превысил допустимое количество, появляется текст с ошибкой;
3. При нажатии на раздел «Категория» открывается экран выбора категории;
   i. Если пользователь ранее не добавлял категории, то стоит заглушка;
   ii. Синей галочкой отмечена последняя выбранная категория;
   iii. При нажатии на «Добавить категорию» пользователь может добавить новую.
        a. Откроется экран с полем для ввода названия. Кнопка «Готово» неактивна;
        b. Если введен хотя бы 1 символ, то кнопка «Готово» становится активной;
        c. При нажатии на кнопку «Готово» открывается экран выбора категории. Созданная категория отмечена синей галочкой;
        d. При нажатии на категорию пользователь возвращается на экран создания привычки. Выбранная категория отображается на экране создания привычки вторичным текстом под заголовком «Категория»;
4. В режиме создания привычки есть раздел «Расписание». При нажатии на раздел открывается экран с выбором дней недели. Пользователь может переключить свитчер, чтобы выбрать день повторения привычки;
   i. При нажатии на «Готово» пользователь возвращается на экран создания привычки. Выбранные дни отображаются на экране создания привычки вторичным текстом под заголовком «Расписание»;
        a. Если пользователь выбрал все дни, то отображается текст «Каждый день»;
5. Пользователь может выбрать эмодзи. Под выбранным эмодзи появляется подложка;
6. Пользователь может выбрать цвет трекера. На выбранном цвете появляется обводка;
7. При нажатии кнопки «Отменить» пользователь может прекратить создание привычки;
8. Кнопка «Создать» неактивна пока не заполнены все разделы. При нажатии на кнопку открывается главный экран. Созданная привычка отображается в соответствующей категории;

# Просмотр главного экрана

На главном экране пользователь может просмотреть все созданные трекеры на выбранную дату, отредактировать их и посмотреть статистику.

**Главный экран содержит:**

1. Кнопку «+» для добавления привычки;
2. Заголовок «Трекеры»;
3. Текущая дата;
4. Поле для поиска трекеров;
5. Карточки трекеров по категориям. Карточки содержат:
   i. Емодзи;
   ii. Название трекера;
   iii. Количество затреканных дней;
   iv. Кнопку для отметки выполненной привычки;
6. Кнопка «Фильтр»;
7.Таб-бар.

Алгоритмы и доступные действия:

1. При нажатии на «+» всплывает шторка с возможностью создать привычку или нерегулярное событие;
2. При нажатии на дату открывается календарь. Пользователь может переключаться между месяцами. При нажатии на число приложение показывает соответствующие дате трекеры;
3. Пользователь может искать трекеры по названию в окне поиска;
   i. Если ничего не найдено, то пользователь видит заглушку;
4. При нажатии на «Фильтры» всплывает шторка со списком фильтром;
   i. Кнопка фильтрации отсутствует, если на выбранный день нет трекеров;
   ii. При выборе «Все трекеры» пользователь видит все трекеры на выбранный день;
   iii. При выборе «Трекеры на сегодня» ставится текущая дата и пользователь видит все трекеры на этот день;
   iv. При выборе «Завершенные» пользователь видит привычки, которые были выполнены пользователем в выбранный день;
   v. При выборе «Не завершенные» пользователь видит невыполненные трекеры в выбранный день;
   vi. Текущий фильтр отмечен синей галочкой;
   vii. При нажатии на фильтр шторка скрывается, на экране отображены соответствующие трекеры;
   viii. Если ничего не найдено, то пользователь видит заглушку;
5. При скролле вниз и вверх пользователь может просматривать ленту;
   i. Если изображение карточки не успели загрузиться, то отображается системный лоадер;
6. При нажатии на карточку фон под ней размывается и всплывает модальное окно;
   i. Пользователь может закрепить карточку. Карточка попадет в категорию «Закрепленные» в вверху списка;
        a. При повторном нажатии пользователь может открепить карточку;
        b. Если закрепленных карточек нет, то категория «Закрепленные» отсутствует;
   ii. Пользователь может отредактировать карточку. Всплывает модальное с функционалом аналогичным при создании карточки. Дополнительно пользователь может увеличить или уменьшить количество затреканных дней;
   iii. При нажатии на «Удалить» всплывает action sheet.
        a. Пользователь может подтвердить удаление карточки. Все данные о ней должны быть удалены;
        b. Пользователь может отменить действие и вернуться на главный экран;
7. С помощью таб бара пользователь может переключаться между разделами «Трекеры» и «Статистика».

# Редактирование и удаление категории

Во время создания трекера пользователь может отредактировать категории в списке или удалить ненужные.

**Алгоритмы и доступные действия:**

1. При долгом нажатии на категорию из списка фон под ней размывается и появляется модальное окно;
   i. При нажатии на «Редактировать» всплывает модальное окно. Пользователь может отредактировать название категории. При нажатии на кнопку «Готово» пользователь возвращается в список категорий;
   ii. При нажатии «Удалить» всплывает action sheet.
        a. Пользователь может подтвердить удаление категории. Все данные о ней должны быть удалены;
        b. Пользователь может отменить действие;
        c. После подтверждения или отмены пользователь возвращается в список категорий;

# Просмотр статистики

Во вкладке статистики пользователь может посмотреть успешные показатели, свой прогресс и средние значения.

**Экран статистики содержит:**

1. Заголовок «Статистика»;
2. Список со статистическими показателями. Каждый показатель содержит:
   i. Заголовок-цифру;
   ii. Вторичный текст с названием показателя;
3.Таб-бар

**Алгоритмы и доступные действия:**

1. Если данных нет ни под одному показателю, то пользователь видит заглушку;
2. Если есть данные хотя бы под одному показателю, то статистика отображается. Показатели без данных отображаются с нулевым значением;
3. Пользователь может просмотреть статистику по следующим показателям:
   i. «Лучший период» считает максимальное количество дней без перерыва по всем трекерам;
   ii. «Идеальные дни» считает дни, когда были выполнены все запланированные привычки;
   iii. «Трекеров завершено» считает общее количество выполненных привычек за все время;
   iiii. «Среднее значение» считает среднее количество привычек, выполненных за 1 день.

# Темная тема

В приложении есть темная тема, которая меняется в зависимости от настроек системы устройства.

## Нефункциональные требования

1. Приложение должно поддерживать iPhone X и выше и адаптировано под iPhone SE, минимальная поддерживаемая версия операционной системы - iOS 13.4;
2. В приложении используется стандартный шрифт iOS – SF Pro.
3. Для хранения данных о привычках используется Core Data.