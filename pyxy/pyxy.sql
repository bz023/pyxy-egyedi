-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2021. Dec 01. 09:02
-- Kiszolgáló verziója: 10.4.17-MariaDB
-- PHP verzió: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `pyxy`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `alaplap`
--

CREATE TABLE `alaplap` (
  `id` int(11) NOT NULL,
  `gyarto` varchar(300) COLLATE utf8_hungarian_ci NOT NULL,
  `nev` varchar(300) COLLATE utf8_hungarian_ci NOT NULL,
  `ar` int(11) NOT NULL,
  `chipset` varchar(300) COLLATE utf8_hungarian_ci NOT NULL,
  `foglalat` varchar(300) COLLATE utf8_hungarian_ci NOT NULL,
  `Leiras` varchar(1000) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `alaplap`
--

INSERT INTO `alaplap` (`id`, `gyarto`, `nev`, `ar`, `chipset`, `foglalat`, `Leiras`) VALUES
(1, 'ASUS', 'PRIME Z690-P D4', 86000, 'Z690', '1700', 'Intel Z690 (LGA 1700) ATX alaplap PCIe 5.0, három M.2 bővítőhely, 14+1 DrMOS, DDR4, HDMI, DisplayPort, 2,5 Gb Ethernet, USB 3.2 Gen 2x2 Type-C, elülső USB 3.2 Gen 1 Type-C, Thunderbolt 4 támogatás és Aura Sync RGB világítással.');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `billentyuzet`
--

CREATE TABLE `billentyuzet` (
  `id` int(11) NOT NULL,
  `gyarto` varchar(300) COLLATE utf8_hungarian_ci NOT NULL,
  `nev` varchar(300) COLLATE utf8_hungarian_ci NOT NULL,
  `ar` int(11) NOT NULL,
  `tipus` varchar(300) COLLATE utf8_hungarian_ci NOT NULL,
  `csatlakozas` varchar(300) COLLATE utf8_hungarian_ci NOT NULL,
  `Leiras` varchar(1000) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `eger`
--

CREATE TABLE `eger` (
  `id` int(11) NOT NULL,
  `gyarto` varchar(300) COLLATE utf8_hungarian_ci NOT NULL,
  `nev` varchar(300) COLLATE utf8_hungarian_ci NOT NULL,
  `ar` int(11) NOT NULL,
  `tipus` varchar(300) COLLATE utf8_hungarian_ci NOT NULL,
  `csatlakozas` varchar(300) COLLATE utf8_hungarian_ci NOT NULL,
  `Leiras` varchar(1000) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `gephaz`
--

CREATE TABLE `gephaz` (
  `id` int(11) NOT NULL,
  `gyarto` varchar(300) COLLATE utf8_hungarian_ci NOT NULL,
  `nev` varchar(300) COLLATE utf8_hungarian_ci NOT NULL,
  `ar` int(11) NOT NULL,
  `meret` int(11) NOT NULL,
  `szabvany` varchar(300) COLLATE utf8_hungarian_ci NOT NULL,
  `Leiras` varchar(1000) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `hutes`
--

CREATE TABLE `hutes` (
  `id` int(11) NOT NULL,
  `gyarto` varchar(300) COLLATE utf8_hungarian_ci NOT NULL,
  `nev` varchar(300) COLLATE utf8_hungarian_ci NOT NULL,
  `ar` int(11) NOT NULL,
  `tipus` varchar(300) COLLATE utf8_hungarian_ci NOT NULL,
  `Leiras` varchar(1000) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `nev` varchar(300) COLLATE utf8_hungarian_ci NOT NULL,
  `jelszo` varchar(300) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `memoria`
--

CREATE TABLE `memoria` (
  `id` int(11) NOT NULL,
  `gyarto` varchar(300) COLLATE utf8_hungarian_ci NOT NULL,
  `nev` varchar(300) COLLATE utf8_hungarian_ci NOT NULL,
  `ar` int(11) NOT NULL,
  `meret` int(11) NOT NULL,
  `tipus` varchar(300) COLLATE utf8_hungarian_ci NOT NULL,
  `mhz` int(11) NOT NULL,
  `Leiras` varchar(1000) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `monitor`
--

CREATE TABLE `monitor` (
  `id` int(11) NOT NULL,
  `gyarto` varchar(300) COLLATE utf8_hungarian_ci NOT NULL,
  `nev` varchar(300) COLLATE utf8_hungarian_ci NOT NULL,
  `ar` int(11) NOT NULL,
  `atmero` int(11) NOT NULL,
  `felbontas` int(11) NOT NULL,
  `kepfrissites` int(11) NOT NULL,
  `Leiras` varchar(1000) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `processzor`
--

CREATE TABLE `processzor` (
  `id` int(11) NOT NULL,
  `gyarto` varchar(300) COLLATE utf8_hungarian_ci NOT NULL,
  `nev` varchar(300) COLLATE utf8_hungarian_ci NOT NULL,
  `ar` int(11) NOT NULL,
  `magok` int(11) NOT NULL,
  `szalak` int(11) NOT NULL,
  `mhz` int(11) NOT NULL,
  `Leiras` varchar(1000) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tapegyseg`
--

CREATE TABLE `tapegyseg` (
  `id` int(11) NOT NULL,
  `gyarto` varchar(300) COLLATE utf8_hungarian_ci NOT NULL,
  `nev` varchar(300) COLLATE utf8_hungarian_ci NOT NULL,
  `ar` int(11) NOT NULL,
  `watt` int(11) NOT NULL,
  `modularitas` tinyint(1) NOT NULL,
  `Leiras` varchar(1000) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `videokartya`
--

CREATE TABLE `videokartya` (
  `id` int(11) NOT NULL,
  `gyarto` varchar(300) COLLATE utf8_hungarian_ci NOT NULL,
  `nev` varchar(300) COLLATE utf8_hungarian_ci NOT NULL,
  `ar` int(11) NOT NULL,
  `vram` int(11) NOT NULL,
  `chipset` int(11) NOT NULL,
  `Leiras` varchar(1000) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `alaplap`
--
ALTER TABLE `alaplap`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `billentyuzet`
--
ALTER TABLE `billentyuzet`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `eger`
--
ALTER TABLE `eger`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `gephaz`
--
ALTER TABLE `gephaz`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `hutes`
--
ALTER TABLE `hutes`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `memoria`
--
ALTER TABLE `memoria`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `monitor`
--
ALTER TABLE `monitor`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `processzor`
--
ALTER TABLE `processzor`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `tapegyseg`
--
ALTER TABLE `tapegyseg`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `videokartya`
--
ALTER TABLE `videokartya`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `alaplap`
--
ALTER TABLE `alaplap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT a táblához `billentyuzet`
--
ALTER TABLE `billentyuzet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `eger`
--
ALTER TABLE `eger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `gephaz`
--
ALTER TABLE `gephaz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `hutes`
--
ALTER TABLE `hutes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `memoria`
--
ALTER TABLE `memoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `monitor`
--
ALTER TABLE `monitor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `processzor`
--
ALTER TABLE `processzor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `tapegyseg`
--
ALTER TABLE `tapegyseg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `videokartya`
--
ALTER TABLE `videokartya`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
