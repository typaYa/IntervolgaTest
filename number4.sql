-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 29 2023 г., 15:30
-- Версия сервера: 8.0.30
-- Версия PHP: 8.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test123`
--

-- --------------------------------------------------------

--
-- Структура таблицы `sportsmen`
--

CREATE TABLE `sportsmen` (
  `id` int NOT NULL,
  `fullName` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tel_number` varchar(11) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data` year DEFAULT NULL,
  `years` tinyint DEFAULT NULL,
  `data_register` date DEFAULT NULL,
  `passport` tinyint DEFAULT NULL,
  `avg_number` float DEFAULT NULL,
  `biography` text COLLATE utf8mb4_general_ci,
  `video` longblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `sportsmen`
--
ALTER TABLE `sportsmen`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
