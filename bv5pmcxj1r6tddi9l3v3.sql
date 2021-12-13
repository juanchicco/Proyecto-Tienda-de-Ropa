-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: bv5pmcxj1r6tddi9l3v3-mysql.services.clever-cloud.com:3306
-- Generation Time: Dec 13, 2021 at 10:53 PM
-- Server version: 8.0.22-13
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bv5pmcxj1r6tddi9l3v3`
--

-- --------------------------------------------------------

--
-- Table structure for table `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nombre`, `descripcion`) VALUES
(1, 'Zapatillas', 'Zapatillas importadas,\r\nlo mejor en cuanto a calzado urbano'),
(2, 'Bermudas', 'Bermudas de todo tipo de material, encontrá la que mas te guste'),
(3, 'Remeras', 'Remeras de todo tipo');

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `idProducto` int NOT NULL,
  `id_categoria` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text,
  `precio` double DEFAULT NULL,
  `imagen` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`idProducto`, `id_categoria`, `nombre`, `descripcion`, `precio`, `imagen`) VALUES
(1, 1, 'Air-Max-90', '3 cuotas sin interés', 10000, '/imagenes/air-max-90.jpg'),
(2, 1, 'Air-Max-90', '3 cuotas sin interés', 10000, '/imagenes/air-max-90-blanco.jpg'),
(3, 1, 'Adidas Falcon', '3 cuotas sin interés', 8500, '/imagenes/adidas-falcon.jpg'),
(4, 1, 'Air-Max-Excee', '3 cuotas sin interés', 12500, '/imagenes/air-max-ex.jpg'),
(5, 1, 'Vans', '3 cuotas sin interés', 5800, '/imagenes/vans.jpg'),
(6, 2, 'Bermuda capri volsano', '3 cuotas sin interés', 3780, '/imagenes/bermuda-capri.jpg'),
(7, 2, 'Bermuda Ipanema', '3 cuotas sin interés', 5100, '/imagenes/bermuda-ipanema.jpg'),
(8, 2, 'Bermuda jogger', '3 cuotas sin interés', 3800, '/imagenes/bermuda-jogger.jpg'),
(9, 3, 'Nike Fresh', '3 cuotas sin interés', 3500, '/imagenes/remera-nike1.png'),
(10, 3, 'Nike clásica', '3 cuotas sin interés', 2850, '/imagenes/remera-nike2.png'),
(11, 3, 'Puma insta', '3 cuotas sin interés', 3020, '/imagenes/remera-puma.jpeg'),
(12, 3, 'Legend golsch', '3 cuotas sin interés', 4100, '/imagenes/remera-legend.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idProducto`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `idProducto` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
