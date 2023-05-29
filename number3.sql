-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 29 2023 г., 15:13
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
-- База данных: `number3`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Results`
--

CREATE TABLE `Results` (
  `id_sportsmen` int DEFAULT NULL,
  `id_tournament` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `Sportsman`
--

CREATE TABLE `Sportsman` (
  `id` int NOT NULL,
  `fullName` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tournament`
--

CREATE TABLE `tournament` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `winners`
--

CREATE TABLE `winners` (
  `id_tournament` int DEFAULT NULL,
  `id_sportsmen` int DEFAULT NULL,
  `nubmer` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Results`
--
ALTER TABLE `Results`
  ADD KEY `id_sportsmen` (`id_sportsmen`),
  ADD KEY `id_tournament` (`id_tournament`);

--
-- Индексы таблицы `Sportsman`
--
ALTER TABLE `Sportsman`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tournament`
--
ALTER TABLE `tournament`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `winners`
--
ALTER TABLE `winners`
  ADD KEY `id_sportsmen` (`id_sportsmen`),
  ADD KEY `id_tournament` (`id_tournament`);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `Results`
--
ALTER TABLE `Results`
  ADD CONSTRAINT `results_ibfk_1` FOREIGN KEY (`id_sportsmen`) REFERENCES `Sportsman` (`id`),
  ADD CONSTRAINT `results_ibfk_2` FOREIGN KEY (`id_tournament`) REFERENCES `tournament` (`id`);

--
-- Ограничения внешнего ключа таблицы `winners`
--
ALTER TABLE `winners`
  ADD CONSTRAINT `winners_ibfk_1` FOREIGN KEY (`id_sportsmen`) REFERENCES `Sportsman` (`id`),
  ADD CONSTRAINT `winners_ibfk_2` FOREIGN KEY (`id_tournament`) REFERENCES `tournament` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
