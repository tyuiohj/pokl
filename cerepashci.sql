-- phpMyAdmin SQL Dump
-- version 5.2.1deb1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Сен 19 2023 г., 16:02
-- Версия сервера: 10.11.3-MariaDB-1
-- Версия PHP: 8.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `cerepashci`
--

-- --------------------------------------------------------

--
-- Структура таблицы `pers`
--

CREATE TABLE `pers` (
  `id` int(11) NOT NULL,
  `имя` varchar(50) NOT NULL,
  `возраст` int(11) NOT NULL,
  `статус` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `pers`
--

INSERT INTO `pers` (`id`, `имя`, `возраст`, `статус`) VALUES
(1, 'донатело', 15, 'хороший'),
(2, 'лео', 15, 'плохой'),
(3, 'раф', 30, 'неочень');

-- --------------------------------------------------------

--
-- Структура таблицы `мир`
--

CREATE TABLE `мир` (
  `id` int(11) NOT NULL,
  `версия` varchar(50) NOT NULL,
  `описание` varchar(50) NOT NULL,
  `сезон` varchar(50) NOT NULL,
  `название` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `мир`
--

INSERT INTO `мир` (`id`, `версия`, `описание`, `сезон`, `название`) VALUES
(1, '1', 'чб', 'палка', 'сол'),
(2, '2', 'чб', 'палка', 'сол'),
(3, '3', 'чб', 'палка', 'сол');

-- --------------------------------------------------------

--
-- Структура таблицы `оружие`
--

CREATE TABLE `оружие` (
  `id` int(11) NOT NULL,
  `название` varchar(50) NOT NULL,
  `тип` varchar(50) NOT NULL,
  `вид_урона` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `оружие`
--

INSERT INTO `оружие` (`id`, `название`, `тип`, `вид_урона`) VALUES
(1, 'меч', 'близь', 'мал'),
(2, 'вилы', 'близь', 'сред'),
(3, 'палка', 'близь', 'сред');

-- --------------------------------------------------------

--
-- Структура таблицы `пользователи`
--

CREATE TABLE `пользователи` (
  `id` int(11) NOT NULL,
  `логин` varchar(50) NOT NULL,
  `пароль` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `пользователи`
--

INSERT INTO `пользователи` (`id`, `логин`, `пароль`) VALUES
(1, 'овощ', '123456'),
(2, 'ов', '1456'),
(3, 'ощ', '123');

-- --------------------------------------------------------

--
-- Структура таблицы `расса`
--

CREATE TABLE `расса` (
  `id` int(11) NOT NULL,
  `название` varchar(50) NOT NULL,
  `мир` varchar(50) NOT NULL,
  `особенности` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `расса`
--

INSERT INTO `расса` (`id`, `название`, `мир`, `особенности`) VALUES
(1, 'череп', 'вод', 'воин'),
(2, 'креги', 'вод', 'воин'),
(3, 'мут', 'вод', 'воин');

-- --------------------------------------------------------

--
-- Структура таблицы `фракция`
--

CREATE TABLE `фракция` (
  `id` int(11) NOT NULL,
  `фракция` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `фракция`
--

INSERT INTO `фракция` (`id`, `фракция`) VALUES
(1, 'череп'),
(2, 'креги'),
(3, 'шредер');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `pers`
--
ALTER TABLE `pers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `мир`
--
ALTER TABLE `мир`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `оружие`
--
ALTER TABLE `оружие`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `пользователи`
--
ALTER TABLE `пользователи`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `расса`
--
ALTER TABLE `расса`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `фракция`
--
ALTER TABLE `фракция`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `pers`
--
ALTER TABLE `pers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `мир`
--
ALTER TABLE `мир`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `оружие`
--
ALTER TABLE `оружие`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `пользователи`
--
ALTER TABLE `пользователи`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `расса`
--
ALTER TABLE `расса`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `фракция`
--
ALTER TABLE `фракция`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
