-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 29-07-2021 a las 14:11:31
-- Versión del servidor: 5.7.32
-- Versión de PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tianguiz_cti`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargador`
--

CREATE TABLE `cargador` (
  `idcargador` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cargador`
--

INSERT INTO `cargador` (`idcargador`, `nombre`, `condicion`) VALUES
(1, 'Con cargador', 1),
(2, 'Sin cargador', 1),
(3, 'En reparacion', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idcategoria` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nombre`, `condicion`) VALUES
(1, 'Papelería', 1),
(2, 'Equipo de computo', 1),
(3, 'Muebles', 1),
(4, 'Electrodomesticos', 1),
(5, 'Telefonos', 1),
(6, 'Trastes', 1),
(7, 'Cubiertos', 1),
(8, 'Mobiliario', 1),
(9, 'Impresoras', 1),
(10, 'Cables', 1),
(11, 'Accesorios de computo', 1),
(12, 'Equipo de primeros auxilios', 1),
(13, 'Equipo de sanitización', 1),
(14, 'Equipo de carga', 1),
(15, 'Router', 1),
(16, 'Modem', 1),
(17, 'Repetidor', 1),
(18, 'Accesorios generales', 1),
(19, 'Camaras', 1),
(20, 'Herramientas', 1),
(21, 'Accesorios de limpieza', 1),
(22, 'Vigilancia', 1),
(23, 'Conmutadores', 1),
(24, 'Celulares', 1),
(25, 'Intendecia', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chat`
--

CREATE TABLE `chat` (
  `chatid` int(11) NOT NULL,
  `sender_userid` int(11) NOT NULL,
  `reciever_userid` int(11) NOT NULL,
  `message` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chat_login_details`
--

CREATE TABLE `chat_login_details` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `last_activity` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_typing` enum('no','yes') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `iddepartamento` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `condicion` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`iddepartamento`, `nombre`, `condicion`) VALUES
(1, 'Dirección General', 1),
(2, 'Sistemas', 1),
(3, 'Contabilidad', 1),
(4, 'Compras y Ventas', 1),
(5, 'Atención al cliente', 1),
(6, 'RRHH', 1),
(7, 'Administración', 1),
(8, 'Geometric Dimentional', 1),
(9, 'Recepción', 1),
(10, 'Cocina', 1),
(11, 'Intendencia', 1),
(12, 'SITE', 1),
(13, 'Mantenimiento', 1),
(14, 'NO ASIGNADO', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE `equipo` (
  `idequipo` int(11) NOT NULL,
  `numserie` varchar(50) NOT NULL,
  `numequipo` varchar(50) NOT NULL,
  `ram` int(11) NOT NULL,
  `idproducto` varchar(250) NOT NULL,
  `almacenamiento` varchar(250) NOT NULL,
  `observaciones` varchar(250) NOT NULL,
  `estado` varchar(250) NOT NULL,
  `imei` varchar(16) NOT NULL,
  `iddepartamento` int(11) NOT NULL,
  `idcargador` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `idcategoria` int(11) NOT NULL,
  `idestatus` int(11) NOT NULL,
  `condicion` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `equipo`
--

INSERT INTO `equipo` (`idequipo`, `numserie`, `numequipo`, `ram`, `idproducto`, `almacenamiento`, `observaciones`, `estado`, `imei`, `iddepartamento`, `idcargador`, `idusuario`, `idcategoria`, `idestatus`, `condicion`) VALUES
(1, 'C02JGDHDDTY3', 'MAC-001', 16, '89', '', 'S/O', 'usado', 'S/N', 14, 1, 33, 2, 2, 0),
(2, 'C1MSK37WDTY3', 'MAC-002', 16, '89', '', 'S/O', 'usado', 'S/N', 2, 3, 33, 2, 3, 0),
(3, 'C1MQ5JEJDTY3', 'MAC-004', 10, '89', '', 'S/O', 'usado', 'S/N', 1, 1, 27, 2, 1, 1),
(4, 'CPWL13Z5DTY3', 'MAC-005', 16, '89', '', 'S/O', 'usado', 'S/N', 14, 1, 33, 2, 2, 0),
(5, 'C1MKT8KRDTY3', 'MAC-008', 10, '89', '', 'S/O', 'usado', 'S/N', 3, 1, 33, 2, 2, 0),
(6, 'C1MNPKYSDTY3', 'MAC-009', 16, '89', '', 'S/O', 'usado', 'S/N', 1, 1, 2, 2, 1, 1),
(7, 'C2VHQHK0DTY3', 'MAC-010', 16, '89', '', 'S/O', 'usado', 'S/N', 7, 1, 6, 2, 1, 1),
(8, 'C1MMF796DTY3', 'MAC-011', 16, '89', '', 'S/O', 'usado', 'S/N', 14, 1, 33, 2, 2, 0),
(9, 'C17J7BY3DTY3', 'MAC-012', 10, '89', '', 'S/O', 'usado', 'S/N', 7, 1, 35, 2, 1, 1),
(10, 'C1MNQDC1DTY3', 'MAC-013', 12, '89', '', 'S/O', 'usado', 'S/N', 14, 1, 33, 2, 2, 0),
(12, 'C02HXMQ1DTY3', 'MAC-014', 12, '89', '', 'S/O', 'usado', 'S/N', 6, 1, 12, 2, 1, 1),
(14, 'C02SNNHNH3QD', 'MAC-016', 8, '90', '', 'S/O', 'usado', 'S/N', 3, 1, 11, 2, 4, 1),
(16, 'C02JDWULDTY3', 'MAC-018', 16, '89', '', 'S/O', 'usado', 'S/N', 4, 1, 17, 2, 1, 1),
(17, 'C1MQW1GWDTY3', 'MAC-019', 16, '89', '', 'S/O', 'usado', 'S/N', 2, 1, 20, 2, 1, 1),
(18, 'C1ML4ZW6DTY3', 'MAC-020', 10, '89', '', 'S/O', 'usado', 'S/N', 3, 1, 23, 2, 1, 1),
(19, 'C1MKK2BYDTY3', 'MAC-021', 12, '89', '', 'S/O', 'usado', 'S/N', 14, 1, 33, 2, 2, 0),
(20, 'C1MNP7SGDTY3', 'MAC-022', 16, '89', '', 'S/O', 'usado', 'S/N', 8, 1, 25, 2, 5, 1),
(21, 'C1MVN0K7J1WK', 'MAC-023', 8, '90', '', 'S/O', 'usado', 'S/N', 14, 1, 3, 2, 1, 1),
(22, 'C02SNPVHH3QD', 'MAC-024', 8, '90', '', 'S/O', 'usado', 'S/N', 14, 3, 33, 2, 3, 0),
(23, 'C17H9BQ3DV13', 'MAC-025', 8, '89', '', 'S/O', 'usado', 'S/N', 14, 1, 33, 2, 4, 1),
(24, 'C1MQ6GHQDTY3', 'MAC-026', 12, '89', '', 'S/O', 'usado', 'S/N', 14, 1, 33, 2, 2, 0),
(25, 'C1MW15XZJ1WK', 'MAC-027', 8, '90', '', 'S/O', 'usado', 'S/N', 4, 1, 5, 2, 1, 1),
(26, 'C02SL9AMH3QD', 'MAC-028', 8, '90', '', 'S/O', 'usado', 'S/N', 3, 1, 10, 2, 1, 1),
(27, '-', 'MAC-029', 0, '89', '', 'S/O', 'usado', 'S/N', 2, 3, 33, 2, 3, 0),
(28, 'FVFYL0K4HV29', 'MAC-031', 8, '89', '', 'S/O', 'usado', 'S/N', 6, 1, 7, 2, 1, 1),
(29, 'C02VF515HV29', 'MAC-032', 8, '89', '', 'S/O', 'usado', 'S/N', 7, 1, 8, 2, 1, 1),
(30, 'C02HRNFVOHJF', 'IMAC-001', 32, '91', '', 'S/O', 'usado', 'S/N', 2, 1, 16, 2, 1, 1),
(31, 'W87368V3X89', 'IMAC-002', 4, '91', '', 'S/O', 'usado', 'S/N', 2, 1, 18, 2, 1, 1),
(32, 'W88106ANZE3', 'IMAC-003', 2, '91', '', 'S/O', 'usado', 'S/N', 14, 1, 33, 2, 3, 0),
(33, 'C02TW5B2H7JY', 'IMAC-004', 8, '91', '', 'S/O', 'usado', 'S/N', 4, 1, 19, 2, 1, 1),
(34, 'F5KQP03TF9UBM', 'Cilindro MAC - 001', 24, '92', '', 'S/O', 'usado', 'S/N', 1, 1, 2, 2, 1, 1),
(35, '80EE73B5EA51', 'GHIA - 001', 4, '93', '', 'REPARACION POR GOLPE', 'usado', 'S/N', 2, 1, 33, 2, 3, 0),
(36, '80EE73B5EA8A', 'GHIA - 002', 4, '93', '', 'S/O', 'usado', 'S/N', 2, 3, 33, 2, 3, 0),
(37, '80EE73B5EB78', 'GHIA - 003', 8, '93', '', 'S/O', 'usado', 'S/N', 2, 3, 33, 2, 3, 0),
(38, '80EE73B5F08E', 'GHIA - 004', 4, '93', '', 'S/O', 'usado', 'S/N', 14, 1, 33, 2, 2, 1),
(39, 'NXM4BAL0032410EC687600', 'Acer -001', 6, '94', '', 'S/O', 'usado', 'S/N', 1, 1, 3, 2, 1, 1),
(40, 'PF15M484', 'Lenovo - 001', 4, '95', '', 'S/O', 'usado', 'S/N', 14, 1, 33, 2, 3, 0),
(67, '349403084456238', 'IPHONE X', 8, '222', '64 GB', 'S/R', 'usado', '349403084456238', 3, 1, 10, 24, 3, 1),
(79, '359406085158372', 'IPHONE X', 8, '222', '64 GB', 'S/R', 'usado', '359406085158372', 3, 1, 11, 24, 1, 1),
(80, '353336073407521', 'IPHONE 6S', 8, '224', '16 GB', 'S/R', 'usado', '353336073407521', 4, 1, 19, 24, 1, 1),
(81, 'F2LT7CJ5HFY7', 'IPHONE 7 Plus', 8, '225', '128 GB', 'S/R', 'usado', '355346082390780', 3, 1, 10, 24, 1, 0),
(82, '359403084645798', 'IPHONE X', 8, '222', '64 GB', 'S/R', 'usado', '359403084645798', 6, 1, 12, 24, 1, 1),
(83, '349406085303911', 'IPHONE X', 8, '222', '64 GB', 'S/R', 'usado', '349406085303911', 6, 1, 6, 24, 1, 1),
(84, '351374431988603', 'IPHONE X', 8, '222', '64 GB', 'S/R', 'usado', '351374431988603', 14, 1, 33, 24, 2, 1),
(85, '353042098781847', 'IPHONE X', 8, '222', '64 GB', 'S/R', 'usado', '353042098781847', 4, 1, 5, 24, 1, 1),
(86, '353045099004234', 'IPHONE X', 8, '222', '64 GB', 'S/R', 'usado', '353045099004234', 1, 3, 1, 24, 1, 1),
(87, '353047098985991', 'IPHONE X', 8, '222', '64 GB', 'S/R', 'usado', '353047098985991', 1, 1, 2, 24, 1, 1),
(89, 'F2LVPQCTJCLH', 'IPHONE X', 8, '222', '64 GB', 'S/R', 'usado', '359406084855887', 14, 1, 33, 24, 2, 0),
(92, 'G0NF70EN0D4Y', 'IPHONE 12 PRO MAX', 16, '223', '128 GB', 'S/R', 'nuevo', '355565709336732', 7, 1, 8, 24, 1, 1),
(93, '355565706135376', 'IPHONE 12 PRO MAX', 8, '223', '128 GB', 'S/R', 'nuevo', '355565706135376', 6, 1, 7, 24, 1, 1),
(94, 'C1MPQ31PDTY3', 'MAC-007', 16, '89', '', 'S/O', 'usado', 'S/N', 8, 1, 25, 2, 1, 1),
(95, 'CO2V44LCJ1WK', 'MAC-030', 8, '90', '', 'S/O', 'usado', 'S/N', 8, 1, 25, 2, 1, 1),
(96, 'C02JKYUMDTY3', 'MAC-006', 8, '89', '', 'S/O', 'usado', 'S/N', 14, 1, 33, 2, 2, 0),
(97, 'C02JGDBJDTY3', 'MAC-003', 16, '89', '', 'S/O', 'usado', 'S/N', 8, 1, 25, 2, 1, 1),
(98, 'S/N', 'IPHONE 12 PRO MAX', 8, '223', '128 GB', 'S/O', 'nuevo', 'S/N', 1, 1, 2, 24, 1, 1),
(99, 'S/N', 'IPHONE 12', 8, '223', '128 GB', 'S/O', 'nuevo', 'S/N', 1, 1, 3, 24, 1, 1),
(104, 'C1MNL560DYTY3', 'MAC-017', 16, '89', '500', 'S/O', 'nuevo', '', 1, 1, 3, 2, 1, 1),
(105, 'F2LVPQ3VJCLH', 'IPHONE X', 8, 'X', '64GB', '', 'usado', '359406085303911', 13, 1, 33, 24, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estatus`
--

CREATE TABLE `estatus` (
  `idestatus` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `estatus`
--

INSERT INTO `estatus` (`idestatus`, `nombre`, `condicion`) VALUES
(1, 'Asignado', 1),
(2, 'Libre', 1),
(3, 'En reparacion', 1),
(4, 'Empeño', 1),
(5, 'Prestamo', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura_orden`
--

CREATE TABLE `factura_orden` (
  `order_id` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nombre_med` varchar(250) CHARACTER SET utf8 NOT NULL,
  `edad_med` varchar(50) CHARACTER SET utf8 NOT NULL,
  `sexo` varchar(50) NOT NULL,
  `sangre_med` varchar(50) NOT NULL,
  `estatura_med` varchar(50) NOT NULL,
  `medicamento_med` varchar(500) NOT NULL,
  `antecedentes_med` varchar(700) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `factura_orden`
--

INSERT INTO `factura_orden` (`order_id`, `idusuario`, `order_date`, `nombre_med`, `edad_med`, `sexo`, `sangre_med`, `estatura_med`, `medicamento_med`, `antecedentes_med`) VALUES
(1, 7, '2021-07-23 17:05:47', '1985-06-28', '36 años', 'Femenino', 'O+', '1.58 cm', 'Ninguno', 'Ninguno'),
(2, 18, '2021-07-23 17:11:20', '1997-08-16', '23 años', 'Masculino', 'O+', '1.75 cm', 'Penicilina', 'Operación de vesícula'),
(3, 35, '2021-07-23 17:11:20', '1997-09-15', '23 años', 'Femenino', 'B+', '1.60', 'Ninguno', 'Ninguno'),
(4, 16, '2021-07-23 17:13:13', '1999-12-08', '21 años', 'Masculino', 'B+', '1.62 cm', 'Ninguno', 'Ninguno'),
(5, 20, '2021-07-23 17:14:10', '1999-05-11', '22 años', 'Masculino', 'O+', '1.83 cm', 'Ninguno', 'Ninguno'),
(6, 5, '2021-07-23 17:15:10', '1993-09-19', '27 años', 'Masculino', 'O-', '1.78 cm', 'Ninguno', 'Ninguno'),
(7, 17, '2021-07-23 17:16:05', '1998-05-04', '23 años', 'Femenino', 'O+', '1.75 cm', 'Ninguno', 'Ninguno'),
(8, 14, '2021-07-23 17:18:38', '1985-06-05', '36 años', 'Femenino', 'O+', '1.50 cm', 'Ninguno', 'Ninguno'),
(9, 15, '2021-07-23 17:19:44', '1975-06-10', '46 años', 'Femenino', 'O+', '1.58 cm', 'Ninguno', 'Ninguno'),
(10, 32, '2021-07-23 17:20:57', '1988-05-19', '33 años', 'Masculino', 'O+', '1.78 cm', 'Ninguno', 'Ninguno'),
(11, 12, '2021-07-23 17:21:56', '1997-06-15', '24 años', 'Masculino', 'O+', '1.75 cm', 'Ninguno', 'Ninguno'),
(12, 10, '2021-07-23 17:22:47', '1985-04-08', '26 años', 'Femenino', 'O+', '1.65 cm', 'Ninguno', 'Ninguno'),
(13, 8, '2021-07-23 17:23:32', '1979-07-19', '42 años', 'Femenino', 'O+', '1.65 cm', 'Penicilina, Betametazona y sambutalmol', 'Ninguno'),
(14, 19, '2021-07-23 17:24:23', '2000-01-03', '21 años', 'Masculino', 'O+', '1.70 cm', 'Ninguno', 'Ninguno'),
(15, 13, '2021-07-23 17:25:20', '1958-08-19', '62 años', 'Masculino', 'HO-', '1.65 cm', 'Ninguno', 'Ninguno');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura_orden_producto`
--

CREATE TABLE `factura_orden_producto` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `fecha_med` varchar(50) NOT NULL,
  `peso_med` varchar(250) NOT NULL,
  `peso_ideal_med` varchar(50) NOT NULL,
  `talla_med` varchar(50) NOT NULL,
  `cadera_med` varchar(50) NOT NULL,
  `pecho_med` varchar(50) NOT NULL,
  `cintura_med` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `factura_orden_producto`
--

INSERT INTO `factura_orden_producto` (`order_item_id`, `order_id`, `fecha_med`, `peso_med`, `peso_ideal_med`, `talla_med`, `cadera_med`, `pecho_med`, `cintura_med`) VALUES
(1, 1, '2021-07-16', '68.00 kg', '60.00 kg', '30', '104 cm', '95 cm', '82 cm'),
(2, 1, '2021-07-23', '68.00 kg', '60.00 kg', '30', '104 cm', '95 cm', '82 cm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insumo`
--

CREATE TABLE `insumo` (
  `idinsumo` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `iddepartamento` int(11) NOT NULL,
  `idtipo` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `stock_min` int(11) NOT NULL,
  `idmedida` int(11) NOT NULL,
  `condicion` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `idinventario` int(11) NOT NULL,
  `idproducto` varchar(250) NOT NULL,
  `iddepartamento` int(11) NOT NULL,
  `codigo` varchar(50) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `stock_min` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `idmedida` int(11) NOT NULL,
  `idcategoria` int(11) NOT NULL,
  `condicion` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`idinventario`, `idproducto`, `iddepartamento`, `codigo`, `descripcion`, `stock_min`, `stock`, `idmedida`, `idcategoria`, `condicion`) VALUES
(1, 'PLUMAS DE COLOR NEGRO', 2, '284211219740', 'PLUMAS DE COLOR NEGRO MARCA BIC', 1, 79, 1, 1, 1),
(2, 'PLUMAS COLOR AZUL', 2, '284211219786', 'PAQUETE DE 12 PLUMAS DE COLOR AZUL MARCA BIC', 1, 101, 1, 1, 1),
(3, 'TIJERAS DE METAL', 2, '284211223612', 'TIJERAS DE METAL CON MANGO COLOR ROJO', 1, 2, 1, 1, 1),
(4, 'GRAPAS STANDAR', 2, '284211223123', 'GRAPAS STANDAR CAJA DE 500 PIEZAS', 1, 1, 9, 1, 1),
(5, 'BROCHE BACHO', 2, '284211224349', 'BROCHE BACHO CAJA DE 100 PIEZAS', 1, 3, 9, 1, 1),
(6, 'CLIP STANDAR', 2, '284211225714', 'CLIP STANDAR CAJA DE 100 PIEZAS', 1, 33, 9, 1, 1),
(7, 'LAPIZ DE MANERA', 2, '284211226808', 'LAPIZ DE MANERA', 1, 56, 1, 1, 1),
(8, 'PLASTILINA', 2, '284211226510', 'PLASTILINA MARCA PLAY DOH', 1, 4, 1, 1, 1),
(9, 'PEGAMENTO EN BARRA', 2, '284211229845', 'PEGAMENTO EN BARRA', 1, 0, 1, 1, 1),
(10, 'MARCADORES NEGROS', 2, '284211229649', 'MARCADORES COLOR NEGRO PARA PIZARRON', 1, 10, 1, 1, 1),
(11, 'ENGRAPADORA', 2, '28421123651', 'ENGRAPADORA', 1, 1, 1, 1, 1),
(12, 'FOLIADOR', 2, '284211237593', 'FOLIADOR DE 6 DIGITOS', 1, 1, 1, 1, 1),
(13, 'DESPACHADOR DE CINTA', 2, '284211238187', 'DESPACHADOR DE CINTA TAMAÑO JUMBO', 1, 4, 1, 1, 1),
(14, 'TARJETAS 5X8', 2, '284211239978', 'PAQUETE DE TARJETAS 5X8', 1, 16, 8, 1, 1),
(15, 'ETIQUETAS ADHESIVAS', 2, '284211240964', 'ETIQUETAS ADHESIVAS', 1, 10, 1, 1, 1),
(16, 'MARCATEXTO', 2, '284211241666', 'MARCATEXTO', 1, 8, 1, 1, 1),
(17, 'SOBRE COIN', 2, '284211241243', 'SOBRE COIN', 1, 290, 1, 1, 1),
(18, 'BLOCK DE PAGARÉ', 2, '284211242438', 'BLOCK DE PAGARÉ', 1, 1, 1, 1, 1),
(19, 'PLUMONES', 2, '284211242264', 'PLUMONES VIC DE COLORES', 1, 13, 1, 1, 1),
(20, 'FOLDERS', 2, '284211243600', 'FOLDER TAMAÑO CARTA', 1, 0, 1, 1, 1),
(21, 'NOTAS DE REMISIÓN', 2, '284211245524', 'NOTAS DE REMISIÓN', 1, 3, 1, 1, 1),
(22, 'BLOCK DE HOJAS ALBANENE', 2, '284211245160', 'BLOCK DE HOJAS ALBANENE', 1, 1, 1, 1, 1),
(23, 'PAPEL DE SEGURIDAD', 2, '28421124657', 'PAPEL DE SEGURIDAD', 1, 1, 1, 1, 1),
(24, 'ROTULADOR', 2, '284211246116', 'ROTULADOR DE DISCOS', 1, 100, 1, 1, 1),
(25, 'BLOCK DE HOJAS', 2, '28421124786', 'BLOCK DE HO0JAS DE RAYA', 1, 0, 1, 1, 1),
(26, 'LIBRO DE REGISTROS', 2, '28421124879', 'LIBRO DE REGISTROS FORMA FRANCÉS', 1, 2, 1, 1, 1),
(27, 'LIBRO DE REGISTROS', 2, '284211250686', 'LIBRO DE REGISTROS TIPO ITALIANA', 1, 2, 1, 1, 1),
(28, 'LIBRO DE REGISTROS', 2, '284211251735', 'LIBRO DE REGISTROS FORMA ITALIANA 192 HOJAS', 1, 1, 1, 1, 1),
(29, 'LIBRO DE REGISTROS', 2, '28421135452', 'LIBRO DE REGISTROS TIPOFRANCÉS 240 HOJAS', 1, 1, 1, 1, 1),
(30, 'CARRITO AUXILIAR DE LIMPIEZA', 11, '284211038496', 'CARRITO AUXILIAR DE DOS PIEZAS CON TRAPEADOR', 1, 1, 1, 25, 1),
(31, 'CESTO', 11, '284211337641', 'CESTO DE CONSERJE', 1, 1, 1, 25, 1),
(32, 'BOTE DE BASURA', 11, '284211241971', 'BOTES DE BASURA DE PLASTICO PEQUEÑOS', 1, 3, 1, 25, 1),
(33, 'ORGANIZADOR EJECUTIVO', 11, '284211337361', 'ORGANIZADOR EJECUTIVO RUB-BERMAID CANDDY/CARRO LIM', 1, 1, 1, 25, 1),
(34, 'JUEGO DE HERRAMIENTAS', 11, '284211330226', 'JUEGO DE HERRAMIENTAS MANUALES 153 PIEZAS MARCA BL', 1, 1, 1, 25, 1),
(35, 'MATRACA', 11, '284211336154', 'MATRACA CONDADO UNIVERSAL MODELO 71853 MARCA RED L', 1, 1, 1, 25, 1),
(36, 'VENTILADOR', 1, '284211312182', 'VENTILADOR ELECTRICO END FORMA DE CILINDRO MARCA Q', 1, 1, 1, 8, 1),
(37, 'MAMPARA', 8, '284211319238', 'MAMPARA COLOR AZUL', 1, 17, 1, 8, 1),
(38, 'REPISA', 8, '284211320679', 'REPISA DE MAMPARA COLOR CAFE', 1, 2, 1, 8, 1),
(39, 'ANAQUEL', 8, '284211320842', 'ANAQUELES DE MAMPARA CON PUERTA', 1, 1, 1, 8, 1),
(40, 'TELEFONO ALAMBRICO', 8, '284211226236', 'TELEFONO ALAMBRICO COLOR BLANCO MARCA PANASONIC', 1, 6, 1, 5, 1),
(41, 'SILLA', 8, '284211323904', 'SILLA  ERGODINAMICA SENCILLA DE COLOR NEGRO CON 4', 1, 9, 1, 8, 1),
(42, 'MUEBLE ARTURITO', 8, '284211311683', 'MUEBLE ARTURITO CON 2 CAJONES', 1, 1, 1, 8, 1),
(43, 'ESCRITORIO DE OFICINA', 8, '284211322337', 'ESCRITORIOS DE MAMPARA', 1, 7, 1, 8, 1),
(44, 'IMPRESORA', 8, '284211330125', 'IMPRESORA MULTI TAREA MARCA BROTHER', 1, 1, 1, 9, 1),
(45, 'VENTILADOR', 8, '284211313696', 'VENTILADOR COLOR BLANCO MARCA BORNOTO', 1, 1, 1, 8, 1),
(46, 'MAMPARA', 2, '284211319466', 'MAMPARA COLOR AZUL', 1, 12, 1, 8, 1),
(47, 'ANAQUEL', 2, '284211320717', 'ANAQUELES DE MAMPARA CON PUERTA', 1, 3, 1, 8, 1),
(48, 'ESCRITORIO DE OFICINA', 2, '28421135588', 'ESCRITORIO DE OFICINA', 1, 3, 1, 8, 1),
(49, 'DESPACHADOR DE MASKING', 2, '284211252562', 'DESPACHADOR DE MASKING TAMAÑO PEQUEÑO', 1, 4, 1, 1, 1),
(50, 'BLOCK DE RECIBO', 2, '284211253734', 'BLOCK DE RECIBO DE PÓLIZA DE CHEQUES', 1, 2, 1, 1, 1),
(51, 'PAQUETE DE HOJAS PASTEL', 2, '284211254875', 'PAQUETE DE HOJAS COLOR PASTEL 100 HOJAS', 1, 1, 8, 1, 1),
(52, 'BLOCK DE HOJAS MILIMETRICAS', 2, '284211254777', 'BLOCK DE HOJAS MILIMETRICAS DE 50 HOJAS', 1, 1, 7, 1, 1),
(53, 'BLOCK  DE PÓLIZA', 1, '284211255807', 'BLOCK  DE PÓLIZA DE CHEQUE DE 50 HOJAS INCOMPLETO', 1, 2, 10, 1, 1),
(54, 'HOJAS DE OPALINA', 1, '284211257485', 'PAQUETE DE HOJAS OPALINA DE 50 HOJAS', 1, 1, 8, 1, 1),
(55, 'HOJAS OPALINA', 2, '284211256979', 'PAQUETE DE HOJAS OPALINA DE 100 HOJAS', 1, 1, 8, 1, 1),
(56, 'DISPENSADOR DE DIUREX', 2, '2842113466', 'DISPENSADOR DE DIUREX CON REPUESTO', 1, 2, 1, 1, 1),
(57, 'CARPETA TAMAÑO CARTA  7,6 DE GROSOS CAPACIDAD 600', 2, '2842113628', 'CARPETA TAMAÑO CARTA', 1, 14, 1, 1, 1),
(58, 'CARPETA TAMAÑO CARTA', 2, '28421137624', 'CARPETA TAMAÑO CARTA 2 MM', 1, 1, 1, 1, 1),
(59, 'CARPETA TAMAÑO CARTA', 2, '28421137134', 'CARPETA TAMAÑO CARTA 1.5 MM', 1, 2, 1, 1, 1),
(60, 'CARPETA TAMAÑO CARTA', 2, '28421139528', 'CARPETA TAMAÑO CARTA 1 MM', 1, 2, 1, 1, 1),
(61, 'DISPENSADOR DE DIUREX', 2, '284211311658', 'DISPENSADOR DE DIUREX CON REPUESTO', 1, 2, 1, 1, 1),
(62, 'MUEBLE ARTURITO', 2, '284211312218', 'MUEBLE ARTURITO CON 2 CAJONES', 1, 2, 1, 8, 1),
(63, 'GRAPAS STANDAR 26/6', 1, '284211312811', 'GRAPAS STANDAR 26/6 PAQUETE DE 500 PIEZAS', 1, 1, 8, 1, 1),
(64, 'IMPRESORA', 1, '284211324361', 'IMPRESORA A COLOR MARCSA BROTHER MODELO 3140', 1, 1, 1, 9, 1),
(65, 'IMPRESORA', 1, '284211324143', 'IMPRESORA A BLANCO Y NEGRO MARCA HP MODELO LASERJE', 1, 1, 1, 9, 1),
(66, 'IMPRESORA', 1, '284211326319', 'IMPRESORA TERMICA MARCA THERMAL LABEL PRINTER IP.', 1, 1, 1, 9, 1),
(67, 'IMPRESORA', 1, '28421132413', 'IMPRESORA TERMICA PARA TICKETS MARCA ECLINE MODELO', 1, 1, 1, 9, 1),
(68, 'VALE DE CAJA', 2, '28421131284', 'VALE DE CAJA PAQUETE DE 500 HOJAS', 1, 3, 8, 1, 1),
(69, 'IMPRESORA', 2, '284211324627', 'IMPRESORA TERMINA DE TICKETS MARCA OKI', 1, 1, 1, 9, 1),
(70, 'PAQUETE DE MARCADOR', 2, '284211313283', 'PAQUETE DE MARCADOR DE PIZARRON MANNY', 1, 1, 8, 1, 1),
(71, 'ESCRITORIO DE OFICINA', 2, '284211322646', 'ESCRITORIOS DE OFICINA COLOR GRIS', 1, 6, 1, 8, 1),
(72, 'PAQUETE  DE PROTECTORES', 2, '284211317395', 'PAQUETE  DE PROTECTORES DE HOJAS TAMAÑO CARTA', 1, 0, 8, 1, 1),
(73, 'SILLA', 1, '284211323780', 'SILLA  ERGODINAMICA SENCILLA DE COLOR NEGRO CON 4', 1, 5, 1, 8, 1),
(74, 'SILLA', 2, '28421136875', 'SILLA ERGODINAMICA ACOGINADA COLOR NEGRO CON 4 RUE', 1, 5, 1, 8, 1),
(75, 'PIZARRA', 2, '284211326645', 'PIZARRA TRANSPARENTE', 1, 2, 1, 8, 1),
(76, 'EMBUDO', 2, '284211319767', 'EMBUDO PARA IMPRESORA', 1, 1, 1, 1, 1),
(77, 'TELEFONO ALAMBRICO', 2, '284211230774', 'TELEFONO ALAMBRICO MARCA MODERNPHONE MODELO TC-920', 1, 2, 1, 5, 1),
(78, 'BOTE DE BASURA', 2, '284211241380', 'BOTE DE PLATICO PARA BASURA', 1, 2, 1, 8, 1),
(79, 'AIRE ACONDICIONADO', 2, '284211326610', 'AIRE ACONDICIONADO MARCA NEOAIRE', 1, 1, 1, 8, 1),
(80, 'CAJA DE CABLES', 2, '284211326485', 'CAJA DE CABLES ETHERNET Y LINEA TELEFONICA', 1, 1, 1, 18, 1),
(81, 'REGLA', 2, '284211319330', 'REGLA DE METAL', 1, 1, 1, 1, 1),
(82, 'MASKING TAPE', 2, '284211320939', 'MASKING TAPE', 1, 0, 1, 1, 1),
(83, 'TECLADOS', 2, '284211326659', 'TECLADOS INALAMBRICOS PARA MAC MARCA  WIRELESS KEY', 1, 2, 1, 11, 1),
(84, 'PLUMÓN CON BORRADOR', 2, '284211320720', 'PLUMÓN CON BORRADOR', 1, 0, 1, 1, 1),
(85, 'PAQUETE DE FOLDER', 2, '284211321141', 'PAQUETE DE FOLDER TAMAÑO CARTA', 1, 0, 8, 1, 1),
(86, 'TECLADOS', 2, '284211337177', 'TECLADOS ALAMBRICOS COLOR NEGRO', 1, 4, 1, 11, 1),
(87, 'PAQUETE DE ETIQUETAS', 2, '284211322146', 'PAQUETE DE ETIQUETAS TRANSFER TIRA 504', 1, 1, 8, 1, 1),
(88, 'TINTA PARA SELLOS', 2, '284211323626', 'TINTA PARA SELLOS COLOR NEGRO', 1, 1, 1, 1, 1),
(89, 'ENTINTADOR', 2, '284211325166', 'ENTINTADOR DE COJINES PARA SELLO', 1, 1, 1, 1, 1),
(90, 'MOUSE', 2, '284211337432', 'MOUSE', 1, 5, 1, 11, 1),
(91, 'FUENTE DE PODER', 2, '284211327254', 'FUENTE DE PODER PARA COMPUTADORA', 1, 2, 1, 11, 1),
(92, 'PAPEL BOND', 2, '284211326652', 'PAPEL BOND TAMAÑO CARTA MARCA SCOOL HOJA BLANCA', 1, 5, 8, 1, 1),
(93, 'PAPEL BOND', 2, '284211327174', 'PAPEL BOND TAMAÑO CARTA MARCA OFFICE DEPOT PAQUETE', 1, 5, 8, 1, 1),
(94, 'PAPEL FOTBOND', 2, '284211329482', 'PAPEL FOTBOND SCRIBE HOJA BLANCA PAQUETE DE 500 HO', 1, 6, 8, 1, 1),
(95, 'LECTOR DE DVD', 1, '284211327650', 'LECTOR DE DVD PARA COMPUTADORA', 1, 3, 1, 11, 1),
(96, 'PROTECTOR DE HOJAS', 2, '284211324816', 'PROTECTOR DE HOJAS TAMAÑO OFICIO', 1, 2, 8, 1, 1),
(97, 'MODEM', 2, '284211327124', 'MODEM MARCA HUAWEI', 1, 1, 1, 16, 1),
(98, 'JUEGO DE SEPARADORES', 2, '284211328903', 'JUEGO DE SEPARADORES DE HOJA', 1, 2, 1, 1, 1),
(99, 'BLOCK DE RAYA', 2, '284211332382', 'BLOCK DE RAYA 50', 1, 2, 1, 1, 1),
(100, 'REPETIDOR', 2, '284211327571', 'REPETIDOR DE INTERNET MARCA TP-LINK', 0, 1, 1, 11, 1),
(101, 'BLOCK DE RAYA', 2, '284211331702', 'BLOCK DE RAYA 80', 1, 2, 1, 1, 1),
(102, 'PINTURAS PLASTICA', 2, '284211332560', 'PINTURAS PLASTICA COLOR VERDE 30 ML', 1, 1, 1, 1, 1),
(103, 'PINTURAS PLASTICA', 2, '284211333459', 'PINTURAS PLASTICA COLOR ROJO 30 ML', 1, 1, 1, 1, 1),
(104, 'PEGA DIAMANTINA', 2, '284211334796', 'PEGA DIAMANTINA COLOR ROSA 30 ML', 1, 1, 1, 1, 1),
(105, 'PEGA DIAMANTINA', 2, '284211336447', 'PEGA DIAMANTINA COLOR ROSA 30 ML', 1, 1, 1, 1, 1),
(106, 'PEGA DIAMANTINA', 2, '284211336622', 'PEGA DIAMANTINA COLOR COBRE 30 ML', 1, 1, 1, 1, 1),
(107, 'PLUMAS LUMEN', 2, '284211337241', 'PLUMAS LUMEN COLOR ROJO', 1, 11, 1, 1, 1),
(108, 'DIUREX', 2, '284211338989', 'DIUREX 18x33 mm', 1, 11, 1, 1, 1),
(109, 'TERMINAL', 2, '284211338338', 'TERMINAL DE PAGO SR PAGO', 1, 3, 1, 1, 1),
(110, 'SUJETADOR DE CREDENCIAL', 2, '284211339736', 'SUJETADOR DE CREDENCIAL', 1, 10, 1, 1, 1),
(111, 'MARCADOR PERMANENTE', 2, '284211340771', 'MARCADOR PERMANENTE COLOR AZUL AINK', 1, 4, 1, 1, 1),
(112, 'MARCADOR PERMANENTE', 2, '284211341129', 'MARCADOR PERMANENTE COLOR AZUL SHARPIE', 1, 4, 1, 1, 1),
(113, 'MARCADOR PERMANENTE', 2, '284211342742', 'MARCADOR PERMANENTE COLOR AZUL KORES', 1, 1, 1, 1, 1),
(114, 'MARCADOR PERMANENTE', 2, '284211343934', 'MARCADOR PERMANENTE COLOR NEGRO', 1, 1, 1, 1, 1),
(115, 'MARCADOR PARA PIZARRÓN', 2, '284211343974', 'MARCADOR PARA PIZARRÓN COLOR BLANCO AZUL DIXON', 1, 1, 1, 1, 1),
(116, 'MARCADOR PERMANENTE', 2, '284211345256', 'MARCADOR PERMANENTE PAILOT COLOR ROJO', 1, 1, 1, 1, 1),
(117, 'MARCADOR PERMANENTE PUNTO FINO', 2, '284211347632', 'MARCADOR PERMANENTE PUNTO FINO SIGNAL COLOR NEGRO', 1, 1, 1, 1, 1),
(118, 'COMPÁS', 2, '284211346360', 'COMPÁS', 1, 1, 1, 1, 1),
(119, 'REPUESTO TRANSPARENTE', 2, '284211348822', 'REPUESTO TRANSPARENTE PARA HOJA', 1, 1, 1, 1, 1),
(120, 'LIGAS DE HULE', 2, '284211349427', 'LIGAS DE HULE HERCULES BOLSA', 1, 2, 8, 1, 1),
(121, 'LIBRO DE REGISTROS', 2, '284211349864', 'LIBRO DE REGISTROS OFICIO 48 RAYA', 1, 1, 1, 1, 1),
(122, 'SOBRE BOLSA RONDANA', 2, '284211350571', 'SOBRE BOLSA RONDANA 23X0.5CM AMARILLO', 1, 19, 1, 1, 1),
(123, 'FOLDER TAMAÑO OFICIO', 2, '284211351515', 'FOLDER TAMAÑO OFICIO PAQUETE DE 100', 1, 1, 8, 1, 1),
(124, 'PAPEL MULTIUSO', 2, '284211351959', 'PAPEL MULTIUSO OFFICE DEPOT PAQUETE DE 500', 1, 2, 8, 1, 1),
(125, 'ROUTER', 2, '284211345125', 'ROUTER MARCA ARRIS', 1, 2, 1, 15, 1),
(126, 'PAPEL TERMICO', 2, '284211352605', 'PAPEL TERMICO', 1, 3, 11, 1, 1),
(127, 'CARGADOR', 2, '28421132776', 'CARGADOR DE BATERIAS MARCA PROAM', 1, 1, 1, 18, 1),
(128, 'RELOJ CHECADOR', 2, '284211328282', 'RELOJ CHECADOR DE HUELLA MODELO FACE-525-07', 1, 1, 1, 18, 1),
(129, 'ENMICADORA', 2, '284211328198', 'ENMICADORA ELECTRICA MARCA GBC MODELO NO.DS 40 NS ', 1, 1, 1, 18, 1),
(130, 'ENMICADORA', 2, '284211337398', 'EMICADORA ELECTRICA MARCA GBC MODELO NO.DS 40 NS M', 1, 1, 1, 18, 1),
(131, 'ESCANER', 1, '284211328308', 'ESCANER DE CÓDIGO DE BARRA MARCA ECLINE MODELO EC-', 1, 1, 1, 18, 1),
(132, 'MAQUINA CUENTA BILLETES', 2, '284211328577', 'MAQUINA PORTATIL CUENTA BILLETES MARCA TIMEWORK', 1, 1, 1, 18, 1),
(133, 'CAJA DE CONEXIONES', 2, '284211328937', 'CAJA DE CONEXIONES GABINETE CAJA DERIVACION PCV 10', 1, 1, 1, 18, 1),
(134, 'CAJA DE CONEXIONES', 2, '284211329721', 'CAJA DE CONEXIONES GABINETE CAJA DERIVACION PCV 10', 1, 1, 1, 18, 1),
(135, 'MAMPARA', 6, '284211319881', 'MAMPARA COLOR AZUL', 1, 24, 1, 8, 1),
(136, 'HUB', 2, '284211329669', 'HUB USB 13 PUESTOS CARGADOR  PC LAPTOP USB MULTICO', 1, 2, 1, 11, 1),
(137, 'HUB', 2, '284211329983', 'HUB USB 13 PUESTOS CARGADOR  PC LAPTOP USB MULTICO', 1, 1, 1, 11, 1),
(138, 'ANAQUEL', 6, '284211320356', 'ANAQUELES DE MAMPARA CON PUERTA', 1, 2, 1, 8, 1),
(139, 'REPISA', 6, '284211321365', 'REPISA DE MAMPARA COLOR CAFE', 1, 4, 1, 8, 1),
(140, 'CABLES', 2, '284211329830', 'CABLE SIAMES CAMARA  CCTV 20 METROS PARA VIDEO Y C', 1, 1, 1, 22, 1),
(141, 'CONECTOR', 2, '284211329226', 'CONECTOR DE UNION PARA CABLE SIAMES COAXIAL CAMARA', 1, 2, 1, 22, 1),
(142, 'MESAS DE ESCRITORIO', 6, '284211322928', 'MESAS DE ESCRITORIO COLOR GRIS', 1, 5, 1, 8, 1),
(143, 'SILLA', 6, '28421139949', 'SILLA ERGODINAMICA SENCILLA SIN RUEDAS', 1, 4, 1, 8, 1),
(144, 'SILLA', 6, '28421139529', 'SILLA ERGODINAMICA ACOGINADA COLOR NEGRO CON 4 RUE', 1, 4, 1, 8, 1),
(145, 'CABLES', 2, '284211329847', 'CABLE VGA MACHO A 2 VGA HEMBRA SPLITTER CABLE Y PC', 1, 1, 1, 11, 1),
(146, 'SILLA', 6, '28421137585', 'SILLA ERGODINAMICA ACOGINADA COLOR NEGRO CON 4 RUE', 1, 1, 1, 8, 1),
(147, 'SOPORTE DE PANTALLA', 2, '284211330614', 'SOPORTE PANTALLA TV PARED VESA 14 A 42  PULGADAS M', 1, 2, 1, 18, 1),
(148, 'CAMARAS', 2, '284211330886', 'CAMARAS DE SEGURIDAD WI-FI FULL HD ROBOTIZADAS CON', 1, 2, 1, 22, 1),
(149, 'ESCRITORIO DE OFICINA', 6, '28421135263', 'ESCRITORIO DE OFICINA DE VIDRIO', 1, 2, 1, 8, 1),
(150, 'ESCRITORIO DE OFICINA', 3, '2842113646', 'ESCRITORIO DE VIDRIO COMPLETO', 1, 4, 1, 8, 1),
(151, 'TELEFONO ALAMBRICO', 6, '284211323211', 'TELEFONO ALAMBRICO COLOR BLANCO MARCA PANASONIC', 1, 1, 1, 5, 1),
(152, 'SILLA', 3, '28421138272', 'SILLA ERGODINAMICA ACOGINADA COLOR NEGRO CON 4 RUE', 1, 4, 1, 8, 1),
(153, 'TELEFONO ALAMBRICO', 6, '284211239154', 'Telefono alambrico marca modernphone modelo tc-920', 1, 3, 1, 5, 1),
(154, 'BOTE DE BASURA', 6, '284211242344', 'Botes pequeños de basura color negro', 1, 3, 1, 25, 1),
(155, 'SILLA', 3, '284211310881', 'SILLA  ERGODINAMICA SENCILLA DE COLOR NEGRO CON 4 ', 1, 1, 1, 8, 1),
(156, 'JUEGO DE HERRAMIENTAS', 1, '284211330578', 'Juego de herramientas manuales 153 piezas marca bl', 1, 1, 8, 25, 1),
(157, 'BANCO', 3, '284211243102', 'Banco de plastico', 1, 1, 1, 8, 1),
(158, 'BOTE DE BASURA', 3, '284211242280', 'Bote de plastico', 1, 1, 1, 25, 1),
(159, 'ARCHIVERO', 3, '284211311952', 'ARCHIVERO CON 5 CAJONES', 1, 1, 1, 8, 1),
(160, 'MUEBLE ARTURITO', 3, '284211312886', 'MUEBLE ARTURITO CON 2 CAJONES', 1, 1, 1, 8, 1),
(161, 'MATRACA', 11, '284211336142', 'MATRACA CONDADO UNIVERSAL MODELO 71853 MARCA RED L', 1, 1, 1, 25, 1),
(162, 'VENTILADOR', 1, '28421131377', 'VENTILADOR ELECTRICO END FORMA DE CILINDRO MARCA Q', 1, 1, 1, 8, 1),
(163, 'SILLA', 1, '28421138864', 'SILLA ERGODINAMICA ACOGINADA COLOR NEGRO CON 4 RUE', 1, 3, 1, 8, 1),
(164, 'VENTILADOR', 3, '284211314152', 'VENTILADOR NEGRO MARCA BORNOTO', 1, 1, 1, 8, 1),
(165, 'SILLA', 1, '284211311413', 'SILLA ERGODINAMICA SENCILLA COLOR NEGRO CON 4 RUED', 1, 3, 1, 8, 1),
(166, 'TELEFONO ALAMBRICO', 3, '284211239172', 'TELEFONO ALAMBRICO MARCA MODERNPHONE MODELO TC-920', 1, 3, 1, 5, 1),
(167, 'BOTE DE BASURA', 1, '284211242273', 'Botes de basura de plastico', 1, 1, 1, 25, 1),
(168, 'PINTARRON', 3, '284211314351', 'PINTARRON BLANCO', 1, 1, 1, 8, 1),
(169, 'MAMPARA', 1, '284211320932', 'MAMPARA COLOR AZUL', 1, 22, 1, 8, 1),
(170, 'PERSIANAS', 3, '284211314709', 'PERSIANAS BLANCAS', 1, 2, 1, 8, 1),
(171, 'REPISA', 1, '284211321300', 'REPISA DE MAMPARA COLOR CAFE', 1, 4, 1, 8, 1),
(172, 'AIRPORT', 3, '284211318640', 'AIRPORT EXPRESS MODELO A1392', 1, 1, 1, 17, 1),
(173, 'ANAQUEL', 1, '284211320799', 'ANAQUELES DE MAMPARA CON PUERTA', 1, 3, 1, 8, 1),
(174, 'CAFETERA', 10, '284211341388', 'CAFETERA PARA CAPUCHINO MARCA DeLonghi', 1, 1, 1, 4, 1),
(175, 'MOLINO PARA CAFE', 10, '28421134259', 'MOLINO PARA CAFE SUPREME GRID', 1, 1, 1, 4, 1),
(176, 'TELEFONO ALAMBRICO', 1, '284211240720', 'Teléfono alambrico color blanco marca panasonic', 1, 6, 1, 5, 1),
(177, 'CAFETERA', 10, '284211342709', 'CAFETERA ELECTRICA CKITCHEN AID', 1, 1, 1, 4, 1),
(178, 'CAFETERA', 10, '284211343194', 'CAFETERA ELECTRICA OSTER', 1, 1, 1, 4, 1),
(179, 'TELEFONO ALAMBRICO', 1, '284211240218', 'Teléfono alambrico marca modernphone modelo tc-920', 1, 2, 1, 5, 1),
(180, 'SANDWICHERA', 10, '284211218396', 'Sandwichera chefman de dos compartimentos', 1, 1, 1, 4, 1),
(181, 'HORNO ELECTRICO', 10, '284211228166', 'Hamilton Beach', 1, 1, 1, 4, 1),
(182, 'LICUADORA', 10, '284211228121', 'Licuadora Oster', 1, 1, 1, 4, 1),
(183, 'REFRIGERADOR', 10, '284211229938', 'REFRIGERADOR COLOR GRIS/NEGRO MARCA WHIRPOOL', 1, 1, 1, 4, 1),
(184, 'RAYADOR', 10, '28421135813', 'RAYADOR DE QUESO GRANDE DE ALUMINIO', 1, 1, 1, 6, 1),
(185, 'RAYADOR', 10, '28421134543', 'RAYADOR DE AJOS MINI DE ALUMINIO', 1, 1, 1, 4, 1),
(186, 'CONGELADOR', 10, '284211338123', 'CONGELADOR COLOR BLANCO WHIRPOOL', 1, 1, 1, 4, 1),
(187, 'COCINA INDUSTRIAL', 10, '2842113430', 'Cocina industrial incluye 2 quemadores 1 azador 1', 1, 1, 1, 4, 1),
(188, 'PARRILLA', 10, '28421123098', 'parrilla de 6 quemadores marca Supra', 1, 1, 1, 4, 1),
(189, 'ENFRIADOR', 10, '28421134652', 'Enfriador de 2mtrs marca criotec modelo rma1025', 1, 1, 1, 4, 1),
(190, 'MESA', 10, '284211230483', 'Mesa de madera', 1, 1, 1, 8, 1),
(191, 'DIABLITO', 10, '28421133552', 'DIABLITO DE CARGA DE METAL', 1, 1, 1, 8, 1),
(192, 'TELEFONO ALAMBRICO', 10, '284211240337', 'TELEFONO ALAMBRICO MARCA MODERNPHONE MODELO TC-920', 1, 1, 1, 5, 1),
(193, 'SARTEN', 10, '28421132422', 'SARTEN GRANDE DE TEFLON COLOR NEGRO', 1, 2, 1, 6, 1),
(194, 'ANAQUEL', 10, '284211240881', 'ANAQUEL GRANDE COLOR GRIS CON 5 ESPACIOS', 1, 1, 1, 8, 1),
(195, 'SET DE OLLAS', 10, '28421125813', 'SET DE 8 OLLAS CON TAPADERA DE VIDRIO', 1, 1, 8, 6, 1),
(196, 'FRUTERO', 10, '284211240686', 'FRUTERO Blanco con ruedas', 1, 1, 1, 8, 1),
(197, 'DESPACHADOR DE GEL', 10, '284211258310', 'DESPACHADOR DE GEL ANTIBACTERIAL', 1, 1, 1, 8, 1),
(198, 'CAJA DE PLASTICO', 10, '284211240909', 'CAJA DE PLASTICO GRIS CON TAPA', 1, 1, 1, 8, 1),
(199, 'ANAQUEL', 10, '284211241597', 'ANAQUEL GRIS CPON 5 ESPACIOS', 1, 1, 1, 8, 1),
(200, 'BOTE DE BASURA', 10, '284211242603', 'Bote de plastico', 1, 4, 1, 8, 1),
(201, 'EXTINGUIDOR', 11, '284211257622', 'EXTINGUIDOR ROJO', 1, 4, 1, 12, 1),
(202, 'COLADERA', 10, '284211257358', 'COLADERA DE PLASTICO', 1, 2, 1, 6, 1),
(203, 'BANCO', 10, '284211243342', 'Banco de plastico morado', 1, 1, 1, 8, 1),
(204, 'VOLTEADOR', 10, '284211257489', 'VOLTEADOR DE TEFLON', 1, 2, 1, 6, 1),
(205, 'PINZAS', 10, '284211257647', 'PINZAS DE METAL', 1, 2, 1, 6, 1),
(206, 'DISPENSADOR DE AGUA', 3, '284211243909', 'DISPENSADOR DE AGUA BLANCO', 1, 1, 1, 6, 1),
(207, 'MACHACADOR', 10, '284211256472', 'MACHACADOR DE TEFLON', 1, 2, 1, 7, 1),
(208, 'CUCHARON', 10, '284211255824', 'CUCHARON DE TEFLON', 1, 2, 1, 7, 1),
(209, 'HIELERA', 10, '284211243599', 'HIELERA DE PLASTICO', 1, 2, 1, 6, 1),
(210, 'HORNO DE MICROONDAS', 10, '284211244749', 'horno de microondas color gris marca Daewoo', 1, 1, 1, 4, 1),
(211, 'SILLA', 10, '28421124421', 'SILLA DE PLASTICO COLOR AZUL', 1, 31, 1, 8, 1),
(212, 'TABLON', 10, '284211244856', 'TABLONES COLOR GRIS', 1, 4, 1, 8, 1),
(213, 'COLADERA', 10, '284211256264', 'COLADERA DE METAL', 1, 2, 1, 6, 1),
(214, 'ESCRITORIO DE OFICINA', 10, '284211244751', 'ESCRITORIO GRIS', 1, 1, 1, 8, 1),
(215, 'VITROLERO', 10, '284211245600', 'vitrolero transparente de 20 litros', 1, 3, 1, 6, 1),
(216, 'CUCHARON', 10, '284211256887', 'CUCHARON DE ALUMINIO', 1, 2, 1, 7, 1),
(217, 'JARRA', 10, '284211245556', 'jarra transparente 4lts', 1, 3, 1, 6, 1),
(218, 'OLLA EXPRESS', 10, '284211245664', 'OLLA EXPRESS', 1, 1, 1, 6, 1),
(219, 'CACEROLA', 10, '284211245439', 'CACEROLA DE PELTRE', 1, 2, 1, 6, 1),
(220, 'POCILLO', 10, '284211246922', 'POCILLO DE PELTRE', 1, 2, 1, 6, 1),
(221, 'CONTENEDOR PARA CUBIERTOS', 10, '284211254222', 'CONTENEDOR PARA CUBIERTOS DE PLASTICO COLOR BLANCO', 1, 1, 1, 6, 1),
(222, 'CUCHILLO', 10, '284211255111', 'CUCHILLO PARA PICAR', 1, 17, 1, 7, 1),
(223, 'SARTEN', 10, '284211246529', 'SARTEN', 1, 4, 1, 6, 1),
(224, 'COMAL', 10, '284211246505', 'COMAL', 1, 1, 1, 6, 1),
(225, 'TENEDOR', 10, '284211254747', 'TENEDOR GRANDE', 1, 22, 1, 7, 1),
(226, 'VASO DE PLASTICO', 10, '284211246838', 'VASO DE PLASTICO', 1, 34, 1, 6, 1),
(227, 'VASO DE VIDRIO', 10, '284211247526', 'VASO DE VIDRIO', 1, 8, 1, 6, 1),
(228, 'TAZA', 10, '284211247342', 'TAZA DE CERAMICA', 1, 20, 1, 6, 1),
(229, 'TAZA', 10, '284211247943', 'TAZA DE CERAMICA PEQUEÑAS', 1, 6, 1, 6, 1),
(230, 'TERMO', 10, '284211248208', 'TERMO', 1, 23, 1, 6, 1),
(231, 'TARRO', 10, '284211248491', 'TARRO CON POPOTE', 1, 2, 1, 6, 1),
(232, 'CUCHARAS', 10, '284211338942', 'CUCHARA PARA CAFE/AZUCAR', 1, 20, 1, 7, 1),
(233, 'PLATO', 10, '284211250533', 'PLATO EXTENDIDO', 1, 44, 1, 6, 1),
(234, 'PLATO', 10, '284211250342', 'PLATO HONDO', 1, 25, 1, 6, 1),
(235, 'PLATO', 10, '284211251763', 'PLATO DE CERAMICA PEQUEÑO', 1, 6, 1, 6, 1),
(236, 'TENEDOR', 10, '284211254373', 'TENEDOR PARA FRUTA', 1, 13, 1, 7, 1),
(237, 'TORTILLERO', 10, '284211252646', 'TORTILLERO DE PLASTICO', 1, 10, 1, 6, 1),
(238, 'TABLA PARA PICAR', 10, '284211253608', 'TABLA PARA PICAR DE MADERA', 1, 1, 1, 6, 1),
(239, 'TABLA PARA PICAR', 10, '284211253899', 'TABLA PARA PICAR DE PLASTICO', 1, 1, 1, 6, 1),
(240, 'TOPPER DE PLASTICO', 10, '284211252236', 'TOPPER DE PLATICO DISTINTOS TAMAÑOS', 1, 18, 1, 6, 1),
(241, 'MAMILAS DISPENSADORAS', 10, '284211253638', 'MAMILAS DISPENSADORAS', 1, 4, 1, 6, 1),
(242, 'CUCHARAS', 10, '284211253550', 'CUCHARAS SOPERAS', 1, 27, 1, 7, 1),
(244, 'NIVEL', 11, '284211331866', 'NIVEL TORPEDO 225 mm', 1, 1, 1, 20, 1),
(245, 'PUNTAS PARA DESTORNILLADOR', 1, '284211331798', 'PUNTAS PARA DESTORNILLADOR', 1, 30, 1, 20, 1),
(246, 'DESTORNILLADOR', 1, '284211332986', 'DESTORNILLADOR', 1, 1, 1, 20, 1),
(247, 'LLAVES HEXAGONALES', 11, '284211332364', 'LLAVES HEXAGONALES', 1, 9, 1, 20, 1),
(248, 'MATRACA', 11, '284211332531', 'MATRACA DE  1/4', 1, 1, 1, 20, 1),
(249, 'DADOS PARA MATRACA', 11, '284211333929', 'DADOS PARA MATRACA DE 1/4', 1, 9, 1, 20, 1),
(250, 'PINZAS', 11, '284211333643', 'PINZA DIAGONAL DE  160 mm', 1, 1, 1, 20, 1),
(251, 'PINZAS', 1, '284211334599', 'PINZA DE COMBINACION 160 mm', 1, 1, 1, 20, 1),
(252, 'MARTILLO', 11, '284211334674', 'MARTILLA SACA CLAVOS DE  12oz', 1, 1, 1, 20, 1),
(253, 'NAVAJA', 11, '284211334765', 'NAVAJA', 1, 1, 1, 20, 1),
(254, 'REPUESTOS PARA NAVAJA', 11, '284211334337', 'REPUESTOS PARA NAVAJA', 1, 10, 1, 20, 1),
(255, 'REGLA', 11, '28421133517', 'REGLA DE ACERO DE 150 mm', 1, 1, 1, 20, 1),
(256, 'CLAVOS Y TAQUETES', 11, '284211335898', 'CLAVOS Y TAQUETES', 1, 82, 1, 20, 1),
(257, 'AIRPORT', 1, '284211319186', 'AIRPORT EXPRESS MODELO A1392', 1, 1, 1, 11, 1),
(258, 'CAMARAS', 12, '28421133964', 'KIT 4 CAMARAS HILOOK 720P HIKVISION CABLES DVR 4 C', 1, 2, 12, 22, 1),
(259, 'CONMUTADOR S416', 12, '284211210820', 'COMUTADOR S416 GEOMETRIC', 1, 1, 1, 23, 1),
(260, 'CONMUTADOR', 12, '284211339279', 'COMUTADOR  PANASON KXT-610 TIANGUIZTLI', 1, 1, 1, 23, 1),
(261, 'MODEM', 12, '284211340504', 'MARCA TOTAL PLAY COLOR BLANCO ALDEA GODIN', 1, 1, 1, 16, 1),
(262, 'MODEM', 12, '2842113415', 'MARCA TOTAL PLAY COLOR BLANCO TIANGUIZTLI NETWORK', 1, 1, 1, 16, 1),
(263, 'MODEM', 12, '284211341745', 'MODEM GEOMETRIC', 1, 1, 1, 16, 1),
(264, 'NO BREAK UPS', 12, '284211339326', 'No Break UPS de hasta 85 min de respaldo, 900 VA', 1, 2, 1, 11, 1),
(265, 'AIRPORT', 8, '28421133998', 'AIRPORT TIME CAPSULE  A1470 2TB', 1, 1, 1, 11, 1),
(266, 'AIRPORT', 1, '284211340910', 'AIRPORT CAPSULE  A1470 2TB TIANGUIZTLI', 1, 1, 1, 11, 1),
(268, 'IPHONE', 1, '284211217479', 'IPHONE X', 1, 1, 1, 24, 1),
(272, 'Tapete de Reparación de Silicon Azul', 1, '26521122573', 'Silicon Magnético Antiestática', 1, 3, 1, 1, 1),
(273, 'Escalera Practi´ka de acero', 13, '275211257781', '3 escalones antiderrapantes, carga de 150kg', 1, 1, 1, 1, 1),
(274, 'kit herramientas 18 en 1 reparación', 2, '275211259489', '1 alicates de apertura, 2 chupones azules, 1 punta', 1, 1, 8, 1, 1),
(275, 'INLIFE 81 en 1 Juego Destornilladores Kit de Destornillador', 2, '275211659269', '1 x Pulsera antiestática; 1 x Lechón para deshace ', 1, 1, 12, 1, 1),
(276, 'Manta contra incendios', 13, '31521120726', '1.2 x 1.2 marca SUPERIORE', 1, 2, 1, 12, 1),
(277, 'Mochila de Primeros Auxilios', 13, '315211213632', '2 Alcohol etilico 500 ml, 4 venda elastica quirmex 5m largo, 3 venda elastica vendamax 5m largo, 2 paquetes de 10 piezas de gasas absorbentes 10x10 cm, 1 paquete de equipo de parto basico, entre otras cosas basicas.', 1, 1, 12, 12, 1),
(278, 'prueba', 13, '26211758168', 'prueba', 1, 1, 12, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mantenimiento`
--

CREATE TABLE `mantenimiento` (
  `idmantenimiento` int(11) NOT NULL,
  `idequipo` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `idtipomantto` int(11) NOT NULL,
  `falla` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `causa` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `solucion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `fechaE` date NOT NULL,
  `fechaS` date NOT NULL,
  `condicion` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `minutas`
--

CREATE TABLE `minutas` (
  `id_minuta` int(255) NOT NULL,
  `fecha` varchar(500) NOT NULL,
  `objetivo` varchar(500) NOT NULL,
  `asuntos` varchar(500) NOT NULL,
  `participantes` varchar(500) NOT NULL,
  `acuerdos` varchar(500) NOT NULL,
  `oros_asuntos` varchar(500) NOT NULL,
  `condicion` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `minutas`
--

INSERT INTO `minutas` (`id_minuta`, `fecha`, `objetivo`, `asuntos`, `participantes`, `acuerdos`, `oros_asuntos`, `condicion`) VALUES
(1, '2020-12-12', 'CAMBIOS EN CTI', 'ATENCION A ISSUES', 'ARIEL Y VICTOR', 'REESTRUCTURAR TODO ', 'NINGUNO', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mis_eventos`
--

CREATE TABLE `mis_eventos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(250) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `inicio` datetime DEFAULT NULL,
  `fin` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mis_productos`
--

CREATE TABLE `mis_productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8_unicode_ci NOT NULL,
  `imagen` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `precio` float NOT NULL,
  `categoria` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `creado` datetime NOT NULL,
  `modificado` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `mis_productos`
--

INSERT INTO `mis_productos` (`id`, `nombre`, `descripcion`, `imagen`, `precio`, `categoria`, `creado`, `modificado`, `status`) VALUES
(1, 'Bonafont ', '2 litros ', 'bonafont_2l.jpg', 16, 'Aguas', '2021-07-04 20:03:58', '2021-07-04 20:03:58', '1'),
(2, 'Bonafont ', '1.5 Litros', 'bonafont1.5l.jpg', 14, 'Aguas', '2021-07-04 20:03:58', '2021-07-04 20:03:58', '1'),
(3, 'Principe Chocolate', '105 g', 'principe_cho_105.jpg', 16, 'Galletas', '2021-07-04 20:03:58', '2021-07-04 20:03:58', '1'),
(4, 'Donitas espolvoreadas', '140 g', 'donitas-espolvo-140.jpg', 15, 'Galletas', '2021-07-04 20:03:58', '2021-07-04 20:03:58', '1'),
(5, 'Hot Nuts Original', '60 g Barcel', 'hot-nuts-60g.png', 10, 'Botanas', '2021-07-04 20:03:58', '2021-07-04 20:03:58', '1'),
(6, 'Galleta Oreo', '68.4 g', 'oreo-68g.png', 11, 'Galletas', '2021-07-04 20:03:58', '2021-07-04 20:03:58', '1'),
(7, 'Cheetos Flamin Hot', '145 g', 'cheetos-flamin.jpg', 14, 'Frituras', '2021-07-04 20:03:58', '2021-07-04 20:03:58', '1'),
(8, 'Jugo del Valle Nectar de Durazno', '1 litro', 'del_valle_1l.jpg', 26, 'Jugos', '2021-07-04 20:03:58', '2021-07-04 20:03:58', '1'),
(9, 'Coca cola ', '600 ml', 'coca_600.png', 14, 'Refrescos', '2021-07-04 20:03:58', '2021-07-04 20:03:58', '1'),
(10, 'Coca cola ', '250 ml', 'coca-250.png', 8, 'Refrescos', '2021-07-04 20:03:58', '2021-07-04 20:03:58', '1'),
(11, 'Trident Xtra Care Yerbabuena', 'Paquete de 12 pzs', 'trident.png', 9, 'Chicles', '2021-07-04 20:03:58', '2021-07-04 20:03:58', '1'),
(12, 'Trident Menta ', '30.6 g Paquete de 18 pastillas', 'trident-menta.png', 18, 'Chicles', '2021-07-04 20:03:58', '2021-07-04 20:03:58', '1'),
(13, 'Madalenas Bimbo', '93 g', 'madalenas.png', 15, 'Galletas', '2021-07-04 20:03:58', '2021-07-04 20:03:58', '1'),
(14, 'Coca cola lata', '355 ml', 'coca-lata.jpg', 16, 'Refrescos', '2021-07-04 20:03:58', '2021-07-04 20:03:58', '1'),
(15, 'Nito Bimbo', '62 g', 'nito.jpg', 11, 'Galletas', '2021-07-04 20:03:58', '2021-07-04 20:03:58', '1'),
(16, 'Boing Mango', '250 ml', 'boing.png', 7.5, 'Jugos', '2021-07-04 20:03:58', '2021-07-04 20:03:58', '1'),
(17, 'Prispas picositas', '50 g', 'prispas.jpg', 10, 'Frituras', '2021-07-04 20:03:58', '2021-07-04 20:03:58', '1'),
(18, 'Cheetos torciditos', '52 g', 'cheetos-torciditos.png', 10, 'Frituras', '2021-07-04 20:03:58', '2021-07-04 20:03:58', '1'),
(19, 'Karate Japonés', '137 g', 'japones.png', 15, 'Botanas', '2021-07-04 20:03:58', '2021-07-04 20:03:58', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden`
--

CREATE TABLE `orden` (
  `id_orden` int(11) NOT NULL,
  `creado` datetime NOT NULL,
  `modificado` datetime NOT NULL,
  `estatus` text COLLATE utf8_unicode_ci NOT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `total` float NOT NULL,
  `iddepartamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `orden`
--

INSERT INTO `orden` (`id_orden`, `creado`, `modificado`, `estatus`, `idusuario`, `total`, `iddepartamento`) VALUES
(19, '2021-04-27 11:27:21', '2021-04-27 11:27:21', '', 1, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_articulos`
--

CREATE TABLE `orden_articulos` (
  `id_articulo` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `id_orden` int(11) NOT NULL,
  `cantidad` int(5) NOT NULL,
  `motivo` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `orden_articulos`
--

INSERT INTO `orden_articulos` (`id_articulo`, `idproducto`, `id_orden`, `cantidad`, `motivo`) VALUES
(1, 79, 19, 1, 'prueba');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_articulos_tienda`
--

CREATE TABLE `orden_articulos_tienda` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `orden_articulos_tienda`
--

INSERT INTO `orden_articulos_tienda` (`id`, `order_id`, `product_id`, `quantity`) VALUES
(1, 1, 1, 1),
(2, 6, 1, 2),
(3, 7, 1, 1),
(4, 7, 2, 1),
(5, 8, 2, 1),
(6, 8, 3, 1),
(7, 8, 1, 1),
(8, 9, 6, 1),
(9, 9, 2, 1),
(10, 9, 1, 2),
(11, 9, 8, 1),
(12, 10, 6, 1),
(13, 11, 6, 1),
(14, 12, 6, 1),
(15, 13, 4, 1),
(16, 13, 13, 1),
(17, 13, 8, 1),
(18, 13, 7, 1),
(19, 14, 8, 1),
(20, 14, 18, 1),
(21, 14, 7, 1),
(22, 15, 17, 1),
(23, 15, 7, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_tienda`
--

CREATE TABLE `orden_tienda` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `total_price` float(10,2) NOT NULL,
  `creado` datetime NOT NULL,
  `modificado` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `orden_tienda`
--

INSERT INTO `orden_tienda` (`id`, `customer_id`, `total_price`, `creado`, `modificado`, `status`) VALUES
(1, 11, 123.00, '2021-03-24 23:09:59', '2021-03-25 23:09:59', '1'),
(6, 1, 46.00, '2021-03-10 00:26:53', '2021-03-10 00:26:53', '1'),
(7, 1, 38.00, '2021-03-10 00:29:19', '2021-03-10 00:29:19', '1'),
(8, 1, 51.50, '2021-03-10 01:01:22', '2021-03-10 01:01:22', '1'),
(9, 1, 364.40, '2021-03-10 19:27:04', '2021-03-10 19:27:04', '1'),
(10, 1, 17.50, '2021-03-11 11:18:08', '2021-03-11 11:18:08', '1'),
(11, 1, 17.50, '2021-04-14 18:37:04', '2021-04-14 18:37:04', '1'),
(12, 3, 17.50, '2021-06-30 17:43:17', '2021-06-30 17:43:17', '1'),
(13, 18, 71.50, '2021-07-06 09:42:21', '2021-07-06 09:42:21', '1'),
(14, 25, 51.50, '2021-07-06 10:53:58', '2021-07-06 10:53:58', '1'),
(15, 2, 25.50, '2021-07-06 21:18:39', '2021-07-06 21:18:39', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso`
--

CREATE TABLE `permiso` (
  `idpermiso` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idproducto` int(11) NOT NULL,
  `idcategoria` int(11) NOT NULL,
  `idtipo` int(1) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `condicion` tinyint(1) NOT NULL,
  `precio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `idcategoria`, `idtipo`, `nombre`, `descripcion`, `condicion`, `precio`) VALUES
(1, 1, 1, 'Plumas Bic color negro', 'pieza', 1, 0),
(2, 1, 1, 'Plumas Bic color azul', 'Paquete de 12', 1, 0),
(3, 1, 1, 'Tijeras', 'Pieza', 1, 0),
(4, 1, 1, 'Grapa Standard 1/4  6 mm', 'Caja de 5000 pza', 1, 0),
(5, 1, 1, 'Broche baco', 'Caja de 100 pza', 1, 0),
(6, 1, 1, 'Clip standar del No 3', 'Cajas de 100 pza', 1, 0),
(7, 1, 1, 'Lápiz', 'pieza', 1, 0),
(8, 1, 1, 'Play Doh', 'pieza', 1, 0),
(9, 1, 1, 'Resistol marca Pritt en barra', 'pieza', 1, 0),
(10, 1, 1, 'Marcador para pizarrón negro', 'pieza', 1, 0),
(11, 1, 1, 'Engrapadora de golpe', 'pieza', 1, 0),
(12, 1, 1, 'Foliador de 6 dígitos', 'pieza', 1, 0),
(13, 1, 1, 'Despachador jumbo', 'pieza', 1, 0),
(14, 1, 1, 'Tarjetas de 5x8', 'Pieza', 1, 0),
(15, 1, 1, 'Etiquetas adhesivas hoja de 10', 'pieza', 1, 0),
(16, 1, 1, 'Marcatextos', 'pieza', 1, 0),
(18, 1, 1, 'Sobre  coin del  numero 5', 'pieza', 1, 0),
(19, 1, 1, 'Block de pagaré 50 hojas', 'pieza', 1, 0),
(20, 1, 1, 'Block de 50 hojas para  recibo de dinero', 'pieza', 1, 0),
(21, 1, 1, 'Plumones Vic', 'pieza', 1, 0),
(22, 1, 1, 'Folder tamaño carta', 'pieza', 1, 0),
(23, 1, 1, 'Notas de remisión', 'pieza', 1, 0),
(24, 1, 1, 'Block tamaño carta albanene 90/95 de 25 hojas', 'pieza', 1, 0),
(25, 1, 1, 'papel de seguridad de 100 hojas', 'pieza', 1, 0),
(26, 1, 1, 'Rotulador de discos', 'pieza', 1, 0),
(27, 1, 1, 'Block hojas de rayado diario 6 columnas', 'pieza', 1, 0),
(28, 1, 1, 'Libro de registro oficio 96 francés', 'pieza', 1, 0),
(29, 1, 1, 'Libro de registro tipo italiana 96 hojas', 'pieza', 1, 0),
(30, 1, 1, 'Libro de registro tipo italiana 192 hojas', 'pieza', 1, 0),
(31, 1, 1, 'Libro de registro tipo francés 240 hojas raya', 'pieza', 1, 0),
(32, 1, 1, 'Libro de registro oficio 192 francés', 'pieza', 1, 0),
(33, 1, 1, 'Libro de registro oficio 240 italiana', 'pieza', 1, 0),
(34, 1, 1, 'Despachador de masking', 'pieza', 1, 0),
(35, 1, 1, 'Block de recibo de póliza de cheques', 'pieza', 1, 0),
(36, 1, 1, 'Paquete de hojas color pastel', 'Paquete de 100 pza', 1, 0),
(37, 1, 1, 'Folder de presentación tamaño carta', 'pieza', 1, 0),
(38, 1, 1, 'Block de hoja milimétrica  de 50 hojas', 'Block de 50 hojas', 1, 0),
(39, 1, 1, 'Block de póliza de cheque', 'Block de 50 hojas incompletos', 1, 0),
(42, 1, 1, 'Paquete de hojas opalina', 'Paquete de 50 hojas', 1, 0),
(43, 1, 1, 'Paquete de hojas opalina', 'Paquete de 100 hojas', 1, 0),
(44, 1, 1, 'Dispensador de diurex con repuesto', 'pieza', 1, 0),
(45, 1, 1, 'Carpeta para 100 hojas', 'pieza', 1, 0),
(46, 1, 1, 'Carpeta tamaño carta', 'pieza', 1, 0),
(47, 1, 1, 'Grapa standart 26/6', 'Paquete de 5000 grapas', 1, 0),
(48, 1, 1, 'Vale de caja', 'Paquete de 50 hojas', 1, 0),
(49, 1, 1, 'Paquete de marcador de pizarron manny', 'Paquete de 4', 1, 0),
(50, 1, 1, 'Paquete de protectores de hojas tamaño carta', 'Paquete de 100 hojas', 1, 0),
(51, 1, 1, 'Embudo para impresora', 'pieza', 1, 0),
(52, 1, 1, 'Reglas de metal', 'pieza', 1, 0),
(53, 1, 1, 'Masking tape', 'pieza', 1, 0),
(54, 1, 1, 'Plumon con borrador', 'pieza', 1, 0),
(55, 1, 1, 'Paquete de folders tamaño carta', 'Paquete de 100 pza', 1, 0),
(56, 1, 1, 'Paquete de etiquetas transfer tira de 504', 'pieza', 1, 0),
(57, 1, 1, 'Tinta para sellos color negro', 'pieza', 1, 0),
(58, 1, 1, 'Entintador de cojines para sello', 'pieza', 1, 0),
(59, 1, 1, 'Papel bond tamaño carta marca scool hoja blanca', 'Paquete de 500 hojas', 1, 0),
(60, 1, 1, 'Papel bond tamaño carta marca office depot', 'Paquete de 500 hojas', 1, 0),
(61, 1, 1, 'Papel fotobond scribe hoja blanca', 'Paquete de 500 hojas', 1, 0),
(62, 1, 1, 'Protectores de hojas tamaño oficio', 'Paquete de 100 pza', 1, 0),
(63, 1, 1, 'Juego de separadores de hojas', 'pieza', 1, 0),
(64, 1, 1, 'Block de raya 50', 'pieza', 1, 0),
(65, 1, 1, 'Block de raya 80', 'pieza', 1, 0),
(66, 1, 1, 'Pintura plastica color verde 30ml', 'pieza', 1, 0),
(67, 1, 1, 'Pintura plastica color rojo 30ml', 'pieza', 1, 0),
(68, 1, 1, 'Pega diamantina color rosa 30 ml', 'pieza', 1, 0),
(69, 1, 1, 'Pega diamantina color cobre 30 ml', 'pieza', 1, 0),
(70, 1, 1, 'Plumas lumen rojas', 'pieza', 1, 0),
(71, 1, 1, 'Diurex 18x33 mm', 'pieza', 1, 0),
(72, 1, 1, 'Terminal de pago sr. Pago', 'pieza', 1, 0),
(73, 1, 1, 'Sujetador de credencial', 'pieza', 1, 0),
(74, 1, 1, 'Marcador permanente color azul aink', 'pieza', 1, 0),
(75, 1, 1, 'Marcador permanente color azul sharpie', 'pieza', 1, 0),
(76, 1, 1, 'Marcador permanente color azul kores', 'pieza', 1, 0),
(77, 1, 1, 'Marcador permanente color negro', 'pieza', 1, 0),
(78, 1, 1, 'Marcador para pizarrón blanco color azul dixon', 'pieza', 1, 0),
(79, 1, 1, 'Marcador permanente pailot color rojo', 'pieza', 1, 0),
(80, 1, 1, 'Marcador permanente punto fino signal color negro', 'pieza', 1, 0),
(81, 1, 1, 'Compás', 'pieza', 1, 0),
(82, 1, 1, 'Refuerzo transparente para hojas', 'pieza', 1, 0),
(83, 1, 1, 'Ligas de hule hercules', 'pieza', 1, 0),
(84, 1, 1, 'Libro de registro oficio 48 raya', 'pieza', 1, 0),
(85, 1, 1, 'Sobre bolsa rondana 23x30.5 cm amarillo', 'pieza', 1, 0),
(86, 1, 1, 'Folder tamaño oficio', 'Paquete de 100', 1, 0),
(87, 1, 1, 'Papel multiuso office depot', 'Paquete de 500', 1, 0),
(88, 1, 1, 'Papel termico', 'Rollo', 1, 0),
(89, 2, 3, 'Macbook Pro', 'MacBook Pro Color gris', 1, 0),
(90, 2, 3, 'Macbook Air', 'MacBook Air Color gris', 1, 0),
(91, 2, 3, 'iMac', 'iMac color gris', 1, 0),
(92, 2, 3, 'Cilindro MAC', 'Cilindro negro', 1, 0),
(93, 2, 3, 'GHIA', 'GHIA COLOR GRIS OBSCURO', 1, 0),
(94, 2, 3, 'ACER', 'acer color gris', 1, 0),
(95, 2, 3, 'Lenovo', 'lenovo color gris obscuro', 1, 0),
(96, 4, 3, 'Cafetera', 'Cafetera para capuchino marca DeLonghi', 1, 0),
(97, 4, 3, 'Molino para café de grano', 'Supreme grid/molino para café', 1, 0),
(98, 4, 3, 'Cafetera eléctrica 1lt.', 'Cafetera eléctrica Ckitchen aid', 1, 0),
(99, 4, 3, 'Cafetera eléctrica 4lt.', 'Cafetera eléctrica Oster', 1, 0),
(100, 4, 3, 'Sandwichera', 'Sandwichera chefman de dos compartimentos', 1, 0),
(101, 4, 3, 'Horno electrico', 'Hamilton Beach', 1, 0),
(102, 4, 3, 'Licuadora', 'Oster', 1, 0),
(103, 4, 3, 'Refrigerador', 'color gris/negro marca Whirpool', 1, 0),
(104, 4, 3, 'Parrilla', '6 quemadores marca Supra', 1, 0),
(105, 3, 3, 'Mesa de madera', 'Mesa de madera', 1, 0),
(106, 5, 3, 'Teléfono', 'Teléfono alámbrico marca Modernphone modelo TC-920', 1, 0),
(107, 3, 3, 'Anaquel 20cm x 85cm x 2.20m', 'GRANDE COLOR GRIS CON 5 ESPACIOS', 1, 0),
(108, 3, 3, 'Frutero de tres niveles', 'Blanco con ruedas', 1, 0),
(109, 3, 3, 'Caja de plastico', 'gris con tapa', 1, 0),
(110, 3, 3, 'Anaquel cerrado', 'gris con 5 espacios', 1, 0),
(111, 3, 3, 'Bote de basura', 'Bote de plastico', 1, 0),
(112, 3, 3, 'Banco', 'Banco de platico morado', 1, 0),
(113, 3, 3, 'Dispensador de agua', 'blanco', 1, 0),
(114, 3, 3, 'HIELERA GRANDE 5 O 10 LTRS', 'hielera de plastico', 1, 0),
(115, 4, 3, 'Horno de Microondas', 'color gris marca Daewoo', 1, 0),
(116, 3, 3, 'silla de plastico', 'silla de plastico color azul', 1, 0),
(117, 3, 3, 'Tablones', 'tablones color gris', 1, 0),
(118, 3, 3, 'Escritorio', 'escritorio gris', 1, 0),
(119, 6, 3, 'Vitrolero 20 lts', 'vitrolero transparente de 20 litros', 1, 0),
(120, 6, 3, 'Jarra 4lts', 'jarra transparente 4lts', 1, 0),
(121, 6, 3, 'Olla express', 'Olla express', 1, 0),
(122, 6, 3, 'Cacerola', 'Cacerola de peltre', 1, 0),
(123, 6, 3, 'Pocillo', 'Pocillo de peltre', 1, 0),
(124, 6, 3, 'Sarten', 'Sarten', 1, 0),
(125, 6, 3, 'Comal', 'Comal', 1, 0),
(126, 6, 3, 'Vaso', 'Vaso de platico', 1, 0),
(127, 6, 3, 'Vaso de Vidrio', 'Vaso de vidrio', 1, 0),
(128, 6, 3, 'Taza', 'taza de ceramica', 1, 0),
(129, 6, 3, 'Tazas para café express', 'Tazas de ceramica pequeñas', 1, 0),
(130, 6, 3, 'Termos', 'Termos', 1, 0),
(131, 6, 3, 'Tarro con popote', 'Tarro con popote', 1, 0),
(132, 6, 3, 'Plato extendido', 'Plato extendido', 1, 0),
(133, 6, 3, 'Plato hondo', 'plato hondo', 1, 0),
(134, 6, 3, 'Plato cafetero', 'Plato de ceramica pequeño', 1, 0),
(135, 6, 3, 'Tortillero', 'Tortillero de plastico', 1, 0),
(136, 6, 3, 'Topper', 'Topper de platico distintos tamaños', 1, 0),
(137, 6, 3, 'Mamilas', 'Mamilas dispensadoras', 1, 0),
(138, 6, 3, 'Cucharas Soperas', 'Cucharas soperas', 1, 0),
(139, 6, 3, 'Tabla para picar', 'Tabla para picar de plastico', 1, 0),
(140, 6, 3, 'Tabla para picar', 'Tabla para picar de madera', 1, 0),
(141, 6, 3, 'Tenedores para Fruta', 'Tenedores para fruta', 1, 0),
(142, 6, 3, 'Contenedores para cubiertos', 'Contenedores para cubiertos color blanco de plasti', 1, 0),
(143, 6, 3, 'Cuchillos', 'cuchillos para picar', 1, 0),
(144, 6, 3, 'Cucharón', 'cucharón de aluminio', 1, 0),
(145, 6, 3, 'Coladera', 'Coladera de metal', 1, 0),
(146, 6, 3, 'Cucharón de teflon', 'Cucharón de teflon', 1, 0),
(147, 6, 3, 'Machacador de teflon', 'Machacador de teflon', 1, 0),
(148, 6, 3, 'Pinzas', 'pinzas de metal', 1, 0),
(149, 6, 3, 'Volteadores', 'Volteadores de teflon', 1, 0),
(150, 6, 3, 'Coladera de platico', 'Coladeras de plastico', 1, 0),
(151, 12, 3, 'Extinguidor', 'Extinguidor rojo', 1, 0),
(152, 13, 3, 'Despachador de gel antibacterial', 'Despachador de gel antibacterial', 1, 0),
(153, 6, 3, 'Set de ollas', 'SET DE OLLAS 8 PIEZAS CON TAPADERA DE VIDRIO MARCA', 1, 0),
(154, 6, 3, 'Sarten de teflon', 'SARTENES DE TAMAÑO GRANDE DE TEFLON COLOR NEGRO', 1, 0),
(155, 14, 3, 'Diablito de carga', 'Diablito de carga de metal', 1, 0),
(156, 4, 3, 'Enfriador de 2 metros', 'Enfriador de 2m marca criotec modelo rma1025', 1, 0),
(157, 3, 3, 'Cocina Industrial', 'COCINA INDUSTRIAL INCLUYE 2 QUEMADORES 1 AZADOR 1 ', 1, 0),
(158, 6, 3, 'Rayador de ajos', 'RAYADOR DE AJOS MINI DE ALUMINIO', 1, 0),
(159, 6, 3, 'Rayador de queso', 'RAYADOR DE AJOS MINI DE ALUMINIO', 1, 0),
(160, 3, 3, 'Escritorios de Oficina', 'Escritorio de vidrio completos', 1, 0),
(161, 3, 3, 'Silla ergodinamica acoginada', 'SILLA ERGODINAMICA ACOGINADA COLOR NEGRO CON 4 RUE', 1, 0),
(162, 3, 3, 'Silla ergodinamica sencilla', 'SILLA  ERGODINAMICA SENCILLA DE COLOR NEGRO CON 4 ', 1, 0),
(163, 3, 3, 'Archivero', 'archivero con 5 cajones', 1, 0),
(164, 3, 3, 'Mueble arturito', '2 cajones', 1, 0),
(165, 3, 3, 'Ventilador', 'Ventilador', 1, 0),
(166, 3, 3, 'Pintarrón', 'Pintarrón blanco.', 1, 0),
(167, 3, 3, 'Persianas', 'persinas blancas', 1, 0),
(168, 15, 3, 'Airport', 'Airport express modelo A1392', 1, 0),
(169, 8, 3, 'Mampara', 'Mampara color azul', 1, 0),
(170, 8, 3, 'Anaqueles de mampara', 'Anaqueles de mampara con puerta', 1, 0),
(171, 8, 3, 'Repisa de mampara', 'Repisa de mampara color cafe', 1, 0),
(172, 8, 3, 'Mesa de escritorio', 'Mesa de escritorio color gris', 1, 0),
(173, 8, 3, 'Silla ergodinamica sencilla con ruedas', 'SILLA  ERGODINAMICA SENCILLA DE COLOR NEGRO CON 4 ', 1, 0),
(174, 5, 3, 'Telefono maestro', 'Telefono alambrico panasonic', 1, 0),
(175, 9, 3, 'Impresora Brother 3140', 'IMPRESORA A COLOR MARCA BROTHER MODELO 3140', 1, 0),
(176, 9, 3, 'IMPRESORA  HP LASER JET', 'IMPRESORA A BLANCO Y NEGRO MARCA HP MODELO LASERJE', 1, 0),
(177, 9, 3, 'Impresora termica', 'IMPRESORA TERMICA MARCA THERMAL LABEL PRINTER IP. ', 1, 0),
(178, 9, 3, 'IMPRESORA TERMICA PARA TICKETS', 'IMPRESORA TERMICA PARA TICKETS', 1, 0),
(179, 9, 3, 'IMPRESORA TERMICA', 'IMPRESORA TERMINA DE TICKETS MARCA OKI', 1, 0),
(180, 8, 3, 'Pizarras transparentes', 'Pizarras Transparentes', 1, 0),
(181, 8, 3, 'Aire acondicionado', 'AIRE ACONDICIONADO MARCA NEOAIRE', 1, 0),
(182, 10, 3, 'Caja de cables', 'CAJA DE CABLES ETHERNET Y LINEA TELEFONICA', 1, 0),
(183, 11, 3, 'TECLADOS INALAMBRICOS PARA MAC', 'TECLADOS INALAMBRICOS PARA MAC', 1, 0),
(184, 11, 3, 'Fuente de poder', 'FUENTE DE PODER PARA COMPUTADORA', 1, 0),
(185, 11, 3, 'Lector de DVD', 'LECTOR DE DVD PARA COMPUTADORA', 1, 0),
(186, 16, 3, 'Modem Huawei', 'Modem marca Huawei', 1, 0),
(187, 17, 3, 'Repetidor', 'REPETIDOR DE INTERNET MARCA TP-LINK', 1, 0),
(188, 11, 3, 'CARGADOR DE BATERIAS', 'CARGADOR DE BATERIAS MARCA PROAM', 1, 0),
(189, 18, 3, 'RELOJ CHECADOR DE HUELLA', 'RELOJ CHECADOR DE HUELLA MODELO FACE-525-07', 1, 0),
(190, 18, 3, 'Enmicadora eléctrica', 'enmicadora eléctrica', 1, 0),
(191, 18, 3, 'scanner de código de barras', 'SCANNER DE CÓDIGO DE BARRA MARCA ECLINE MODELO EC-', 1, 0),
(192, 18, 3, 'Maquina cuenta billetes', 'MAQUINA PORTATIL CUENTA BILLETES MARCA TIMEWORK', 1, 0),
(193, 18, 3, 'CAJA DE CONEXIÓN', 'CAJA DE CONEXIONES GABINETE CAJA DERIVACION PCV 10', 1, 0),
(194, 15, 3, 'TPLINK', 'TP-LINK MODELO TL-R600VPN', 1, 0),
(195, 11, 3, 'HUB USB', 'HUB USB 13 PUESTOS CARGADOR  PC LAPTOP USB MULTICO', 1, 0),
(196, 10, 3, 'PAQUETE DE 50 CABLES V8', 'PAQUETE 50 CABLES V8 MICRO USB CARGA  Y DATOS 25CM', 1, 0),
(197, 10, 3, 'CABLE SIAMES CAMARA', 'CABLE SIAMES CAMARA  CCTV 20 METROS PARA VIDEO Y C', 1, 0),
(198, 10, 3, 'CONECTOR DE UNION', 'CONECTOR DE UNION PARA CABLE SIAMES COAXIAL CAMARA', 1, 0),
(199, 10, 3, 'CABLE VGA', 'CABLE VGA MACHO A 2 VGA HEMBRA SPLITTER CABLE Y PC', 1, 0),
(200, 18, 3, 'SOPORTE DE PANTALLA', 'SOPORTE PANTALLA TV PARED VESA 14 A 42 PULGADAS MO', 1, 0),
(201, 22, 3, 'CAMARAS DE SEGURIDAD', 'CAMARAS DE SEGURIDAD WI-FI FULL HD ROBOTIZADAS CON', 1, 0),
(202, 9, 3, 'Impresora Brother', 'IMPRESORA MULTI TAREA MARCA BROTHER', 1, 0),
(203, 20, 3, 'Juego de herramientas manualesq', 'JUEGO DE HERRAMIENTAS MANUALES 153 PIEZAS MARCA BL', 1, 0),
(204, 20, 3, 'Matraca con dado universal', 'MATRACA CON DADO UNIVERSAL MODELO 71853 MARCA redl', 1, 0),
(205, 21, 3, 'Carrito auxiliar', 'CARRITO AUXILIAR DE DOS PIEZAS CON TRAPEADOR', 1, 0),
(206, 21, 3, 'Cesto de conserje', 'Cesto de conserje', 1, 0),
(207, 21, 3, 'Organizador para carrito', 'ORGANIZADOR EJECUTIVO RUB-BERMAID CANDDY/CARRO LIM', 1, 0),
(208, 11, 3, 'Teclados', 'TECLADOS ALAMBRICOS COLOR NEGRO', 1, 0),
(209, 11, 3, 'Mouse', 'Mouse', 1, 0),
(210, 15, 3, 'Router', 'Router marca arris', 1, 0),
(211, 18, 3, 'Tarjetas PUC', 'EMICADORA ELECTRICA MARCA GBC MODELO NO.DS 40 NS M', 1, 0),
(212, 4, 3, 'congelador industrial', 'congelador color blanco whirpool', 1, 1),
(213, 6, 1, 'Cucharas cafetera', 'Cucharas para café/azucar', 1, 0),
(214, 22, 3, 'DBR KIT DE CAMARAS', 'KIT 4 CAMARAS HILOOK 720P HIKVISION CABLES DVR 4 C', 1, 0),
(215, 23, 3, 'COMUTADOR', 'COMUTADOR DE LINEAS', 1, 0),
(216, 11, 3, 'No Break', 'No Break UPS de hasta 85 min de respaldo, 900 VA', 1, 0),
(217, 11, 3, 'AIRPORT TIME', 'CAPSULE  A1470 2TB', 1, 0),
(218, 16, 3, 'MODEM TOTAL PLAY', 'MODEM MARCA TOTAL PLAY', 1, 0),
(219, 16, 3, 'MODEM IZZI', 'MODEM MARCA IZZI', 1, 0),
(221, 2, 3, 'MacbookPro', 'MacBook Pro Color gris', 1, 0),
(222, 24, 3, 'GR ATT', 'IPHONE X GR ATT 64 GB', 1, 0),
(223, 24, 3, 'PRO MAX', 'IPHONE 12 PRO MAX 128 GB', 1, 0),
(224, 24, 3, 'PLUS SILVER', 'IPHONE 6S 8 PLUS SILVER 16 GB', 1, 0),
(225, 24, 3, 'PLUS BLACK', 'IPHONE 6S 8 PLUS BLACK 256 GB', 1, 0),
(226, 24, 3, 'NOTE S', 'SAMSUNG NOTE S SMN950FZK NG 64 GB', 1, 0),
(227, 20, 3, 'kit herramientas 18 en 1 reparación', '1 alicates de apertura, 2 chupones azules, 1 punta', 1, 298);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `id_proyecto` int(11) NOT NULL,
  `nombre` varchar(11) NOT NULL,
  `encargado` varchar(11) NOT NULL,
  `progreso` int(11) NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_fin` datetime NOT NULL,
  `estatus` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`id_proyecto`, `nombre`, `encargado`, `progreso`, `fecha_inicio`, `fecha_fin`, `estatus`) VALUES
(1, 'PAPER VAE', 'ARIEL Y VIC', 50, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ACTIVO'),
(2, 'DESPACHO OZ', 'EDUARDO BAR', 100, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'TERMINADO'),
(3, 'COCINA', 'ARIEL ANGUI', 80, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ACTIVO'),
(4, 'ALVA CLOUD', 'ARIEL Y VIC', 50, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'EN PAUSA'),
(10, 'kbkj', 'jhbkjhbj', 30, '2021-03-10 19:21:00', '2021-03-10 19:21:00', 'ACTIVO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rrhh_medico`
--

CREATE TABLE `rrhh_medico` (
  `idusuario` int(50) NOT NULL,
  `nombre_med` varchar(50) NOT NULL,
  `fecha_med` varchar(50) NOT NULL,
  `edad_med` varchar(50) NOT NULL,
  `sexo` varchar(50) NOT NULL,
  `sangre_med` varchar(50) NOT NULL,
  `peso_med` varchar(50) NOT NULL,
  `peso_ideal_med` varchar(50) NOT NULL,
  `talla_med` varchar(50) NOT NULL,
  `estatura_med` varchar(50) NOT NULL,
  `cadera_med` varchar(50) NOT NULL,
  `pecho_med` varchar(50) NOT NULL,
  `cintura_med` varchar(50) NOT NULL,
  `medicamento_med` varchar(100) NOT NULL,
  `antecedentes_med` varchar(100) NOT NULL,
  `condicion` tinyint(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rrhh_medico`
--

INSERT INTO `rrhh_medico` (`idusuario`, `nombre_med`, `fecha_med`, `edad_med`, `sexo`, `sangre_med`, `peso_med`, `peso_ideal_med`, `talla_med`, `estatura_med`, `cadera_med`, `pecho_med`, `cintura_med`, `medicamento_med`, `antecedentes_med`, `condicion`) VALUES
(7, 'Hilda Aydee Velasco Delgadillo', '1985-06-28', '36 años', 'Femenino', '', '68.00 kg', '60 kg', '30', '1.58 cm', '104 cm', '95 cm', '82 cm', '', '', 1),
(18, 'Pedro Victor Valerio Garcia', '1997-08-16', '23 años', 'Masculino', '0+', '91.70 kg', '80 kg', '34', '1.75 cm', '112 cm', '94 cm', '104 cm', 'PENICILINA', 'Operación de vesícula', 1),
(35, 'Cinthia Vargas Betanzos', '1997-09-15', '23 años', 'Femenino', 'B+', '57.00 kg', '58 kg', '30', '1.60 cm', '99 cm', '91 cm', '87 cm', 'ninguno', '', 1),
(16, 'Jesus Ariel Anguiano Moreno', '1999-12-08', '21 años', 'Masculino', 'B+', '62.30 kg', '62 kg', '28', '1.62 cm', '96 cm', '97 cm', '83 cm', 'Ninguno', '', 1),
(20, 'Roberto Medina Alvarez', '1999-05-11', '22 años', 'Masculino', 'O+', '84.60 kg', '83 kg', '34', '1.83 cm', '106 cm', '107 cm', '92 cm', 'Ninguno', '', 1),
(5, 'Eduardo Barón Meza', '1993-09-19', '27 años', 'Masculino', 'O-', '106.90 kg', '83 kg', '36', '1.78 cm', '119 cm', '119 cm', '112 cm', 'Ninguno', '', 1),
(17, 'Laura Sanchez Duran', '1998-02-04', '23 años', 'Femenino', 'O+', '67.70 kg', '70 kg', '32', '1.75 cm', '101 cm', '94 cm', '84 cm', 'Ninguno', '', 1),
(14, 'Zenaida García Acevedo', '1985-06-05', '36 años', 'Femenino', 'O+', '60.90 kg', '50 kg', '', '1.50 cm', '99 cm', '101 cm', '92 cm', 'Ninguno', '', 1),
(15, 'Sandra Martínez Díaz', '1975-06-10', '46 años', 'Femenino', 'O+', '57.30 kg', '58 kg', '32', '1.58 cm', '102 cm', '92 cm', '75 cm', 'Ninguno', '', 1),
(32, 'Christian Jose Castillo Ocampo', '1988-05-19', '33 años', 'Masculino', 'O+', '92.30 kg', '80 kg', '34', '1.78 cm', '110 cm', '112 cm', '106 cm', 'Ninguno', '', 1),
(12, 'Fernando Preciado Chargoy', '1997-06-15', '24 años', 'Masculino', 'O+', '84.70 kg', '80 kg', '', '1.75 cm', '112 cm', '110 cm', '102 cm', 'Nimesulida', '', 1),
(10, 'Andrea Michelle Calderon Quintero', '1995-04-08', '26 años', 'Masculino', 'O+', '66.10 kg', '65 kg', '28', '1.65 cm', '102 cm', '95 cm', '83 cm', 'Ninguno', '', 1),
(8, 'Ariadna Blanca Verrti Medina', '1979-07-19', '42 años', 'Femenino', 'O+', '61.30 kg', '63 kg', '24', '1.65 cm', '95 cm', '88 cm', '74 cm', 'Penicilina, Betametazona y sambutalmol', '', 1),
(19, 'César Aczel Rodríguez Maldonaso', '2000-01-03', '21 años', 'Masculino', 'O+', '73.40 kg', '70 kg', '34', '1.70 cm', '104 cm', '96 cm', '98 cm', 'Ninguna', '', 1),
(13, 'José Luis Gleason Lara', '1958-08-19', '62 años', 'Masculino', 'HO-', '77.00 kg', '67 kg', '34', '1.65 cm', '106 cm', '103 cm', '101 cm', 'Ninguno', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rrhh_seguimiento`
--

CREATE TABLE `rrhh_seguimiento` (
  `idusuario` int(50) NOT NULL,
  `nombre_seg` varchar(50) NOT NULL,
  `num_seg` int(50) NOT NULL,
  `fecha` date NOT NULL,
  `motivo_seg` varchar(50) NOT NULL,
  `problema_seg` varchar(700) NOT NULL,
  `puntos_seg` varchar(500) NOT NULL,
  `recomendacion_seg` varchar(500) NOT NULL,
  `observacion_seg` varchar(700) NOT NULL,
  `tareas` varchar(500) NOT NULL,
  `condicion` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rrhh_seguimiento`
--

INSERT INTO `rrhh_seguimiento` (`idusuario`, `nombre_seg`, `num_seg`, `fecha`, `motivo_seg`, `problema_seg`, `puntos_seg`, `recomendacion_seg`, `observacion_seg`, `tareas`, `condicion`) VALUES
(2, 'Anguiano Moreno Jesus Ariel', 1, '2021-12-11', 'Familiar', 'Muerte de padre', 'ira, depresión, estrés, frustración', 'ir al box o actividades físicas', 'el sujeto reprime sus emociones', 'requiere de varias sesiones', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE `tipo` (
  `idtipo` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `condicion` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo`
--

INSERT INTO `tipo` (`idtipo`, `nombre`, `condicion`) VALUES
(1, 'Insumos', 1),
(2, 'Muebleria', 1),
(3, 'Inventario', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipomantto`
--

CREATE TABLE `tipomantto` (
  `idtipomantto` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `condicion` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipomantto`
--

INSERT INTO `tipomantto` (`idtipomantto`, `nombre`, `condicion`) VALUES
(1, 'Preventivo', 1),
(2, 'Correctivo', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad_medida`
--

CREATE TABLE `unidad_medida` (
  `idmedida` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `condicion` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `unidad_medida`
--

INSERT INTO `unidad_medida` (`idmedida`, `nombre`, `condicion`) VALUES
(1, 'Pieza', 1),
(4, 'Libra', 1),
(5, 'kilogramo', 1),
(6, 'cucharada', 1),
(7, 'Block de 50 hojas', 1),
(8, 'Paquete', 1),
(9, 'Caja', 1),
(10, 'Block', 1),
(11, 'Rollo', 1),
(12, 'Kit', 1),
(13, 'IPHONE X', 1),
(14, 'IPHONE 12 PRO MAX', 1),
(15, 'IPHONE 7 PLUS', 1),
(16, 'IPHONE 6S PLUS', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `uploads`
--

CREATE TABLE `uploads` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `upload_time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `perfil` varchar(20) NOT NULL,
  `cargo` varchar(20) NOT NULL,
  `fecha_ingreso` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `imagen` varchar(500) NOT NULL,
  `sangre` varchar(10) NOT NULL,
  `edad` varchar(10) NOT NULL,
  `fecha_nacimiento` varchar(20) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `tel_emer` varchar(20) NOT NULL,
  `condicion` tinyint(1) NOT NULL,
  `iddepartamento` int(11) NOT NULL,
  `online` int(5) NOT NULL,
  `num_empleado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nombre`, `perfil`, `cargo`, `fecha_ingreso`, `email`, `password`, `imagen`, `sangre`, `edad`, `fecha_nacimiento`, `telefono`, `tel_emer`, `condicion`, `iddepartamento`, `online`, `num_empleado`) VALUES
(1, 'Super Usuario', 'Super Usuario', 'Supervisor', '2020-01-28', 'super.u@tianguiztli.com', 'admin', 'user_hombre.png', 'B+', '23', '2020-02-20', '5512345678', '5512345678', 1, 1, 1, 1),
(2, 'Rubén Erik Zamora Hernández', 'Super Usuario', 'Direccion general', '2020-01-01', 'erik.zamora@tianguiztli.com', 'Tianguiztli123', 'lic.png', 'B+', '24', '2000-12-24', '551427784', '5566179387', 1, 1, 1, 100),
(3, 'Brenda Itzel Leal Avila', 'Administrador', 'Direccion general', '2010-12-12', 'brenda.leal@tianguiztli.com', 'Tianguiztli123', 'bren.png', 'o+', '26', '1994-09-08', '5617149151', '5531064513', 1, 1, 1, 101),
(5, 'Eduardo Barón Meza', 'Administrador', 'Encargado', '2020-03-25', 'eduardo.b@tianguiztli.com', 'Tianguiztli123', 'EDU.JPG', 'O-', '27', '1993-09-19', '5569603244', '5558447990', 1, 4, 1, 102),
(6, 'María Abigail López Coronado', 'Usuario', 'Auxiliar', '2020-05-25', 'abigail.l@tianguiztli.com', 'Tianguiztli123', 'ABY.JPG', 'O+', '23', '1997-08-23', '5582419207', '5551084152', 1, 7, 1, 104),
(7, 'Hilda Aydee Velasco Delgadillo', 'Super Usuario', 'Direccion General', '2017-01-15', 'aydee.v@tianguiztli.com', 'Tianguiztli123', 'AYDEE.png', 'B+', '24', '2000-12-24', '5566179387', '5566179387', 1, 6, 1, 106),
(8, 'Ariadna Blanca Vertti Medina', 'Administrador', 'Encargado', '2016-07-15', 'ariadna.v@tianguiztli.com', 'Tianguiztli123', 'ARY.png', 'B+', '24', '2000-12-24', '5534041244', '5534041244', 1, 7, 1, 107),
(10, 'Andrea Michelle Calderón Quintero', 'Administrador', 'Encargado', '2017-09-11', 'andrea.c@tianguiztli.com', 'Tianguiztli123', 'MICH.png', 'O+', '26', '1995-04-08', '5587380108', '5515583838', 1, 3, 1, 109),
(11, 'Erick Pineda Maldonado', 'Administrador', 'Encargado', '2017-10-18', 'erick.p@tianguiztli.com', 'Tianguiztli123', 'user_hombre.png', 'O+', '23', '1997-09-12', '5530051179', '554737570', 0, 3, 1, 110),
(12, 'Fernando Preciado Chargoy', 'Usuario', 'Auxiliar', '2020-07-01', 'fernando.p@tianguiztli.com', 'Tianguiztli123', 'FERNANDO.png', 'O+', '23', '1997-06-03', '5576243855', '5513107926', 1, 6, 1, 113),
(13, 'Jose Luis Gleason Lara', 'Usuario', 'Auxiliar', '2019-05-11', 'luis.l@tianguiztli.com', 'Tianguiztli123', 'LUIS.png', 'B+', '24', '2000-12-24', '551427784', '5566179387', 1, 13, 1, 114),
(14, 'Zenaida García Acevedo', 'Usuario', 'Encargado', '2020-05-29', 'zenaida.g@tianguiztli.com', 'Tianguiztli123', 'ZEN.png', 'B+', '24', '2000-12-24', '5562252489', '5562252489', 1, 10, 1, 115),
(15, 'Sandra Martínez Díaz', 'Administrador', 'Auxiliar', '2019-09-10', 'sandra.m@tianguiztli.com', 'Tianguiztli123', 'SANDRA.PNG', 'B+', '24', '2000-12-24', '5534427944', '5534427944', 1, 11, 1, 116),
(16, 'Jesús Ariel Anguiano Moreno', 'Usuario', 'Encargado', '2020-01-21', 'jesus.a@tianguiztli.com', 'Tianguiztli123', 'ARIEL.JPG', 'B+', '21', '1999-12-08', '5578799150', '5578799150', 1, 2, 1, 117),
(17, 'Laura Sánchez Duran', 'Usuario', 'Auxiliar', '2020-01-21', 'laura.s@tianguiztli.com', 'Tianguiztli123', 'LAU.png', 'O+', '23', '1998-02-04', '5547828948', '5554413851', 1, 4, 1, 118),
(18, 'Pedro Victor Valerio Garcia', 'Super Usuario', 'Direccion General', '2020-01-20', 'pedro.v@tianguiztli.com', '123', 'VIC.png', 'O+', '23', '1997-08-16', '5539070981', '5557321592', 1, 6, 1, 119),
(19, 'César Aczel Rodríguez Maldonado', 'Usuario', 'Auxiliar', '2019-04-01', 'aczel.r@tianguiztli.com', 'Tianguiztli123', 'zack.png', 'O+', '21', '2000-01-03', '5574409760', '5549047215', 1, 4, 1, 121),
(20, 'Roberto Medina Álvarez', 'Usuario', 'Auxiliar', '2020-01-21', 'roberto.a@tianguiztli.com', 'Tianguiztli123', 'ROBERTO.png', 'O+', '21', '1999-05-11', '5564265239', '5576834764', 1, 2, 1, 123),
(21, 'Guadalupe Elizabeth Cesar Lira', 'Usuario', 'Auxiliar', '2020-01-21', 'guadalupe.c@tianguiztli.com', 'Tianguiztli123', 'ELI.JPG', '', '', '', '', '', 0, 2, 1, 124),
(22, 'Miriam Cabrera Paulin', 'Usuario', 'Auxiliar', '2020-01-21', 'miriam.c@tianguiztli.com', 'Tianguiztli123	', 'MIRI.png', '', '', '', '', '', 0, 2, 1, 125),
(23, 'David Hernández Delgado', 'Usuario', 'Auxiliar', '2021-01-13', 'david.h@tianguiztli.com', 'Tianguiztli123', 'DAVID.png', 'O+', '18', '2002-08-28', '5615230198', '5617753980', 1, 3, 1, 128),
(24, 'Roscel Cortés Huesca', 'Usuario', 'Auxiliar', '2021-01-15', 'roscel.c@tianguiztli.com', 'Tianguiztli123	', 'ros.png', '', '', '', '', '', 0, 3, 1, 130),
(25, 'Ruben Guillermo Zamora Carrillo', 'Usuario', 'Auxiliar', '2016-02-04', 'ruben.z@tianguiztli.com', '123', 'geo.png', '', '', '', '', '', 1, 8, 1, 0),
(26, 'Melisa Alcantar Hernández', 'Usuario', 'Auxiliar', '2021-01-13', 'melisa.a@tianguiztli.com', '123', 'MELISA.png', 'O+', '19', '2001-08-29', '5569754518', '5532416603', 0, 3, 1, 2),
(27, 'NAYELI', 'Usuario', 'Auxiliar', '2020-01-13', 'naye@tianguiztli.com', '123', 'user_mujer.png', 'B+', '24', '2000-12-24', '551427784', '5566179387', 1, 3, 1, 3),
(28, 'LUIS ANDRES NORIEGA GOMEZ', 'Usuario', 'Auxiliar', '2021-02-15', 'luis.n@tianguiztli.com', 'Tianguiztli123', '1616177511.png', 'O+', '20', '2020-07-22', '5566922479', '5537384814', 0, 3, 1, 0),
(31, 'ARLIN AVILA LINARES', 'Usuario', 'Auxiliar', '2021-01-25', 'arlin.a@tianguiztli.com', 'Tianguiztli123', '1616690639.png', '', '', '', '', '', 0, 10, 1, 131),
(32, 'CHRISTIAN JOSE CASTILLO OCAMPO', 'Usuario', 'Auxiliar', '2021-02-23', 'cristian.c@tianguiztli.com', 'Tianguiztli123', '1616692042.png', '', '33', '1988-05-19', '5548923223', '5522902915', 1, 13, 1, 137),
(33, 'Sin usuario', 'Usuario', 'Auxiliar', '2020-01-21', 'sinusuario@tianguiztli.com', '123', 'user_hombre.png', 'B+', '24', '2000-12-24', '5512345678', '5512345678', 1, 12, 1, 1111),
(34, 'Erika Avila Plata', 'Usuario', 'Auxiliar', '2021-04-05', 'erika.a@tianguiztli.com', '123', '1620060214.png', 'O+', '39', '1981-11-23', '5561968461', '5555694453', 0, 9, 1, 134),
(35, 'Cinthia Vargas Betanzos', 'Usuario', 'Auxiliar', '2021-05-17', 'cinthia.v@tianguiztli.com', 'Tianguiztli123', '1621263053.png', 'B+', '23', '1997-09-15', '5571841540', '5550402990', 1, 7, 1, 10101);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_globales`
--

CREATE TABLE `usuarios_globales` (
  `id_globales` int(11) NOT NULL,
  `correo` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `pass` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  `num_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios_globales`
--

INSERT INTO `usuarios_globales` (`id_globales`, `correo`, `pass`, `nombre`, `num_usuario`) VALUES
(1, 'admin@gmail.com', 'admin', 'Super Usuario', 1),
(2, 'erik.zamora@tianguiztli.com', 'Tianguiztli123', 'Rubén Erik Zamora Hernández', 100),
(3, 'brenda.leal@tianguiztli.com', 'Tianguiztli123', 'Brenda Itzel Leal Avila', 101),
(5, 'eduardo.b@tianguiztli.com', 'Tianguiztli123', 'Eduardo Barón Meza', 102),
(6, 'abigail.l@tianguiztli.com', 'Tianguiztli123', 'Maria Abigail Lopez Coronado', 104),
(7, 'aydee.v@tianguiztli.com', 'Tianguiztli123', 'Hilda Aydee Velasco Delgadillo', 106),
(8, 'ariadna.v@tianguiztli.com', 'Tianguiztli123', 'Ariadna Blanca Vertti Medina', 107),
(9, 'dulce.r@tianguiztli.com', 'Tianguiztli123', 'Dulce Maria Romero Martinez', 108),
(10, 'andrea.c@tianguiztli.com', 'Tianguiztli123', 'Andrea Michelle Calderon Quintero', 109),
(11, 'erick.p@tianguiztli.com', 'Tianguiztli123', 'Erick Pineda Maldonado', 110),
(12, 'fernando.p@tianguiztli.com', 'Tianguiztli123', 'Fernando Preciado Chargoy', 113),
(13, 'luis.l@tianguiztli.com', 'Tianguiztli123', 'Jose Luis Gleason Lara', 114),
(14, 'zenaida.g@tianguiztli.com', 'Tianguiztli123', 'Zenaida García Acevedo', 115),
(15, 'sandra.m@tianguiztli.com', 'Tianguiztli123', 'Sandra Martinez Diaz', 116),
(16, 'jesus.a@tianguiztli.com', 'Tianguiztli123', 'Jesus Ariel Anguiano Moreno', 117),
(17, 'laura.s@tianguiztli.com', 'Tianguiztli123', 'Laura Sanchez Duran', 118),
(18, 'pedro.v@tianguiztli.com', 'Tianguiztli123', 'Pedro Victor Valerio Garcia', 119),
(19, 'aczel.r@tianguiztli.com', 'Tianguiztli123', 'Cesar Aczel Rodriguez Maldonado', 121),
(20, 'roberto.a@tianguiztli.com', 'Tianguiztli123', 'Roberto Medina Alvarez', 123),
(21, 'guadalupe.c@tianguiztli.com', 'Tianguiztli123', 'Guadalupe Elizabeth Cesar Lira', 124),
(22, 'miriam.c@tianguiztli.com', 'Tianguiztli123', 'Miriam Cabrera Paulin', 125),
(23, 'david.h@tianguiztli.com', 'Tianguiztli123', 'David Hernandez Delgado', 128),
(24, 'roscel.c@tianguiztli.com', 'Tianguiztli123', 'Roscel Cortés Huesca', 130);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_permiso`
--

CREATE TABLE `usuario_permiso` (
  `idusuario_permiso` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `idpermiso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cargador`
--
ALTER TABLE `cargador`
  ADD PRIMARY KEY (`idcargador`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcategoria`),
  ADD UNIQUE KEY `nombre_UNIQUE` (`nombre`);

--
-- Indices de la tabla `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`chatid`);

--
-- Indices de la tabla `chat_login_details`
--
ALTER TABLE `chat_login_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_userChat_idx` (`userid`),
  ADD KEY `fk_userChats_idx` (`userid`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`iddepartamento`);

--
-- Indices de la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`idequipo`),
  ADD KEY `iddepartamentoequipo` (`iddepartamento`) USING BTREE,
  ADD KEY `idcargadorequipo` (`idcargador`) USING BTREE,
  ADD KEY `idusuarioequipo` (`idusuario`) USING BTREE,
  ADD KEY `idestatusequipo` (`idestatus`) USING BTREE,
  ADD KEY `FK_cat_equippo` (`idcategoria`);

--
-- Indices de la tabla `estatus`
--
ALTER TABLE `estatus`
  ADD PRIMARY KEY (`idestatus`);

--
-- Indices de la tabla `factura_orden`
--
ALTER TABLE `factura_orden`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `factura_orden_fk` (`idusuario`);

--
-- Indices de la tabla `factura_orden_producto`
--
ALTER TABLE `factura_orden_producto`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `orden_fk` (`order_id`);

--
-- Indices de la tabla `insumo`
--
ALTER TABLE `insumo`
  ADD PRIMARY KEY (`idinsumo`),
  ADD KEY `dep_ins_fk` (`iddepartamento`),
  ADD KEY `prod_ins_fk` (`idproducto`),
  ADD KEY `unidad_ins_fk` (`idmedida`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`idinventario`),
  ADD KEY `iddepartamento` (`iddepartamento`) USING BTREE,
  ADD KEY `unidad_inv_fk` (`idmedida`),
  ADD KEY `fk_cat_inv` (`idcategoria`);

--
-- Indices de la tabla `mantenimiento`
--
ALTER TABLE `mantenimiento`
  ADD PRIMARY KEY (`idmantenimiento`),
  ADD KEY `idequipomantto` (`idequipo`) USING BTREE,
  ADD KEY `idusuariomantto` (`idusuario`) USING BTREE,
  ADD KEY `idtipomanttomantto` (`idtipomantto`) USING BTREE;

--
-- Indices de la tabla `minutas`
--
ALTER TABLE `minutas`
  ADD PRIMARY KEY (`id_minuta`);

--
-- Indices de la tabla `mis_eventos`
--
ALTER TABLE `mis_eventos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mis_productos`
--
ALTER TABLE `mis_productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orden`
--
ALTER TABLE `orden`
  ADD PRIMARY KEY (`id_orden`),
  ADD KEY `iddepatamentofkorden` (`iddepartamento`) USING BTREE;

--
-- Indices de la tabla `orden_articulos`
--
ALTER TABLE `orden_articulos`
  ADD PRIMARY KEY (`id_articulo`),
  ADD KEY `ord_id_fk` (`id_orden`),
  ADD KEY `fk_productoOrden_idx` (`idproducto`);

--
-- Indices de la tabla `orden_articulos_tienda`
--
ALTER TABLE `orden_articulos_tienda`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indices de la tabla `orden_tienda`
--
ALTER TABLE `orden_tienda`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indices de la tabla `permiso`
--
ALTER TABLE `permiso`
  ADD PRIMARY KEY (`idpermiso`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idproducto`),
  ADD KEY `idcategoriaproducto` (`idcategoria`) USING BTREE;

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`id_proyecto`);

--
-- Indices de la tabla `rrhh_medico`
--
ALTER TABLE `rrhh_medico`
  ADD PRIMARY KEY (`idusuario`);

--
-- Indices de la tabla `rrhh_seguimiento`
--
ALTER TABLE `rrhh_seguimiento`
  ADD PRIMARY KEY (`idusuario`);

--
-- Indices de la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`idtipo`);

--
-- Indices de la tabla `tipomantto`
--
ALTER TABLE `tipomantto`
  ADD PRIMARY KEY (`idtipomantto`);

--
-- Indices de la tabla `unidad_medida`
--
ALTER TABLE `unidad_medida`
  ADD PRIMARY KEY (`idmedida`);

--
-- Indices de la tabla `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`),
  ADD KEY `usu_dep_fk` (`iddepartamento`),
  ADD KEY `password_UNIQUE` (`password`) USING BTREE;

--
-- Indices de la tabla `usuarios_globales`
--
ALTER TABLE `usuarios_globales`
  ADD PRIMARY KEY (`id_globales`);

--
-- Indices de la tabla `usuario_permiso`
--
ALTER TABLE `usuario_permiso`
  ADD PRIMARY KEY (`idusuario_permiso`),
  ADD KEY `fk_usuario_permiso_permiso_idx` (`idpermiso`),
  ADD KEY `fk_usuario_permiso_usuario_idx` (`idusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargador`
--
ALTER TABLE `cargador`
  MODIFY `idcargador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `chat`
--
ALTER TABLE `chat`
  MODIFY `chatid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `chat_login_details`
--
ALTER TABLE `chat_login_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `iddepartamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `equipo`
--
ALTER TABLE `equipo`
  MODIFY `idequipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT de la tabla `estatus`
--
ALTER TABLE `estatus`
  MODIFY `idestatus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `factura_orden`
--
ALTER TABLE `factura_orden`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `factura_orden_producto`
--
ALTER TABLE `factura_orden_producto`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `insumo`
--
ALTER TABLE `insumo`
  MODIFY `idinsumo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `idinventario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=279;

--
-- AUTO_INCREMENT de la tabla `mantenimiento`
--
ALTER TABLE `mantenimiento`
  MODIFY `idmantenimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `minutas`
--
ALTER TABLE `minutas`
  MODIFY `id_minuta` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `mis_eventos`
--
ALTER TABLE `mis_eventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mis_productos`
--
ALTER TABLE `mis_productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `orden`
--
ALTER TABLE `orden`
  MODIFY `id_orden` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `orden_articulos`
--
ALTER TABLE `orden_articulos`
  MODIFY `id_articulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `orden_articulos_tienda`
--
ALTER TABLE `orden_articulos_tienda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `orden_tienda`
--
ALTER TABLE `orden_tienda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `permiso`
--
ALTER TABLE `permiso`
  MODIFY `idpermiso` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idproducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `id_proyecto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `rrhh_medico`
--
ALTER TABLE `rrhh_medico`
  MODIFY `idusuario` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1501;

--
-- AUTO_INCREMENT de la tabla `rrhh_seguimiento`
--
ALTER TABLE `rrhh_seguimiento`
  MODIFY `idusuario` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo`
--
ALTER TABLE `tipo`
  MODIFY `idtipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipomantto`
--
ALTER TABLE `tipomantto`
  MODIFY `idtipomantto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `unidad_medida`
--
ALTER TABLE `unidad_medida`
  MODIFY `idmedida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `usuarios_globales`
--
ALTER TABLE `usuarios_globales`
  MODIFY `id_globales` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `usuario_permiso`
--
ALTER TABLE `usuario_permiso`
  MODIFY `idusuario_permiso` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `chat_login_details`
--
ALTER TABLE `chat_login_details`
  ADD CONSTRAINT `fk_userChats` FOREIGN KEY (`userid`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD CONSTRAINT `FK_cat_equippo` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`idcategoria`),
  ADD CONSTRAINT `fk_cargadorEquipo` FOREIGN KEY (`idcargador`) REFERENCES `cargador` (`idcargador`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_departamentoEquipo` FOREIGN KEY (`iddepartamento`) REFERENCES `departamento` (`iddepartamento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_estatusEquipo` FOREIGN KEY (`idestatus`) REFERENCES `estatus` (`idestatus`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `factura_orden`
--
ALTER TABLE `factura_orden`
  ADD CONSTRAINT `factura_orden_fk` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`);

--
-- Filtros para la tabla `factura_orden_producto`
--
ALTER TABLE `factura_orden_producto`
  ADD CONSTRAINT `orden_fk` FOREIGN KEY (`order_id`) REFERENCES `factura_orden` (`order_id`);

--
-- Filtros para la tabla `insumo`
--
ALTER TABLE `insumo`
  ADD CONSTRAINT `dep_ins_fk` FOREIGN KEY (`iddepartamento`) REFERENCES `departamento` (`iddepartamento`),
  ADD CONSTRAINT `prod_ins_fk` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`idproducto`),
  ADD CONSTRAINT `unidad_ins_fk` FOREIGN KEY (`idmedida`) REFERENCES `unidad_medida` (`idmedida`);

--
-- Filtros para la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `fk_cat_inv` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`idcategoria`),
  ADD CONSTRAINT `fk_departamentoInventario` FOREIGN KEY (`iddepartamento`) REFERENCES `departamento` (`iddepartamento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `unidad_inv_fk` FOREIGN KEY (`idmedida`) REFERENCES `unidad_medida` (`idmedida`);

--
-- Filtros para la tabla `mantenimiento`
--
ALTER TABLE `mantenimiento`
  ADD CONSTRAINT `fk_equipoMantenimiento` FOREIGN KEY (`idequipo`) REFERENCES `equipo` (`idequipo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tipoMantenimiento` FOREIGN KEY (`idtipomantto`) REFERENCES `tipomantto` (`idtipomantto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuarioMantenimiento` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `orden_articulos`
--
ALTER TABLE `orden_articulos`
  ADD CONSTRAINT `fk_productoOrden` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`idproducto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ord_id_fk` FOREIGN KEY (`id_orden`) REFERENCES `orden` (`id_orden`);

--
-- Filtros para la tabla `orden_articulos_tienda`
--
ALTER TABLE `orden_articulos_tienda`
  ADD CONSTRAINT `orden_articulos_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orden_tienda` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `orden_tienda`
--
ALTER TABLE `orden_tienda`
  ADD CONSTRAINT `orden_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `usuario` (`idusuario`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `prod_fk` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`idcategoria`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usu_dep_fk` FOREIGN KEY (`iddepartamento`) REFERENCES `departamento` (`iddepartamento`);

--
-- Filtros para la tabla `usuario_permiso`
--
ALTER TABLE `usuario_permiso`
  ADD CONSTRAINT `fk_permisoUsuario` FOREIGN KEY (`idpermiso`) REFERENCES `permiso` (`idpermiso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuariPermiso` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
