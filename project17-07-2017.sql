-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июл 17 2019 г., 08:53
-- Версия сервера: 10.3.16-MariaDB
-- Версия PHP: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `project`
--

-- --------------------------------------------------------

--
-- Структура таблицы `artical`
--

CREATE TABLE `artical` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_roman_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `title` varchar(150) COLLATE utf8_roman_ci NOT NULL,
  `text` text COLLATE utf8_roman_ci NOT NULL,
  `url` varchar(150) COLLATE utf8_roman_ci NOT NULL,
  `status_id` tinyint(2) NOT NULL,
  `sort` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_roman_ci;

--
-- Дамп данных таблицы `blog`
--

INSERT INTO `blog` (`id`, `title`, `text`, `url`, `status_id`, `sort`) VALUES
(1, 'Первый пост1', 'Первый постПервый постПервый постПервый постПервый постПервый постПервый постПервый постПервый постПервый постПервый постПервый постПервый постПервый постПервый постПервый постПервый постПервый постПервый постПервый постПервый постПервый постПервый постПервый постПервый постПервый постПервый постПервый постПервый постПервый постПервый постПервый постПервый постПервый постПервый пост', 'first', 1, 60),
(2, 'Второй пост', 'Второй постВторой постВторой постВторой постВторой постВторой постВторой постВторой постВторой постВторой постВторой постВторой пост', 'blogblog', 1, 50),
(33, 'Заголовок № 0', '', 'url_0', 0, 50),
(34, 'Заголовок № 1', '', 'url_1', 1, 50),
(35, 'Заголовок № 2', '', 'url_2', 1, 50),
(36, 'Заголовок № 3', '', 'url_3', 1, 50),
(37, 'Заголовок № 4', '', 'url_4', 1, 50),
(38, 'Заголовок № 5', '', 'url_5', 1, 50),
(39, 'Заголовок № 6', '', 'url_6', 1, 50),
(40, 'Заголовок № 7', '', 'url_7', 1, 50),
(41, 'Заголовок № 8', '', 'url_8', 1, 50),
(42, 'Заголовок № 9', '', 'url_9', 1, 50),
(43, 'Заголовок № 10', '', 'url_10', 1, 50),
(44, 'Заголовок № 11', '', 'url_11', 1, 50),
(45, 'Заголовок № 12', '', 'url_12', 1, 50),
(46, 'Заголовок № 13', '', 'url_13', 1, 50),
(47, 'Заголовок № 14', '', 'url_14', 1, 50),
(48, 'Заголовок № 15', '', 'url_15', 1, 50),
(49, 'Заголовок № 16', '', 'url_16', 1, 50),
(50, 'Заголовок № 17', '', 'url_17', 1, 50),
(51, 'Заголовок № 18', '', 'url_18', 1, 50),
(52, 'Заголовок № 19', '', 'url_19', 1, 50),
(53, 'Заголовок № 20', '', 'url_20', 1, 50),
(54, 'Заголовок № 21', '', 'url_21', 1, 50),
(55, 'Заголовок № 22', '', 'url_22', 1, 50),
(56, 'Заголовок № 23', '', 'url_23', 1, 50),
(57, 'Заголовок № 24', '', 'url_24', 1, 50),
(58, 'Заголовок № 25', '', 'url_25', 1, 50),
(59, 'Заголовок № 26', '', 'url_26', 1, 50),
(60, 'Заголовок № 27', '', 'url_27', 1, 50),
(61, 'Заголовок № 28', '', 'url_28', 1, 50),
(62, 'Заголовок № 29', '', 'url_29', 1, 50);

-- --------------------------------------------------------

--
-- Структура таблицы `film`
--

CREATE TABLE `film` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_roman_ci NOT NULL,
  `description` text COLLATE utf8_roman_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_roman_ci;

--
-- Дамп данных таблицы `film`
--

INSERT INTO `film` (`id`, `name`, `description`) VALUES
(1, 'Aviator', ''),
(2, 'Harry Poter', ''),
(3, 'Matrix', ''),
(4, 'Matrix 2', '');

-- --------------------------------------------------------

--
-- Структура таблицы `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `name_genre` varchar(64) COLLATE utf8_roman_ci NOT NULL,
  `id_film` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_roman_ci;

--
-- Дамп данных таблицы `genre`
--

INSERT INTO `genre` (`id`, `name_genre`, `id_film`) VALUES
(1, 'fantasy', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) COLLATE utf8_roman_ci NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_roman_ci;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1562405543),
('m130524_201442_init', 1562405557),
('m190124_110200_add_verification_token_column_to_user_table', 1562405557),
('m190710_081433_create_artical_table', 1562746805);

-- --------------------------------------------------------

--
-- Структура таблицы `regiser`
--

CREATE TABLE `regiser` (
  `id` int(11) NOT NULL,
  `Name` varchar(64) COLLATE utf8_roman_ci NOT NULL,
  `id_films` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_roman_ci;

--
-- Дамп данных таблицы `regiser`
--

INSERT INTO `regiser` (`id`, `Name`, `id_films`) VALUES
(1, 'Vachovski A.', 3),
(2, 'Colambus K.', 2),
(3, 'Skorseze M.', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `FirstName` varchar(64) COLLATE utf8_roman_ci NOT NULL,
  `LastName` varchar(64) COLLATE utf8_roman_ci NOT NULL,
  `Age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_roman_ci;

--
-- Дамп данных таблицы `student`
--

INSERT INTO `student` (`id`, `FirstName`, `LastName`, `Age`) VALUES
(1, 'sdfsd', 'dsffd', 33),
(2, 'Serj', 'Andreyuk', 34);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_roman_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_roman_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_roman_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_roman_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_roman_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_roman_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_roman_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES
(1, 'admin', 'zJqcLsm-PGuN5Ar6NDXHA49U28sC2RqP', '$2y$13$ICkDE3qTViGtCfi22tRolugxu7fkRREQOZ449GOIsHPUMfszG8Ori', NULL, 'ddd@ya.ru', 10, 1562870233, 1562870233, 'm6-fCaXpzef_DlIyuIhPMYMTI6m-HeA4_1562870233');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `artical`
--
ALTER TABLE `artical`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_film` (`id_film`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `regiser`
--
ALTER TABLE `regiser`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_films` (`id_films`);

--
-- Индексы таблицы `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `artical`
--
ALTER TABLE `artical`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT для таблицы `film`
--
ALTER TABLE `film`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `regiser`
--
ALTER TABLE `regiser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `genre`
--
ALTER TABLE `genre`
  ADD CONSTRAINT `genre_ibfk_1` FOREIGN KEY (`id_film`) REFERENCES `film` (`id`);

--
-- Ограничения внешнего ключа таблицы `regiser`
--
ALTER TABLE `regiser`
  ADD CONSTRAINT `regiser_ibfk_1` FOREIGN KEY (`id_films`) REFERENCES `film` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
