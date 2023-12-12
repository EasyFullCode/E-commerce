-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3307
-- Tiempo de generación: 25-11-2023 a las 21:18:48
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tiendanew`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `IdCarrito` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `idCompras` int(11) NOT NULL,
  `FechaCompra` timestamp NOT NULL DEFAULT current_timestamp(),
  `Estado` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`idCompras`, `FechaCompra`, `Estado`) VALUES
(4, '2023-11-21 23:24:48', 'Listo'),
(5, '2023-11-22 20:25:20', 'Listo'),
(6, '2023-11-22 22:33:22', 'pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_comprados`
--

CREATE TABLE `productos_comprados` (
  `idProductoComprados` int(11) NOT NULL,
  `idCompra` int(11) NOT NULL,
  `Producto` varchar(255) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Precio` decimal(20,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos_comprados`
--

INSERT INTO `productos_comprados` (`idProductoComprados`, `idCompra`, `Producto`, `Cantidad`, `Precio`) VALUES
(8, 4, 'Detergente Ace', 1, 10.00),
(9, 4, 'Aceite Cocinero', 1, 10.00),
(10, 4, 'Aceite Florida', 1, 10.00),
(11, 5, 'Detergente Ace', 1, 10.00),
(12, 5, 'Aceite Cocinero', 1, 10.00),
(13, 6, 'Detergente Ace', 3, 10.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblproductos`
--

CREATE TABLE `tblproductos` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Precio` decimal(20,2) NOT NULL,
  `Descripcion` text NOT NULL,
  `Imagen` varchar(255) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Categoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tblproductos`
--

INSERT INTO `tblproductos` (`ID`, `Nombre`, `Precio`, `Descripcion`, `Imagen`, `Cantidad`, `Categoria`) VALUES
(16, 'Detergente Ace', 10.00, 'Bolsa 1 kilo', 'carpeta_imagenes/Ace.jpg', 27, 'Productos de Limpieza'),
(17, 'Aceite Cocinero', 10.00, 'Botella 1.8 Lt', 'carpeta_imagenes/AceiteCocinero.jpg', 7, 'Abarrotes'),
(19, 'Aceite Florida', 10.00, 'Botella 1 Lt', 'carpeta_imagenes/AceiteFlorida.jpg', 8, 'Abarrotes'),
(20, 'Aceite Primor', 10.00, 'Botella 1 Lt', 'carpeta_imagenes/AceitePrimor.jpg', 9, 'Abarrotes'),
(21, 'Aceite Sao', 10.00, 'Botella 1 Lt', 'carpeta_imagenes/AceiteSao.jpg', 9, 'Abarrotes'),
(22, 'Detergente Ariel', 10.00, 'Bolsa 1 kg', 'carpeta_imagenes/Ariel.jpg', 9, 'Productos de Limpieza'),
(23, 'Arroz Bells', 10.00, 'Bolsa 5 Kilos', 'carpeta_imagenes/ArrozBells.jpg', 10, 'Abarrotes'),
(24, 'Arroz Faraon', 10.00, 'Bolsa 5 Kilos', 'carpeta_imagenes/ArrozFaraon.jpg', 10, 'Abarrotes'),
(25, 'Arroz Paisana', 10.00, 'Bolsa 1 Kilo', 'carpeta_imagenes/ArrozPaisana.jpg', 10, 'Abarrotes'),
(26, 'Arroz Rio Branco', 10.00, 'Bolsa 1 kilo', 'carpeta_imagenes/ArrozRioBranco.jpg', 10, 'Abarrotes'),
(27, 'Arverja Hoja Redonda', 10.00, 'Bolsa 1 Kilo', 'carpeta_imagenes/ArverjaHojaRedonda.jpg', 10, 'Abarrotes'),
(28, 'Arverja Paisana', 10.00, 'Bolsa 1 Kilo', 'carpeta_imagenes/ArverjaPaisana.jpg', 10, 'Abarrotes'),
(29, 'Ayudin', 10.00, 'Tapper 750 Gr', 'carpeta_imagenes/Ayudin.jpg', 10, 'Productos de Limpieza'),
(30, 'Azucar Rubia Cartavio', 10.00, 'Bolsa 5 kg', 'carpeta_imagenes/AzucarRubiaCartavio.jpg', 10, 'Abarrotes'),
(31, 'Azucar Rubia Costeño', 10.00, 'Bolsa 1 Kilo', 'carpeta_imagenes/AzucarRubiaCosteño.jpg', 10, 'Abarrotes'),
(32, 'Azucar Rubia Vega', 10.00, 'Bolsa 1 Kilo', 'carpeta_imagenes/AzucarRubiaVega.jpg', 10, 'Abarrotes'),
(33, 'Detergente Bolivar', 10.00, 'Bolsa 1.5 kg', 'carpeta_imagenes/Bolivar.jpg', 10, 'Productos de Limpieza'),
(34, 'Lava Vajilla Cloradina', 10.00, 'Tapper 1000 gr', 'carpeta_imagenes/Cloradina.jpg', 10, 'Productos de Limpieza'),
(35, 'Coca Cola', 2.00, 'Botella 600ml', 'carpeta_imagenes/CocaCola.jpg', 12, 'Bebidas'),
(36, 'Doritos Black', 2.00, 'Bolsa 255 Gr', 'carpeta_imagenes/DoritosBlack.jpg', 10, 'Piqueos'),
(37, 'Doritos Flamming Hot', 2.00, 'Bolsa 255 Gr', 'carpeta_imagenes/DoritosFlamingHot.jpg', 10, 'Piqueos'),
(38, 'Frejoles Bells', 10.00, 'Bolsa 500 Gr', 'carpeta_imagenes/FrijolBells.jpg', 10, 'Abarrotes'),
(39, 'Galletas Animalitos', 2.00, 'Bolsa 1 Kilo', 'carpeta_imagenes/GalletasAnimalitos.jpg', 10, 'Piqueos'),
(40, 'Galletas Gran Cereal', 2.00, 'Paquete 40 Gr', 'carpeta_imagenes/GranCerealCosta.jpg', 10, 'Piqueos'),
(41, 'Gretel', 2.00, 'Paquete 192 Gr', 'carpeta_imagenes/Gretel.jpg', 10, 'Piqueos'),
(42, 'Hot Dog Braedt', 5.00, 'Paquete 250 Gr', 'carpeta_imagenes/HotDogBraedt.jpg', 10, 'Embutidos'),
(43, 'Hot Dog Redondos', 5.00, 'Paquete 500 Gr', 'carpeta_imagenes/HotDogRedondos.jpg', 10, 'Embutidos'),
(44, 'Hot Dog San Fernando', 5.00, 'Paquete 500 Gr', 'carpeta_imagenes/HotDogSanFernando.jpg', 10, 'Embutidos'),
(45, 'Hot Dog La Segoviana', 5.00, 'Paquete 500 Gr', 'carpeta_imagenes/HotDogSegoviana.jpg', 10, 'Embutidos'),
(46, 'Inka Cola', 2.00, 'Botella 600ml', 'carpeta_imagenes/InkaKola.jpg', 12, 'Bebidas'),
(47, 'Jamonada Braedt', 3.00, 'Paquete 200 Gr', 'carpeta_imagenes/JamonadaBraedt.jpg', 10, 'Embutidos'),
(48, 'Jamonada La Segoviana', 3.00, 'Paquete 200 Gr', 'carpeta_imagenes/JamonadaLaSegoviana.jpg', 10, 'Embutidos'),
(49, 'Jamonada San Fernando', 3.00, 'Paquete 200 Gr', 'carpeta_imagenes/JamonadaSanFernando.jpg', 10, 'Embutidos'),
(51, 'Kit Kat', 3.00, 'Paquete 250 Gr', 'carpeta_imagenes/KitKat.jpg', 10, 'Piqueos'),
(52, 'Lays Campesinas', 2.00, 'Paquete 192 Gr', 'carpeta_imagenes/LaysCampesinas.jpg', 10, 'Piqueos'),
(53, 'Lays Pollo Asado', 2.00, 'Paquete 192 Gr', 'carpeta_imagenes/LaysPolloAsado.jpg', 10, 'Piqueos'),
(54, 'Leche Gloria', 3.00, 'Lata 400 Gr', 'carpeta_imagenes/LecheGloria.jpg', 10, 'Lacteos'),
(55, 'Leche Ideal', 3.00, 'Lata 400 Gr', 'carpeta_imagenes/LecheIdeal.jpg', 10, 'Lacteos'),
(56, 'Lejia Clorox', 3.00, 'Botella 600ml', 'carpeta_imagenes/LejiaClorox.jpg', 10, 'Productos de Limpieza'),
(57, 'Lejia Darysa', 3.00, 'Botella 600ml', 'carpeta_imagenes/LejiaDaryza.jpg', 10, 'Productos de Limpieza'),
(58, 'Lejia Patito', 3.00, 'Botella 600ml', 'carpeta_imagenes/LejiaPatito.jpg', 10, 'Productos de Limpieza'),
(59, 'Lejia Sapolio', 5.00, 'Botella 600ml', 'carpeta_imagenes/LejiaSapolio.jpg', 10, 'Productos de Limpieza'),
(60, 'Chocolate Milka', 3.00, 'Paquete 500 Gr', 'carpeta_imagenes/Milka.jpg', 10, 'Piqueos'),
(61, 'Mortadella San Fernando', 5.00, 'Paquete 100 Gr', 'carpeta_imagenes/MortadelaSanFernando.jpg', 10, 'Embutidos'),
(62, 'Pepsi', 2.00, 'Botella 600ml', 'carpeta_imagenes/Pepsi.jpg', 12, 'Bebidas'),
(63, 'Galletas Picaras', 2.00, 'Paquete 50 Gr', 'carpeta_imagenes/Picaras.jpg', 12, 'Piqueos'),
(64, 'Detergente Sapolio', 3.00, 'Bolsa 800 Gr', 'carpeta_imagenes/SapolioDetergente.jpg', 10, 'Productos de Limpieza'),
(65, 'Sprite', 2.00, 'Botella 600ml', 'carpeta_imagenes/Sprite.jpg', 12, 'Bebidas'),
(66, 'Sublime', 3.00, 'Paquete 38 Gr', 'carpeta_imagenes/Sublime.jpg', 10, 'Piqueos'),
(67, 'Sublime Blanco', 3.00, 'Paquete 38 Gr', 'carpeta_imagenes/SublimeBlanco.jpg', 10, 'Piqueos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Apellidos` varchar(20) NOT NULL,
  `Correo` varchar(255) NOT NULL,
  `Contraseña` varchar(25) NOT NULL,
  `Cargo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `Nombre`, `Apellidos`, `Correo`, `Contraseña`, `Cargo`) VALUES
(1, 'Victor Vicente', 'Caycho Yucra', 'vvcaycho@gmail.com', 'contraseña', 2),
(2, 'victor', 'yucra', 'vcaychoy@autonoma.edu.pe', 'correoautomatico', 1),
(3, 'victor', 'yucra', 'vcaychoy@autonoma.edu.pe', 'correoautomatico', 0),
(4, 'victor', 'yucra', 'vcaychoy@autonoma.edu.pe', 'asdfghjkl', 0),
(7, 'jessy', 'campos', 'jessy@gmail.com', '12345678', 0),
(8, 'Victor', 'Caycho', 'vcaychoy@autnoma.edu.pe', 'probandocontraseña', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`IdCarrito`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`idCompras`),
  ADD KEY `idCompras` (`idCompras`);

--
-- Indices de la tabla `productos_comprados`
--
ALTER TABLE `productos_comprados`
  ADD PRIMARY KEY (`idProductoComprados`),
  ADD KEY `idCompra` (`idCompra`),
  ADD KEY `idProductoComprados` (`idProductoComprados`);

--
-- Indices de la tabla `tblproductos`
--
ALTER TABLE `tblproductos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `IdCarrito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `idCompras` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `productos_comprados`
--
ALTER TABLE `productos_comprados`
  MODIFY `idProductoComprados` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `tblproductos`
--
ALTER TABLE `tblproductos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos_comprados`
--
ALTER TABLE `productos_comprados`
  ADD CONSTRAINT `productos_comprados_ibfk_1` FOREIGN KEY (`idCompra`) REFERENCES `compras` (`idCompras`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
