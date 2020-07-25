-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 25. Jul 2020 um 16:32
-- Server-Version: 10.4.13-MariaDB
-- PHP-Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `cr11_janos_petadoption`
--
CREATE DATABASE IF NOT EXISTS `cr11_janos_petadoption` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cr11_janos_petadoption`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `animals`
--

CREATE TABLE `animals` (
  `id` int(20) NOT NULL,
  `species` varchar(20) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `zipcode` int(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `hobbies` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `age` int(20) DEFAULT NULL,
  `available_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `animals`
--

INSERT INTO `animals` (`id`, `species`, `category`, `name`, `zipcode`, `city`, `address`, `image`, `description`, `hobbies`, `website`, `age`, `available_date`) VALUES
(1, 'Dog', 'small', 'Poldi', 4845, 'Rutzenmoos', 'Toleranzweg 7/11', 'https://images.pexels.com/photos/2023384/pexels-photo-2023384.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'little Puppy is searching for a friendly home', 'playing with balls', 'https://www.fressnapf.at/ratgeber/hund/rasseportraits/dackel', 6, '2020-03-02'),
(2, 'Cat', 'small', 'Minka', 4645, 'Grünau', 'Kefergasse 70', 'https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', 'little baby cat ', 'playing , biting ,fighting', 'https://www.zooroyal.at/magazin/katzen/katzenrassen/hauskatze/', 3, '2020-07-02'),
(3, 'Snake', 'senior', 'Zisch', 4810, 'Gmunden ', 'Pinsdorfer Strasse 70', 'https://images.pexels.com/photos/3281127/pexels-photo-3281127.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', 'a wonderful Python', 'eat,sleep', 'https://www.fressnapf.at/ratgeber/beitrag/koenigspython-python-regius?gclid=CjwKCAjwsO_4BRBBEiwAyagRTeW1q5GAjbHb2LV7Q9lCY34B6RG2F3TA79X1c9-kTFXBqrz1IJsI2RoCsYIQAvD_BwE&ef_id=CjwKCAjwsO_4BRBBEiwAyagRTeW1q5GAjbHb2LV7Q9lCY34B6RG2F3TA79X1c9-kTFXBqrz1IJsI2RoCs', 10, '2020-05-22'),
(4, 'Bunny', 'large', 'Benny Bunny', 4663, 'Laakirchen', 'Lichtental 6', 'https://images.pexels.com/photos/4588056/pexels-photo-4588056.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', 'a very tame and trusting rabbit', 'cuddling', 'https://www.zooplus.de/magazin/kleintiere/kleintierrassen/kaninchen', 5, '2020-07-01'),
(5, 'donkey', 'senior', 'Paul', 4800, 'Attnang-Puchheim', 'In der Au 12', 'https://images.pexels.com/photos/584177/pexels-photo-584177.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', ' an old donkey', 'riding sleeoing', 'https://www.planet-wissen.de/natur/haustiere/esel/index.html', 12, '2020-04-13'),
(6, 'Parrot', 'senior', 'Hansi', 4020, 'Linz', 'Sandgasse 15', 'https://images.pexels.com/photos/2762494/pexels-photo-2762494.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', 'a talking Parrot', 'talking , talking ,talking', 'https://www.zooroyal.at/magazin/vogel/papageien/papagei-als-haustier/', 8, '2020-07-20'),
(7, 'horse', 'small', 'Blitz', 4645, 'Grünau', 'Kefergasse 70', 'https://images.pexels.com/photos/634613/pexels-photo-634613.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', 'Super cute baby horse ', 'jumping, playing', 'https://www.loesdau.de/pferd/pferdepflege/', 1, '2020-07-17'),
(8, 'Iguana', 'senior', 'Gismo', 4020, 'Linz', 'Landstrasse 30', 'https://images.pexels.com/photos/1190690/pexels-photo-1190690.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', 'an very old Iguana', 'hunting Insects', 'https://www.zooroyal.at/magazin/terraristik/gruener-leguan-der-beliebte-exot-fuer-daheim/', 20, '2020-03-19'),
(9, 'mouse', 'small', 'Jerry', 4662, 'Steyrermühl', 'Lichtental 6', 'https://images.pexels.com/photos/154177/pexels-photo-154177.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', 'little white mouse', 'eating', 'https://www.zooroyal.at/magazin/kleintier/maeuse/maus/', 1, '2020-04-26'),
(10, 'Ferret', 'large', 'Charlie', 4724, 'Neukirchen/Walde', 'Marktplatz 26', 'https://einfachtierisch.de/media/cache/article_main_image/cms/2017/01/Aussengehege-Frettchen-Chipiko-Shutterstock-167990270.jpg?595617', 'a cute playful ferret', 'Running and playing with balls.', 'https://www.fressnapf.at/ratgeber/beitrag/haustier-frettchen?gclid=CjwKCAjwsO_4BRBBEiwAyagRTflkHes46O8Py3KHkRIkPwVbyQmSGF2-KinQbS-SszuYA00UH86iBRoC-6EQAvD_BwE&ef_id=CjwKCAjwsO_4BRBBEiwAyagRTflkHes46O8Py3KHkRIkPwVbyQmSGF2-KinQbS-SszuYA00UH86iBRoC-6EQAvD_Bw', 3, '2020-06-23'),
(11, 'Trout', 'large', 'Fishy', 4645, 'Grünau', 'Kefergasse 70', 'https://www.wildpark-hundshaupten.de/assets/images/c/Wildpark-Hundshaupten-Forelle-1-4268bf72.jpg', ' my trout in the fish pond', 'swim and eat', 'http://www.aquaponik-eigenbau.de/blog/regenbogenforelle-anforderungen-an-die-aquaponik', 2, '2020-04-16'),
(12, 'Aligator', 'senior', 'Snapper', 4631, 'Krenglbach', 'Schmidinger Strasse 5', 'https://images.pexels.com/photos/2100047/pexels-photo-2100047.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', 'old and snappy crocodile', 'Loves to swim eat meat and bite something', 'https://haustier-haltung.de/kaiman-als-haustier-halten/', 17, '2020-07-13');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `userName` varchar(30) DEFAULT NULL,
  `userEmail` varchar(60) DEFAULT NULL,
  `userPass` varchar(255) DEFAULT NULL,
  `status` enum('user','admin') DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`userId`, `userName`, `userEmail`, `userPass`, `status`) VALUES
(4, 'Thomas Hamader', 'tomh@gmail.com', '3f1ee753a634c377133cde4bfdaa366a8bf4dbb7d57154bd85dd0279c886776a', 'user'),
(5, 'Anna Neugebauer', 'anna.neu1982@gmx.de', '020471135523689e2fc44457b9cb647609ad115d529dd49ce8727224e5137541', 'admin'),
(6, 'Hans Janos', 'janos@gmx.at', 'b17719859893a9fc216cf013f642a44df9a99f4b4c8914b47698d8508bdeb464', 'user');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `animals`
--
ALTER TABLE `animals`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `animals`
--
ALTER TABLE `animals`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT für Tabelle `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
