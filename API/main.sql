-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Ноя 18 2021 г., 04:57
-- Версия сервера: 10.6.5-MariaDB
-- Версия PHP: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `main`
--

-- --------------------------------------------------------

--
-- Структура таблицы `data`
--

CREATE TABLE `data` (
  `id` int(8) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(70) NOT NULL,
  `password` varchar(70) NOT NULL,
  `information` varchar(70) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `approval` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `data`
--

INSERT INTO `data` (`id`, `first_name`, `last_name`, `email`, `password`, `information`, `gender`, `approval`) VALUES
(1, 'adfb', 'adfb', 'kravchienko_slava@mail.ru', '$2y$10$yzjsTDVVkj0vidhK7T7Rje9BSatJahFu/9NzpT2t0J9Y0Cb1M3qmC', 'adfb', 'm', '1'),
(6, 'adfb', 'adfb', 'adfb@mail.ru', '$2y$10$DuuH7iFxiCjVpV0cA.oNl.R0wWgJ3qf6kYylqTPzbiejg9R6BseWK', '', 'm', '1'),
(11, '123', 'adfb', 'adfb12@mail.ru', '$2y$10$xRQMmM8lPCU7T5YZG/OoQO7BXMiwrDbBggroSuDdIDfateUMWxiPa', '', 'm', '1'),
(15, 'adfb', 'adfb', 'nikitaneobmanit@mail.ru', '$2y$10$5iA7grqSXLDn2NSlPxnIY.prjnlzu4U6p9JE.IO0X0ix7uDvWxTfq', '', 'm', '1'),
(20, 'adfb', 'adfb', 'kravchienko_slava002@mail.ru', '$2y$10$opbuelAGkWFosHTV2Sp0nOgifVB.waGx6Ui5XozhyxY3dOmzSsP0.', '', 'm', '1'),
(30, 'Ð˜Ð“Ð¾Ñ€ÑŒ', 'Ð˜Ð³Ð¾Ñ€ÐµÐ²', 'igor@mail.ru', '$2y$10$jGeTzYDOLrA8N9zXk4G2feeT6.vwA527PdpSTL1bZaKXuXZWG1Hvq', 'adfbadfbadfbadfba adfbadfb', 'm', '1'),
(31, 'Ð”Ð¼Ð¸Ñ‚Ñ€Ð¸Ð¹', 'Ð”Ð¼Ð¸Ñ‚Ñ€Ð¸ÐµÐ²', 'dima@mail.ru', '$2y$10$wWE6IkmyT59jBZY/pnN0c.He4mv3tvgLXFHBNsjt9xhMT15zQ9lxi', 'adfbadfbad', 'm', '1');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `data`
--
ALTER TABLE `data`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
