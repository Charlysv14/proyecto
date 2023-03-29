-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-03-2023 a las 01:22:45
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bacano`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `fecha`) VALUES
(1, 'Comidas', '2020-08-09 21:32:58'),
(2, 'Bebidas', '2020-08-10 00:49:24'),
(8, 'Sopas', '2020-08-10 00:57:26'),
(9, 'Chuletas', '2020-08-10 01:00:09'),
(10, 'Costillas', '2020-08-10 01:03:57'),
(11, 'Cremas', '2020-08-10 01:06:01'),
(12, 'Pollo', '2020-08-10 01:18:37'),
(13, 'Espaguetis', '2020-08-10 01:21:34'),
(14, 'Ejecutivo', '2020-09-22 21:44:01'),
(15, 'Combo', '2020-09-22 22:09:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `compras` int(11) NOT NULL,
  `ultima_compra` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `telefono`, `direccion`, `compras`, `ultima_compra`, `fecha`) VALUES
(17, 'jheda Henao', '(300) 342-7591', 'Local', 0, '0000-00-00 00:00:00', '2020-12-04 22:15:18'),
(18, 'Karo Navarro', '(313) 572-1095', 'Vista Hermosa Cr60D N27  43 Colegio militar almirante colon Ferreteria Ultracem Tienda mi deseo tiene carpa azul en toda la esquina', 0, '0000-00-00 00:00:00', '2020-10-05 22:51:04'),
(19, 'Karen salazar', '(301) 462-8266', 'Barrio san Fernando urb kalamary calle 1 MZ 3 lote 29', 0, '0000-00-00 00:00:00', '2020-10-06 16:25:27'),
(20, 'Paola montoya', '(317) 893-3988', 'conjunto brisas de Galicia torre p apto 308 por detras de la terminal sobre la carretera la variante', 0, '0000-00-00 00:00:00', '2020-10-06 16:28:50'),
(21, 'Ana rojas', '(301) 783-1866', 'parque Heredia edificio calamari torre 1 apto 601 ', 0, '0000-00-00 00:00:00', '2020-10-06 16:34:02'),
(22, 'Deirys Cabarcas', '(313) 500-3383', 'bosques de la ceiba manzana 3 lote 560 En la esquina del barrio hay un abasto a que se llama el punto entran por esa calle sigues derecho como en la cuarta cuadra', 0, '0000-00-00 00:00:00', '2020-10-06 16:39:39'),
(23, 'Eric Becker', '(301) 725-9626', 'Luis Carlos Galan Mz P Lt 22 Suben  por la heroica llega al billar la misma cuadra de la heroica al llegar al billar diagonal se encuentra con una casa que tiene una puerta enrollable negra en el apartamento del segundo piso', 0, '0000-00-00 00:00:00', '2020-10-06 16:43:41'),
(24, 'Leidy Morelo', '(318) 696-3127', 'Navas meisel por el puesto de salud de la reina llamar en el puesto de salud', 0, '0000-00-00 00:00:00', '2020-10-06 16:45:13'),
(25, 'Dina Hernandez', '(300) 306-9707', 'Barrio la Carolina manzana B lote 5  Calle 11 5ta cada', 0, '0000-00-00 00:00:00', '2020-10-06 16:46:06'),
(26, 'Dick Wyatt', '(321) 354-2224', 'Mz45 lote 8 tercer piso Simon Bolivar la calle despues del motel santaros entrando hasta el final de la iglesia y entrando por la calle donde estan unas rejas de colores', 0, '0000-00-00 00:00:00', '2020-10-06 16:47:35'),
(27, 'Estefania paez rodrigue', '(301) 778-0875', 'Zaragocilla calle la cruz N23 40  Diagonal a billares el progreso', 0, '0000-00-00 00:00:00', '2020-10-06 16:48:21'),
(28, 'Nancy Narvaez', '(318) 635-6585', 'Ronda real 2do piso  Arriba de drogas la rebaja', 0, '0000-00-00 00:00:00', '2020-10-06 17:02:35'),
(29, 'Julio Castilla', '(300) 704-0351', 'Santa Monica Cl 30B N78D 55 detras del Banco Popular casa blanca de dos pisos  vidrios verdosos', 0, '0000-00-00 00:00:00', '2020-10-06 17:34:54'),
(30, 'Marcelo perez', '(350) 654-5232', 'Campestre mz 81 lote 26 etapa 8', 0, '0000-00-00 00:00:00', '2020-10-06 17:35:43'),
(31, 'Ubaldo sierra', '(301) 341-3835', 'Parque Heredia conjunto residencial malibu dejar en la porteria', 0, '0000-00-00 00:00:00', '2020-10-06 19:15:28'),
(32, 'Felix Alonso Garay Porras', '(320) 766-9135', 'San jose de lo campanos kra 101 38A71 A la do de la ferreteria el paraiso', 0, '0000-00-00 00:00:00', '2020-10-06 19:16:49'),
(33, 'Medina Cueva', '(300) 867-5456', 'Parque heredia Candil Apto 204 Torre 4', 0, '0000-00-00 00:00:00', '2020-10-12 17:56:28'),
(34, 'Enrique Morales', '(302) 238-9867', 'Plazuela Mayor Torre 5 apto 420', 0, '0000-00-00 00:00:00', '2020-10-12 17:59:30'),
(35, 'Carlos Benito', '(301) 610-2811', 'Recreo Calle 2 N80b 23 al lado de pizza movil', 3, '2020-12-29 17:31:25', '2020-12-29 22:31:25'),
(36, 'Heider Tulio', '(300) 222-2245', 'Ternera en la carcel', 0, '0000-00-00 00:00:00', '2020-10-12 18:01:25'),
(37, 'Jairo olivera', '(301) 583-5661', 'blas de lezo Mz q lote 15 3 casas antes de la casa del boli', 0, '0000-00-00 00:00:00', '2020-10-12 18:03:03'),
(38, 'Stefanni', '(300) 222-9295', 'San fernando sector simon bolivar subi9endo por la carniceria el chamaco calle de la Y ', 0, '0000-00-00 00:00:00', '2020-10-12 18:04:21'),
(39, 'Vanessa Ruis', '(321) 505-4808', 'Campestre mz 30 lote 27 mega tiendas del campestre', 0, '0000-00-00 00:00:00', '2020-10-12 18:09:19'),
(40, 'Jorge ivan ', '(322) 590-2572', 'Blas de lezo mz 2 lote 24 entrando por el bar primitivo', 0, '0000-00-00 00:00:00', '2020-10-12 18:12:39'),
(41, 'Felix Muñoz', '(301) 288-5789', 'Hotel Altamar Bosque Apto 212', 0, '0000-00-00 00:00:00', '2020-10-12 18:15:26'),
(42, 'Yesid Romero', '(312) 896-2329', 'Villa andrea mz e lote 7 tienda los mellitos entrada por villa sol 2', 0, '0000-00-00 00:00:00', '2020-10-12 18:18:44'),
(43, 'Pedro Lambis', '(301) 245-3954', 'San Jose De los campanos kra100A N34A12 Por la olimpica', 0, '0000-00-00 00:00:00', '2020-10-12 18:21:21'),
(44, 'Leonardo', '(312) 697-0701', 'Hotel altamar habitacion 109', 0, '0000-00-00 00:00:00', '2020-10-12 18:22:24'),
(45, 'Milton Zambrano', '(300) 810-0334', 'Palmeras mz 37 Lote 25 por el campo de softball', 0, '0000-00-00 00:00:00', '2020-10-12 18:24:15'),
(46, 'Marta', '(313) 435-4589', 'Variedades marta en la calle sexta el Recreo', 0, '0000-00-00 00:00:00', '2020-10-12 18:25:33'),
(47, 'Madelein San juan', '(305) 340-5412', 'Los cerezos Mz e2 lote 17b Por al tienda rinconcito de los cerezos', 0, '0000-00-00 00:00:00', '2020-10-12 18:26:39'),
(48, 'Alvaro Marin', '(304) 334-9721', 'Villa grande de indias 2 mz 9 lote 28 antes de llegar a una sala de ventas ', 0, '0000-00-00 00:00:00', '2020-10-12 18:28:59'),
(49, 'Carolina', '(304) 520-9306', 'Verona Torre 4 ap 415', 0, '0000-00-00 00:00:00', '2020-10-12 18:30:58'),
(50, 'Yadi', '(316) 259-8567', 'los alpes calle 31g n2 35 por la iglesia entrando por los alpes full', 0, '0000-00-00 00:00:00', '2020-10-12 18:34:15'),
(51, 'Laura Contreras', '(310) 622-3775', 'Urb Horizonte Mz 5 lote 11 etapa 1', 0, '0000-00-00 00:00:00', '2020-10-12 18:35:59'),
(52, 'Rolando bello', '(315) 781-9104', 'Alto bosque trav 52 b N 21D 104 apto 3e Por la avenidad Crisantoluque', 0, '0000-00-00 00:00:00', '2020-10-12 18:37:22'),
(53, 'Javier', '(315) 781-9104', 'Ciudadela 2000 mz21 lote 62 Calle despues de la inspeccion de policia', 0, '0000-00-00 00:00:00', '2020-10-12 18:38:35'),
(54, 'Marian', '(318) 280-5780', 'Altos de campreste mz 3 lote 12', 0, '0000-00-00 00:00:00', '2020-10-12 18:41:48'),
(55, 'Breida', '(311) 785-9147', 'Campestre mz 48 lote 3 etapa 3 entrando por megatiendas encuentras una Y mano derecha', 0, '0000-00-00 00:00:00', '2020-10-12 18:44:11'),
(56, 'Rut', '(310) 374-1341', 'Hotel altamar habitacion 105', 0, '0000-00-00 00:00:00', '2020-10-12 18:45:05'),
(57, 'Alvaro', '(300) 375-2355', 'Simon Bolivar mz21 lote 4 Avenida principal', 0, '0000-00-00 00:00:00', '2020-10-12 18:46:21'),
(58, 'David', '(322) 541-2149', 'las delicias cra 64 n30 221 por vuelta bajero', 0, '0000-00-00 00:00:00', '2020-10-12 18:49:05'),
(59, 'Nicole', '(302) 466-2862', 'Conjunto portal de santa monica apto 401A bajando por el casino del sao', 0, '0000-00-00 00:00:00', '2020-10-12 18:52:18'),
(60, 'Leonardo Romero', '(304) 589-9459', 'Alameda mz B lote 8 colegio camino del coral', 0, '0000-00-00 00:00:00', '2020-10-12 18:53:35'),
(61, 'Danilo Anaya', '(320) 491-6687', 'Socorro plan 282 mz 53 lote 24 Ferreletric Strivel al lado de la tiena neco york ', 0, '0000-00-00 00:00:00', '2020-10-12 18:55:36'),
(62, 'Armando', '(301) 213-0909', 'Almirante Colon frente de plaza colon mz 1 lote 17 etapa3', 0, '0000-00-00 00:00:00', '2020-10-12 18:59:23'),
(63, 'Cristian Roman', '(301) 577-9897', 'Carmelo Calle 14 N63 14 por la iglesia del carmelo', 0, '0000-00-00 00:00:00', '2020-10-12 19:04:49'),
(64, 'Alvaro Cortiz', '(301) 788-8213', 'Tranv 54 Diagonal a la universidad del sinu sede santillana Plaza colon Porteria', 0, '0000-00-00 00:00:00', '2020-10-12 19:06:40'),
(65, 'Maria', '(300) 485-7835', 'Blas de lezo m35 lote 17 4etapa diagonal a la panaderia jhonny', 0, '0000-00-00 00:00:00', '2020-10-12 19:08:12'),
(66, 'Jamer', '(317) 470-2541', 'San Fernando frente al son de vallenato peluqueria Kate', 0, '0000-00-00 00:00:00', '2020-10-12 19:09:50'),
(67, 'Felix Garay', '(320) 766-9135', 'San Jose kra 101 38A 71 al lado de la ferreteria el paraiso', 0, '0000-00-00 00:00:00', '2020-10-12 19:12:09'),
(68, 'Damaris Soto', '(311) 433-2777', 'Edificio plazuela mayor torre 1 Apto 804', 0, '0000-00-00 00:00:00', '2020-10-12 19:14:32'),
(69, 'Melisa', '(302) 310-6485', 'palmeras m29 lote 4 Apto 2 piso 2 compraventa rapidinero', 0, '0000-00-00 00:00:00', '2020-10-12 19:15:55'),
(70, 'Maria Acuña', '(312) 648-4625', 'Socorro plan 134 mz 131 lote 15 despues del mega tienas frebte al parqueadero', 0, '0000-00-00 00:00:00', '2020-10-12 19:19:53'),
(71, 'Ricardo Garcia', '(318) 375-2996', 'Concepcion ed vitros ap 202', 0, '0000-00-00 00:00:00', '2020-10-12 19:24:40'),
(72, 'Juan Lastre', '(301) 350-3298', 'parque heredia candil torre 9 ap 202', 0, '0000-00-00 00:00:00', '2020-10-12 19:27:40'),
(73, 'Eric Padilla', '(310) 288-5519', 'Villa andrea M 4 lote 14 en la principal', 0, '0000-00-00 00:00:00', '2020-10-12 19:31:13'),
(74, 'Yeison', '(305) 868-5195', 'Blas de lezo m28 lote 6 3 etapa', 0, '0000-00-00 00:00:00', '2020-10-12 19:34:16'),
(75, 'Farid de la cruz', '(310) 644-6542', 'Ciudadela 2000 ferreteria el bagre', 0, '0000-00-00 00:00:00', '2020-10-12 19:40:03'),
(76, 'Neysa Torres', '(316) 240-9597', 'Diagonal a la casa de la justicia country calamares mz19 lote 7 ', 0, '0000-00-00 00:00:00', '2020-12-04 22:15:21'),
(77, 'Adolfo', '(313) 890-9180', 'Huellas albeto uribe mz i lote 12', 0, '0000-00-00 00:00:00', '2020-10-12 20:02:03'),
(78, 'Elkin Guerrero ', '(304) 526-5009', 'Alpes trasv 72 N31D 54 por edificio villa sofia o cancha de los alpes', 0, '0000-00-00 00:00:00', '2020-10-12 20:03:32'),
(79, 'Pedro Salgado', '(312) 636-0857', 'San fernando kra 81b N 14 b15 Calle cordoba', 0, '0000-00-00 00:00:00', '2020-10-12 20:04:42'),
(80, 'Yeraldin Florez ', '(312) 806-0767', 'Hotel villa olimpica al frente de la plaza de toros', 0, '0000-00-00 00:00:00', '2020-10-12 20:06:24'),
(81, 'Camila Yepes', '(305) 378-7876', 'La victoria cra 68B N72 10 por los abasticos por la drogueria luz d eoro', 0, '0000-00-00 00:00:00', '2020-10-12 20:08:33'),
(82, 'Irina Padilla', '(301) 614-3879', 'la carolina mz A lote 52 calle 11 ', 0, '0000-00-00 00:00:00', '2020-10-12 20:10:55'),
(83, 'Julio Cesar ', '(313) 748-4316', '13 de junio urb la india mz J lote 17 ', 0, '0000-00-00 00:00:00', '2020-10-12 20:13:16'),
(84, 'Jardi Arango', '(318) 557-1428', 'los cerezos mz d5 lore 13 frente la tienda rinconcito de los cerezos', 0, '0000-00-00 00:00:00', '2020-10-12 20:14:43'),
(85, 'Sergio Arrieta', '(300) 624-6098', 'Palmeras m19 lot 22 cerca de la iglesia', 0, '0000-00-00 00:00:00', '2020-10-12 20:15:57'),
(86, 'Yenis Marin', '(315) 705-5242', 'Socorro plan 500A mz 22 lote 6 por el techo rojo', 0, '0000-00-00 00:00:00', '2020-10-12 20:17:43'),
(87, 'Cindy Ariza', '(300) 457-5436', 'maria cano por el colegio k80 D1 4D 2Ap', 0, '0000-00-00 00:00:00', '2020-10-12 20:18:46'),
(88, 'Sergio Rivera', '(305) 330-9536', 'Los alpes por la tienda 5 esquinas transversal 71 e 31e 05', 0, '0000-00-00 00:00:00', '2020-10-12 20:19:59'),
(89, 'Aura Gonzales ', '(317) 756-3325', 'Tacarigua entrando por el restaurante braza y barril al fondo ultima esquina a la izquierda', 0, '0000-00-00 00:00:00', '2020-10-12 20:21:45'),
(90, 'Daniel Rueda', '(300) 790-5507', 'Zaragocilla cra 30 f N 5021 por la entrada del preescolar confenalco', 0, '0000-00-00 00:00:00', '2020-10-12 20:22:56'),
(91, 'Jose Ramirez', '(322) 642-7376', 'Villa grande de indias 1 mz i lote 16 dose cuadras a mano derecha despues de drogas la rebaja', 0, '0000-00-00 00:00:00', '2020-10-12 20:24:12'),
(92, 'Juelth Enrique', '(301) 251-4540', 'Providencia 34 N 79 A 12 2 cuadras despues de la tienda de los mangos', 0, '0000-00-00 00:00:00', '2020-10-12 20:29:53'),
(93, 'Robinson Sandez', '(311) 675-2099', 'Los jardines etapa 1 entrando por drogerias la rebaja 3 cuadras a la mano derecha', 0, '0000-00-00 00:00:00', '2020-10-12 20:34:08'),
(94, 'Sergio Perez', '(313) 662-2290', 'Torres del jardin torre 3 apto 616', 0, '0000-00-00 00:00:00', '2020-10-12 20:35:35'),
(95, 'Ana Caboza', '(322) 524-0818', 'Los Alpes 5 esquina calle 31 N 71b62', 0, '0000-00-00 00:00:00', '2020-10-12 20:38:29'),
(96, 'Adriana', '(300) 507-5890', 'Portales de santa monica detras del sao apto 406D', 0, '0000-00-00 00:00:00', '2020-10-12 20:41:34'),
(97, 'Jose', '(310) 602-7348', 'Socorro Plan 500A mz 29 lote3 la tienda alta y omega', 0, '0000-00-00 00:00:00', '2020-10-12 20:43:25'),
(98, 'Priscela perez', '(317) 288-2488', 'San fernando calle 22A N 80A 8 entrando por el instituto nuevo paraiso', 0, '0000-00-00 00:00:00', '2020-10-12 20:44:36'),
(99, 'Ana Puello', '(304) 676-0018', 'Blas de lezo mz x lote 18 etapa 2 frente al colegio luis carlos lopez', 0, '0000-00-00 00:00:00', '2020-10-12 20:46:10'),
(100, 'Diosa Vlancys', '(317) 853-6354', 'Carmelo calle 19 mz 30 lote 2 1 cuadra antes del poste rojo', 0, '0000-00-00 00:00:00', '2020-10-12 20:48:06'),
(101, 'Carlos del Rio', '(301) 389-7089', 'urb el zapote la casa en el arbol Turbaco', 0, '0000-00-00 00:00:00', '2020-10-12 20:49:30'),
(102, 'Brigite Garavito', '(301) 412-9260', 'Escallonvilla al lado del Ara en toda la avenida', 0, '0000-00-00 00:00:00', '2020-10-12 20:50:27'),
(103, 'Daniel', '(315) 829-6960', 'bosque escuela naval de cadetes almirante padilla bosque manzanillo', 0, '0000-00-00 00:00:00', '2020-10-12 20:52:31'),
(104, 'Yoafer Torres', '(300) 291-6646', 'Urb Horizonte Mz2 lote 94 etapa 3', 0, '0000-00-00 00:00:00', '2020-10-12 20:54:38'),
(105, 'Sori Luz', '(315) 801-4537', 'nosque de la ceiba mz 10 lote 690 entrando por el abasto el punto', 0, '0000-00-00 00:00:00', '2020-10-12 20:56:22'),
(106, 'Amanda Matos', '(323) 233-0739', 'Republcia de venezuela Mz19 lote 5 casa de 3 pisos entrando por el megatiendas de olaya ', 0, '0000-00-00 00:00:00', '2020-10-12 21:08:29'),
(107, 'Leonardo Rios', '(301) 501-5003', 'Escallonvilla calle pedro abran bries donde arman los mercaditos', 0, '0000-00-00 00:00:00', '2020-10-12 21:10:00'),
(108, 'Rafael', '(320) 901-6599', 'San isidro Hotel Acasas hab 17 cerca parqueadero', 0, '0000-00-00 00:00:00', '2020-10-12 21:11:08'),
(109, 'Jesus David', '(301) 623-1944', 'C26B 26 D 50 Piedra de bolivar sector junin entrando por la drogueria express', 0, '0000-00-00 00:00:00', '2020-10-12 21:12:39'),
(110, 'Karen Lugo', '(322) 652-3009', 'Panema torre 3 apto 809 Condonimio que esta despues del motel indiana', 0, '0000-00-00 00:00:00', '2020-10-12 21:16:47'),
(111, 'Elkin Gomez', '(300) 500-2166', 'recreo calle 31e 80 b 56 calle colegio integral del norte', 0, '0000-00-00 00:00:00', '2020-10-12 21:19:00'),
(112, 'Ronald', '(321) 538-6253', 'Altos del campestre mz 8 lote 5', 0, '0000-00-00 00:00:00', '2020-10-12 21:20:04'),
(113, 'Camila Orozco', '(304) 484-9071', 'Corales los 2 postes pegadospenultima casa a mano derecha', 0, '0000-00-00 00:00:00', '2020-10-12 21:23:07'),
(114, 'Catalina Aron', '(301) 446-7205', 'Recreo calle 2 N 31A 23 entrando mundo mujer', 0, '0000-00-00 00:00:00', '2020-10-12 21:24:17'),
(115, 'Maria Garcia', '(312) 676-7490', 'Mz F lote 18 por la cancha', 0, '0000-00-00 00:00:00', '2020-10-12 21:25:29'),
(116, 'Yina Baldomino', '(300) 815-8083', 'Recreo Atlanty Apt 401 N2', 0, '0000-00-00 00:00:00', '2020-10-12 21:26:50'),
(117, 'Maria Dominguez', '(301) 402-6237', 'Portales san fernando 1 Torre 1 apto 103', 0, '0000-00-00 00:00:00', '2020-10-12 21:27:59'),
(118, 'Fernando', '(301) 274-9957', 'Fire villa concha N19 2 piso', 0, '0000-00-00 00:00:00', '2020-10-12 21:29:15'),
(119, 'Juan Escalante', '(301) 391-2317', 'Hotel altamar habitacion 214 ', 0, '0000-00-00 00:00:00', '2020-10-12 21:30:41'),
(120, 'Sherly Rodrigez', '(301) 626-9152', 'Calamares m28 lote9 2 etapa tiena la rebaja ', 0, '0000-00-00 00:00:00', '2020-10-12 21:32:51'),
(121, 'Alejandra Carmona', '(317) 380-0652', 'Santa Monica Cra 30A N78 33 Entrando por el casino del sao', 0, '0000-00-00 00:00:00', '2020-10-12 21:34:55'),
(122, 'Ever Gomez', '(320) 534-9420', 'Villa Grande 2 Mz22 lote 22 3cuadra de drogas la economia', 0, '0000-00-00 00:00:00', '2020-10-12 21:35:57'),
(123, 'Cristian Ortiz', '(310) 647-1210', 'Urb alto juan pedro martin mB Lote 16 ', 0, '0000-00-00 00:00:00', '2020-10-12 21:37:48'),
(124, 'Angel Ragero', '(315) 748-5992', 'Los Alpes calle 41G n 71E 48 2 calle despues de la iglesia ', 0, '0000-00-00 00:00:00', '2020-10-12 21:40:12'),
(125, 'Mari Vergara', '(312) 619-5039', 'Parque heredia Caracoli torre 8 apto 604', 0, '0000-00-00 00:00:00', '2020-10-12 21:41:46'),
(126, 'Mercedes ', '(300) 441-3106', 'Puerta alpes m E Lote 7 entrando por 13 de junio', 0, '0000-00-00 00:00:00', '2020-10-12 21:43:09'),
(127, 'Maria Ordoñez', '(302) 370-8277', 'Villa Grande 1 mz f lote 15 frente la iglesia de villa grande', 0, '0000-00-00 00:00:00', '2020-10-12 21:45:59'),
(128, 'Olivero', '(313) 282-1943', 'los corales apartamento militares bosque c2 diagonal a la tienda refugio marino', 0, '0000-00-00 00:00:00', '2020-10-12 21:47:29'),
(129, 'Oscar Martinez', '(300) 250-7302', 'P. residencial el country mz M lote 10 Apto 201 ', 0, '0000-00-00 00:00:00', '2020-10-12 21:48:46'),
(130, 'Emanuel Padilla ', '(301) 321-3986', 'Alameda Victoria al lado de iglesia catolica m CP lote 5', 0, '0000-00-00 00:00:00', '2020-10-12 21:50:29'),
(131, 'Everlioli', '(312) 695-1599', 'villa grande 2 mz 9 lote 1 frente al parque', 0, '0000-00-00 00:00:00', '2020-10-12 21:52:00'),
(132, 'Yuri Martinez', '(300) 221-5623', 'villa grande m10 lote 13 2 calle ferreteria', 0, '0000-00-00 00:00:00', '2020-10-12 21:52:47'),
(133, 'Jemis Miranda', '(300) 704-7687', 'Socorro Plan 500A mz 22 lote 8 2 piso ', 0, '0000-00-00 00:00:00', '2020-10-12 21:55:17'),
(134, 'Domingo Gomez', '(300) 426-9501', 'los alpes calle 31 f transversal 71 B 540 tienda las 5 esquinas la calle de atras ', 0, '0000-00-00 00:00:00', '2020-10-12 21:56:14'),
(135, 'Juan De Dios', '(035) 649-9268', 'Santa Monica calle 30 n 77 18 por el banco popular', 0, '0000-00-00 00:00:00', '2020-10-12 21:57:24'),
(136, 'Juan Guillermo', '(312) 292-3963', 'Carmelo calle 16 m D lote 22 al frente de la drogueria la rebaja.', 0, '0000-00-00 00:00:00', '2020-10-12 21:58:27'),
(137, 'Jose Luis Blanco', '(322) 632-7302', 'Alpes Trav 63 31 D 38 frente a la cancha de futbol', 0, '0000-00-00 00:00:00', '2020-10-12 21:59:40'),
(138, 'Henry', '(300) 655-4589', 'San Fernando cra 81 N 22 D 183 balcones de alameda bloque 3 Ap 1B', 0, '0000-00-00 00:00:00', '2020-10-12 22:00:49'),
(139, 'Maritrinis', '(300) 644-7429', 'Alameda la victoria lavaderia elite en la calle de la entrada vehicular de neos alameda', 0, '0000-00-00 00:00:00', '2020-10-12 22:02:41'),
(140, 'Andrea Puello', '(304) 620-8831', 'Torre princesa 404 frente al motel santaros', 0, '0000-00-00 00:00:00', '2020-10-12 22:09:37'),
(141, 'Dayana Salinas', '(302) 408-7942', 'San fernando urb villas del cielo mz 08 lote 44 despues de la iglesia Don Juan', 0, '0000-00-00 00:00:00', '2020-10-12 22:11:14'),
(142, 'Olfer Bustamante ', '(315) 715-4609', 'San Jose de los campanos carrera 100B N 39 C 11', 0, '0000-00-00 00:00:00', '2020-10-12 22:12:24'),
(143, 'Dina Sequeda', '(301) 635-4803', 'San Fernando Cra 81 N 15 68 Frente al estadio Ider', 0, '0000-00-00 00:00:00', '2020-10-12 22:14:06'),
(144, 'Jhony', '(302) 286-9708', 'villa andrea mz C lote 15 ', 0, '0000-00-00 00:00:00', '2020-10-12 22:15:32'),
(145, 'Manuel Pomares ', '(316) 311-9602', 'San Jose Condominio Alejandria ap i 102', 0, '0000-00-00 00:00:00', '2020-10-12 22:16:43'),
(146, 'Luz Meri', '(035) 652-5463', 'Por la terminal de transporte Hotel San Sebastian real', 0, '0000-00-00 00:00:00', '2020-10-12 22:17:51'),
(147, 'Rosario Martinez', '(300) 654-2850', 'La princesa mz10 lote 15 ', 0, '0000-00-00 00:00:00', '2020-10-12 22:19:07'),
(148, 'Isamael Martinez', '(312) 833-2115', 'Rodeo mz 10 lote 6 primera etapa 7 calles despues por la segunda tienda', 0, '0000-00-00 00:00:00', '2020-10-12 22:20:10'),
(149, 'Humberto', '(312) 744-7222', 'San Fernando Parte de atras del colegio mercedes Abrego en la tienda 3D', 0, '0000-00-00 00:00:00', '2020-10-12 22:22:59'),
(150, 'Marisol', '(300) 493-6167', 'Calamari T5 Apto 902', 0, '0000-00-00 00:00:00', '2020-10-12 22:23:40'),
(151, 'Liliana Escudero', '(300) 348-9365', 'San Fernando calle las americas N 13 58 entrando por drogas las rebajas y supergiros ', 0, '0000-00-00 00:00:00', '2020-10-12 22:24:53'),
(152, 'Yorselis', '(311) 414-8560', 'Socorro plan 282 M 58 lote 6 Por la tienda nueva', 0, '0000-00-00 00:00:00', '2020-10-12 22:25:47'),
(153, 'Vilma Barrios', '(300) 236-3196', 'Parque heredia salamandra torre 2 apto 901', 0, '0000-00-00 00:00:00', '2020-10-12 22:27:08'),
(154, 'Julis', '(312) 706-3182', 'Campestre mz 77 lote 25 etapa 8', 0, '0000-00-00 00:00:00', '2020-10-12 22:28:26'),
(155, 'Jeffry', '(314) 676-0241', 'Carolina calle 11 mz a lote 43  frente una variedad a media calle', 0, '0000-00-00 00:00:00', '2020-10-12 22:35:08'),
(157, 'Laura Padilla', '(301) 766-0994', 'Alpes parque residencial A 2 ', 0, '0000-00-00 00:00:00', '2020-10-12 22:37:25'),
(158, 'Luis Torres', '(300) 833-7269', 'Recreo Abetos Entrando por el York casa de la esquina ', 0, '0000-00-00 00:00:00', '2020-10-12 22:38:08'),
(159, 'Zulai Rodriguez', '(301) 264-4888', 'Villa Grande 2 Por la bomba mz 30 lote 31', 0, '0000-00-00 00:00:00', '2020-10-12 22:39:41'),
(160, 'Arsides Bello', '(313) 559-8883', 'Los alpes puerta de mz C lote 19 Al lado de la avenida panaderia', 0, '0000-00-00 00:00:00', '2020-10-12 22:40:52'),
(161, 'Ricardo Blanco', '(304) 679-2766', 'Consolata Mz B lote 4 Primera calle Entrando por supertienda de la costa', 0, '0000-00-00 00:00:00', '2020-10-12 22:41:59'),
(162, 'Eryck Joseph', '(318) 441-3403', 'Concepcion cra 2ds N 1 166 Ed portal de la concepcion ap 4B', 0, '0000-00-00 00:00:00', '2020-10-12 22:43:24'),
(163, 'Eli Chavez', '(302) 276-7809', 'Parque Heredia Manati Torre 3 apto 503', 0, '0000-00-00 00:00:00', '2020-10-12 22:44:47'),
(164, 'Luz Dary ', '(302) 255-1413', 'Consolata Mz B Lote 7 Entrando por la tienda la costa', 0, '0000-00-00 00:00:00', '2020-10-12 22:57:32'),
(165, 'Diana', '(302) 336-0709', 'Calamares mz 30 lote 14 Etapa 1 iglesia los calamares', 0, '0000-00-00 00:00:00', '2020-10-12 23:02:18'),
(166, 'Giraly', '(313) 209-4149', 'Carmelo Calle Cadis mz J lote 3 frente iglesia carmelo', 0, '0000-00-00 00:00:00', '2020-10-12 23:04:15'),
(167, 'Eyleen Torres', '(318) 347-2030', 'San Fernando Sector la florida Calle 14 N 80c39', 0, '0000-00-00 00:00:00', '2020-10-12 23:05:39'),
(168, 'Camila', '(313) 398-6134', 'Concepcion Balcones de atenea apto 202 frente al edificio la coruna', 0, '0000-00-00 00:00:00', '2020-10-12 23:07:16'),
(169, 'karen Vanessa', '(300) 805-5864', 'vistahermosa diag 29 N 57 17 Por la subida de las busetas de campestre', 0, '0000-00-00 00:00:00', '2020-10-12 23:11:14'),
(170, 'Stelly Mendoza', '(317) 708-6937', 'Caracoles mz 43 lote 1 etapa 1 Parque cabrera entrada de los caracoles', 0, '0000-00-00 00:00:00', '2020-10-12 23:12:36'),
(171, 'Luisa Fernanda', '(302) 318-3237', 'Ciudad Jardin Balcones del Jardin Torre 1 Ap 404 Por la carolina', 0, '0000-00-00 00:00:00', '2020-10-12 23:13:47'),
(172, 'Leydi Parra', '(313) 836-1455', 'Providencia Diag 34 n 79A 12 2 cuadras despues de la tienda el seba', 0, '0000-00-00 00:00:00', '2020-10-12 23:14:46'),
(173, 'Dany Castellon', '(300) 790-5507', 'Zaragocilla cra 30 F n 69 21 Frente al colegio de confenalco', 0, '0000-00-00 00:00:00', '2020-10-12 23:18:00'),
(174, 'Jefferson', '(300) 464-2609', 'Escallonvilla calle cristobal colon N 30H 5424 es toda la parte de la bomba', 0, '0000-00-00 00:00:00', '2020-10-12 23:19:18'),
(175, 'Brillit', '(301) 412-9260', 'Escallonvilla al lado del ara casa 3 piso', 0, '0000-00-00 00:00:00', '2020-10-12 23:21:33'),
(176, 'Fabio', '(315) 480-6408', 'Conjunto Verona Torre 5 Ap 717', 0, '0000-00-00 00:00:00', '2020-10-12 23:27:45'),
(177, 'Elina Alvarez', '(300) 851-9888', 'Trav 73 N 31 L 140 los Alpes torres de los alpes apt 202 torre 11', 0, '0000-00-00 00:00:00', '2020-10-12 23:33:55'),
(178, 'Deisy Peñate', '(300) 537-4171', 'San Fernando Calle la victoria 81A 12 2piso Apto 2 entrando por la drogeria la economia', 0, '0000-00-00 00:00:00', '2020-10-12 23:39:48'),
(179, 'Andres Castro', '(300) 278-3836', 'Recreo 31 h 80D 64 ', 0, '0000-00-00 00:00:00', '2020-10-12 23:45:34'),
(180, 'Margarita Villareal', '(300) 887-1906', 'Parque heredia Yinger Torre 5 Apto 404', 0, '0000-00-00 00:00:00', '2020-10-12 23:46:41'),
(181, 'Cristian Franco', '(301) 364-0374', 'Socorro Mz 41 lote 1 plan 250 entrando por el frende de torres la victoria', 0, '0000-00-00 00:00:00', '2020-10-12 23:47:49'),
(182, 'Diana Carolina', '(314) 646-7866', 'Chiquinquira mz 53 lote 6 antes de la iglesia bajando por el cai de los ejecituvos', 0, '0000-00-00 00:00:00', '2020-10-12 23:48:38'),
(183, 'Wilfer Acosta ', '(314) 314-3897', 'Recreo Parque ciudad Sevilla m D lote 7 ', 0, '0000-00-00 00:00:00', '2020-10-12 23:54:07'),
(184, 'Leidy Henriquez', '(300) 800-3020', 'Alameda del jardin torre 9 apto 167', 0, '0000-00-00 00:00:00', '2020-10-12 23:57:06'),
(185, 'Laura Coba Coneo', '(300) 472-2969', 'Urb la princesa mz 21 lote 10 despues de ka tienda mari sol tres cuadras despues', 0, '0000-00-00 00:00:00', '2020-10-12 23:58:26'),
(186, 'Mari Henriquez', '(301) 236-4455', 'Calle 4 mz I lote 6 la calle del delipostres y drogueria economia la carolina', 0, '0000-00-00 00:00:00', '2020-10-12 23:59:49'),
(187, 'Edwin Diaz', '(318) 460-3273', 'Urb la princesa mz 17 lote 2 al lado de gimnasio calderon ', 0, '0000-00-00 00:00:00', '2020-10-13 00:05:22'),
(188, 'Maria Camila Mendoza', '(301) 412-0121', 'Villa Sol Mz N lote Y la casa de al lado ', 0, '0000-00-00 00:00:00', '2020-10-13 00:11:47'),
(189, 'Mario Aguilera', '(300) 846-6917', 'Parque Heredia Manaty T1 Apt 404', 0, '0000-00-00 00:00:00', '2020-10-13 00:13:55'),
(190, 'Denis Osorio', '(301) 380-4963', 'Recreo al lado de la tienda pato donald la primera casa que estan iguales', 0, '0000-00-00 00:00:00', '2020-10-13 00:14:47'),
(191, 'Yiseth Morales', '(300) 268-5721', 'Zaragosilla sector el progreso calle 11 de noviembre carrera 55 24a7 apto 101 ', 0, '0000-00-00 00:00:00', '2020-10-13 00:17:02'),
(192, 'Jhon Navas', '(304) 670-5996', 'La maria sector los corales por el supergiros la antigua gallera de la esquina', 0, '0000-00-00 00:00:00', '2020-10-13 00:19:22'),
(193, 'Nestor Angulo', '(300) 646-2486', 'Urb Villas de la mar Mz g Lote 7 apto 201 San fernando ', 0, '0000-00-00 00:00:00', '2020-10-13 00:23:05'),
(194, 'Andres Felipe ', '(310) 820-2697', 'Los abetos mz D lote 14 Primer piso', 0, '0000-00-00 00:00:00', '2020-10-13 00:28:00'),
(195, 'Santiago Suarez', '(319) 407-3130', 'Torices calle santa fe N 16 68 Una cuadra despues del ara de paseo bolivar', 0, '0000-00-00 00:00:00', '2020-10-13 00:29:15'),
(196, 'Yojai Castellon', '(301) 433-8193', 'Mirador de nuevo bosque mz 3 lote 27 por la tienda el companero de lucha', 0, '0000-00-00 00:00:00', '2020-10-13 00:33:24'),
(197, 'Maryelis Amaranto', '(315) 682-0803', 'Urb villas de la candelaria mz 34 lote 2 entrando por la olimpica', 0, '0000-00-00 00:00:00', '2020-10-13 00:36:17'),
(198, 'Paula Betancur ', '(322) 307-8866', 'ternera calle real N 85 110 conjunto olgamar', 0, '0000-00-00 00:00:00', '2020-10-13 00:37:57'),
(199, 'Melissa Perez', '(300) 835-5498', 'Providencia cr 78 N 34 40 por la tienda el sebas una calle mas abajo', 0, '0000-00-00 00:00:00', '2020-10-13 00:41:25'),
(200, 'Jazmin Gonzales', '(319) 258-8001', 'Blas de lezo frente al edificio del chawala mz B lote 23 etapa 2', 0, '0000-00-00 00:00:00', '2020-10-13 00:43:34'),
(201, 'Wilfrido Reyes ', '(321) 588-6753', 'Zaragocilla Cra 30 f N 50 21 por la entrada del preescolar de confenalco', 0, '0000-00-00 00:00:00', '2020-10-13 00:45:47'),
(202, 'Nironel Marquez', '(316) 851-5253', 'Simon Bolivar mz 21 lote 23 por el mercadito la 16 ', 0, '0000-00-00 00:00:00', '2020-10-13 00:48:44'),
(203, 'Adili Herrera', '(314) 563-1422', 'Altos de jardines mz A lote 8 ', 0, '0000-00-00 00:00:00', '2020-10-13 00:50:04'),
(204, 'Jesus Bohorguez', '(316) 537-1842', 'Verona Apto 602 Torre 1', 0, '0000-00-00 00:00:00', '2020-10-13 00:51:14'),
(205, 'Yeiman merlano', '(301) 595-1818', 'Socorro mz 109 lote 6 tiernda la vivienda Diagonal a la peluqueria', 0, '0000-00-00 00:00:00', '2020-10-13 00:53:05'),
(206, 'Eduardo Polo', '(312) 681-9706', 'San Jose de los campanos Llamar cuando esten en la olimpoca', 0, '0000-00-00 00:00:00', '2020-10-13 00:54:10'),
(207, 'Laura Sofia Sanchez', '(322) 693-7442', 'Pozon mz 39 lote 1 antes de la tienda la estacion', 0, '0000-00-00 00:00:00', '2020-10-13 00:55:16'),
(208, 'Balan', '(300) 125-4222', 'Local', 0, '0000-00-00 00:00:00', '2020-12-04 22:15:24'),
(210, 'Mesa 1', '(000) 000-0000', 'Mesa #1', 0, '0000-00-00 00:00:00', '2020-12-04 23:16:47'),
(211, 'Mesa 2', '(000) 000-0000', 'Mesa #2', 0, '0000-00-00 00:00:00', '2020-12-04 22:57:38'),
(212, 'Mesa 3', '(000) 000-0000', 'Mesa #3', 0, '0000-00-00 00:00:00', '2020-12-04 22:57:58'),
(213, 'Mesa 4', '(000) 000-0000', 'Mesa #4', 0, '0000-00-00 00:00:00', '2020-12-04 22:58:18'),
(214, 'Mesa 5', '(000) 000-0000', 'Mesa #5', 0, '0000-00-00 00:00:00', '2020-12-04 22:59:08'),
(215, 'Mesa 6', '(000) 000-0000', 'Mesa #6', 0, '0000-00-00 00:00:00', '2020-12-04 22:59:35'),
(216, 'Mesa 7', '(000) 000-0000', 'Mesa #7', 0, '0000-00-00 00:00:00', '2020-12-04 23:00:07'),
(217, 'Mesa 8', '(000) 000-0000', 'Mesa #8', 0, '0000-00-00 00:00:00', '2020-12-04 23:00:35'),
(218, 'Factures Sas ', '(315) 966-2390', 'Alameda mz U Lt 13', 1, '2020-12-12 15:59:03', '2020-12-12 20:59:03'),
(219, 'Diana Arnedo', '(304) 293-3450', 'Clinica del bosque antiguo san juan de dios cunsulta externa', 2, '2020-12-15 11:13:47', '2020-12-15 16:13:47'),
(220, 'Erica Florez', '(300) 304-7609', 'Ternera entrando por la calle de la funeraria la paz protical', 1, '2020-12-15 11:16:09', '2020-12-15 16:16:09'),
(221, 'harold escobar ', '(319) 577-6045', 'Parque heredia candil torre 2 apto 402', 1, '2020-12-15 11:20:19', '2020-12-15 16:20:19'),
(222, 'Carlos Vallejo', '(300) 749-4125', 'San Fernando Urbanizacion Villa de la Mar Mz E Lote 2 entrando por la drogueria Villa de la Mar la calle en frente de la tienda Codazzi', 1, '2020-12-15 11:28:41', '2020-12-15 16:28:41'),
(223, 'Cristian anillo', '(301) 622-0332', 'Parque heredia edificio calamari torre 4 apt 102', 2, '2020-12-15 11:34:21', '2020-12-15 16:34:21'),
(224, 'Luis angel', '(318) 681-5011', 'Socorro  plan 250 m42 lote 14 calle bajando el cementerio', 2, '2020-12-15 12:11:53', '2020-12-15 17:11:53'),
(225, 'Sindy hiriarte', '(304) 521-9512', 'Pasan por el', 1, '2020-12-15 12:16:32', '2020-12-15 17:16:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `codigo` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `ventas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `codigo`, `descripcion`, `imagen`, `stock`, `precio_compra`, `precio_venta`, `ventas`, `fecha`) VALUES
(61, 1, '1001', 'Arroz Bacano Personal', 'vistas/img/productos/default/anonymous.png', 997, 12000, 12000, 3, '2020-12-15 17:11:53'),
(62, 1, '1002', 'Arroz Bacano 2 Personas', 'vistas/img/productos/default/anonymous.png', 999, 18000, 18000, 1, '2020-09-11 21:21:58'),
(63, 1, '1003', 'Arroz Bacano 4 Personas', 'vistas/img/productos/default/anonymous.png', 1000, 26000, 26000, 0, '2020-08-09 22:18:11'),
(64, 1, '1004', 'Arroz Bacano 6 Personas', 'vistas/img/productos/default/anonymous.png', 1000, 34000, 34000, 0, '2020-08-09 22:19:10'),
(65, 1, '1005', 'Arroz Bacano 10 Personas', 'vistas/img/productos/default/anonymous.png', 1000, 41000, 41000, 0, '2020-08-09 22:19:56'),
(66, 1, '1006', 'Arroz Paisa Personal', 'vistas/img/productos/default/anonymous.png', 999, 11000, 11000, 1, '2020-12-04 22:15:18'),
(67, 1, '1007', 'Arroz Paisa 2 Personas', 'vistas/img/productos/default/anonymous.png', 1000, 17000, 17000, 0, '2020-08-09 22:21:54'),
(68, 1, '1008', 'Arroz Paisa 4 Personas', 'vistas/img/productos/default/anonymous.png', 1000, 26000, 26000, 0, '2020-08-09 22:22:40'),
(69, 1, '1009', 'Arroz Paisa 6 Personas', 'vistas/img/productos/default/anonymous.png', 1000, 33000, 33000, 0, '2020-08-09 22:23:26'),
(70, 1, '1010', 'Arroz Paisa 10 Personas', 'vistas/img/productos/default/anonymous.png', 1000, 40000, 40000, 0, '2020-08-09 22:24:02'),
(71, 1, '1011', 'Arroz Chino Personal', 'vistas/img/productos/default/anonymous.png', 998, 8000, 8000, 2, '2020-12-15 16:28:41'),
(72, 1, '1012', 'Arroz Chino 2 Personas', 'vistas/img/productos/default/anonymous.png', 999, 14000, 14000, 1, '2020-12-12 20:59:03'),
(73, 1, '1013', 'Arroz Chino 4 Personas', 'vistas/img/productos/default/anonymous.png', 1000, 22000, 22000, 0, '2020-08-10 00:19:42'),
(74, 1, '1014', 'Arroz Chino 6 Personas', 'vistas/img/productos/default/anonymous.png', 999, 27000, 27000, 1, '2020-09-22 22:07:37'),
(75, 1, '1015', 'Arroz Chino 10 Personas', 'vistas/img/productos/default/anonymous.png', 1000, 32000, 32000, 0, '2020-08-10 00:21:01'),
(76, 1, '1016', 'Arroz Ranchero Personal', 'vistas/img/productos/default/anonymous.png', 1000, 8000, 8000, 0, '2020-08-10 00:24:20'),
(77, 1, '1017', 'Arroz Ranchero 2 Personas', 'vistas/img/productos/default/anonymous.png', 1000, 15000, 15000, 0, '2020-08-10 00:25:17'),
(78, 1, '1018', 'Arroz Ranchero 4 Personas', 'vistas/img/productos/default/anonymous.png', 1000, 23000, 23000, 0, '2020-08-10 00:26:12'),
(79, 1, '1019', 'Arroz Ranchero 6 Personas', 'vistas/img/productos/default/anonymous.png', 1000, 28000, 28000, 0, '2020-08-10 00:26:58'),
(80, 1, '1020', 'Arroz Ranchero 10 Personas', 'vistas/img/productos/default/anonymous.png', 1000, 33000, 33000, 0, '2020-08-10 00:27:42'),
(81, 1, '1021', 'Arroz Mexicano Personal', 'vistas/img/productos/default/anonymous.png', 1000, 8000, 8000, 0, '2020-08-10 00:29:45'),
(82, 1, '1022', 'Arroz Mexicano 2 Personas', 'vistas/img/productos/default/anonymous.png', 1000, 16000, 16000, 0, '2020-12-04 22:15:18'),
(83, 1, '1023', 'Arroz Mexicano 4 Personas', 'vistas/img/productos/default/anonymous.png', 1000, 24000, 24000, 0, '2020-08-10 00:31:07'),
(84, 1, '1024', 'Arroz Mexicano 6 Personas', 'vistas/img/productos/default/anonymous.png', 1000, 28000, 28000, 0, '2020-08-10 00:31:49'),
(85, 1, '1025', 'Arroz Mexicano 10 Personas', 'vistas/img/productos/default/anonymous.png', 1000, 34000, 34000, 0, '2020-08-10 00:32:30'),
(86, 1, '1026', 'Shop Suey Personal', 'vistas/img/productos/default/anonymous.png', 1000, 13000, 13000, 0, '2020-08-10 00:33:53'),
(87, 1, '1027', 'Shop Suey Mediano', 'vistas/img/productos/default/anonymous.png', 999, 22000, 22000, 1, '2020-09-07 20:50:42'),
(88, 1, '1028', 'Shop Suey Grande', 'vistas/img/productos/default/anonymous.png', 1000, 28000, 28000, 0, '2020-08-10 00:35:05'),
(89, 1, '1029', 'Ejecutivo 1', 'vistas/img/productos/default/anonymous.png', 1000, 11000, 11000, 0, '2020-08-10 00:36:28'),
(90, 1, '1030', 'Ejecutivo 2', 'vistas/img/productos/default/anonymous.png', 999, 10000, 10000, 1, '2020-12-15 16:13:47'),
(91, 2, '1031', 'Gaseosa 1 5 L', 'vistas/img/productos/default/anonymous.png', 1000, 4500, 4500, 0, '2020-12-04 22:15:21'),
(92, 2, '1032', 'Gaseosa P 400 ML', 'vistas/img/productos/default/anonymous.png', 1000, 2000, 2000, 0, '2020-12-04 22:54:57'),
(93, 2, '1033', 'Jugos Naturales', 'vistas/img/productos/default/anonymous.png', 1000, 2000, 2000, 0, '2020-08-10 00:51:10'),
(94, 2, '1034', 'Jugo Hit P 500 ML', 'vistas/img/productos/default/anonymous.png', 999, 2500, 2500, 0, '2020-09-11 21:37:54'),
(95, 2, '1035', 'Agua Embotellada', 'vistas/img/productos/default/anonymous.png', 1000, 2000, 2000, 0, '2020-08-10 00:52:05'),
(96, 2, '1036', 'TE Helado', 'vistas/img/productos/default/anonymous.png', 999, 2500, 2500, 1, '2020-09-11 22:03:52'),
(97, 2, '1037', 'Cerveza en Lata', 'vistas/img/productos/default/anonymous.png', 999, 3500, 3500, 0, '2020-12-04 23:12:53'),
(98, 9, '1038', 'Chuleta Valluna 2 Personas', 'vistas/img/productos/default/anonymous.png', 1000, 10000, 10000, 0, '2020-08-10 01:01:06'),
(99, 9, '1039', 'Chuleta Valluna 4 Personas', 'vistas/img/productos/default/anonymous.png', 1000, 17000, 17000, 0, '2020-08-10 01:01:20'),
(100, 9, '1040', 'Chuleton BBQ 2 Personas', 'vistas/img/productos/default/anonymous.png', 1000, 13000, 13000, 0, '2020-08-10 01:02:31'),
(101, 9, '1041', 'Chuleton BBQ 4 Personas', 'vistas/img/productos/default/anonymous.png', 1000, 20000, 20000, 0, '2020-08-10 01:03:18'),
(102, 10, '1042', 'Costillas BBQ 2 Personas', 'vistas/img/productos/default/anonymous.png', 1000, 15000, 15000, 0, '2020-08-10 01:04:45'),
(103, 10, '1043', 'Costillas BBQ 4 Personas', 'vistas/img/productos/default/anonymous.png', 1000, 22000, 22000, 0, '2020-08-10 01:05:24'),
(104, 11, '1044', 'Crema de Camaron', 'vistas/img/productos/default/anonymous.png', 1000, 15000, 15000, 0, '2020-08-10 01:07:22'),
(105, 11, '1045', 'Crema de Pollo', 'vistas/img/productos/default/anonymous.png', 1000, 12000, 12000, 0, '2020-08-10 01:17:18'),
(106, 12, '1046', 'Pollo Fricase 1 4', 'vistas/img/productos/default/anonymous.png', 1000, 15000, 15000, 0, '2020-08-10 01:19:31'),
(107, 12, '1047', 'Pollo Fricase 1 2', 'vistas/img/productos/default/anonymous.png', 1000, 22000, 22000, 0, '2020-08-10 01:20:13'),
(108, 12, '1048', 'Pollo Fricase 1', 'vistas/img/productos/default/anonymous.png', 999, 28000, 28000, 1, '2020-09-11 22:07:19'),
(109, 13, '1049', 'Espaguetis Mixtos Personal', 'vistas/img/productos/default/anonymous.png', 1000, 13000, 13000, 0, '2020-08-10 01:22:31'),
(110, 13, '1050', 'Espaguetis Mixtos Mediano', 'vistas/img/productos/default/anonymous.png', 1000, 22000, 22000, 0, '2020-08-10 01:23:19'),
(111, 13, '1051', 'Espaguetis Mixtos Grande', 'vistas/img/productos/default/anonymous.png', 1000, 30000, 30000, 0, '2020-08-10 01:24:10'),
(112, 13, '1052', 'Espaguetis Bacano Personal', 'vistas/img/productos/default/anonymous.png', 995, 15000, 15000, 6, '2020-12-15 16:20:19'),
(113, 13, '1053', 'Espaguetis Bacano Mediano', 'vistas/img/productos/default/anonymous.png', 1000, 25000, 25000, 0, '2020-08-10 01:35:17'),
(114, 13, '1054', 'Espaguetis Bacano Grande', 'vistas/img/productos/default/anonymous.png', 1000, 33000, 33000, 0, '2020-08-10 01:35:56'),
(115, 13, '1055', 'Espaguetis con Verduras Personal', 'vistas/img/productos/default/anonymous.png', 999, 15000, 15000, 1, '2020-09-11 22:07:19'),
(116, 13, '1056', 'Espaguetis con Verduras Mediano', 'vistas/img/productos/default/anonymous.png', 1000, 25000, 25000, 0, '2020-08-10 01:37:33'),
(117, 13, '1057', 'Espaguetis con Verduras Grande', 'vistas/img/productos/default/anonymous.png', 1000, 33000, 33000, 0, '2020-08-10 01:38:13'),
(118, 12, '1058', 'Pollo Frito 2 Presas', 'vistas/img/productos/default/anonymous.png', 1000, 8000, 8000, 0, '2020-08-10 01:39:12'),
(119, 12, '1059', 'Pollo Frito 4 Presas', 'vistas/img/productos/default/anonymous.png', 998, 14000, 14000, 2, '2020-09-11 22:05:21'),
(120, 12, '1060', 'Pollo Frito 6 Presas', 'vistas/img/productos/default/anonymous.png', 998, 21000, 21000, 2, '2020-09-11 21:56:38'),
(121, 12, '1061', 'Pollo Frito 8 Presas', 'vistas/img/productos/default/anonymous.png', 1000, 25000, 25000, 0, '2020-08-10 01:41:16'),
(122, 12, '1062', 'Pollo Frito 10 Presas', 'vistas/img/productos/default/anonymous.png', 999, 28000, 28000, 1, '2020-09-07 20:10:50'),
(123, 8, '1063', 'Sopas del Dia', 'vistas/img/productos/default/anonymous.png', 994, 5000, 5000, 6, '2020-12-15 16:34:21'),
(124, 8, '1064', 'Sopas de Mondongo', 'vistas/img/productos/default/anonymous.png', 999, 5000, 5000, 1, '2020-09-22 21:41:07'),
(125, 14, '1065', 'Chino Chuleton', 'vistas/img/productos/default/anonymous.png', 1000, 10000, 10000, 0, '2020-09-22 21:50:45'),
(126, 14, '1066', 'Chino Costilla', 'vistas/img/productos/default/anonymous.png', 1000, 10000, 10000, 0, '2020-09-22 21:51:13'),
(127, 14, '1067', 'Chino Valluna', 'vistas/img/productos/default/anonymous.png', 1000, 10000, 10000, 0, '2020-09-22 21:51:51'),
(128, 14, '1068', 'chino pollo', 'vistas/img/productos/default/anonymous.png', 999, 10000, 10000, 1, '2020-09-22 22:07:37'),
(129, 14, '1069', 'ranchero costilla', 'vistas/img/productos/default/anonymous.png', 1000, 10000, 10000, 0, '2020-09-22 21:53:18'),
(130, 14, '1070', 'ranchero chuleton ', 'vistas/img/productos/default/anonymous.png', 1000, 10000, 10000, 0, '2020-09-22 21:53:55'),
(131, 14, '1071', 'ranchero valluna ', 'vistas/img/productos/default/anonymous.png', 1000, 10000, 10000, 0, '2020-09-22 21:54:37'),
(132, 14, '1072', 'ranchero pollo', 'vistas/img/productos/default/anonymous.png', 1000, 10000, 10000, 0, '2020-09-22 21:55:08'),
(133, 14, '1073', 'Bacano costilla ', 'vistas/img/productos/default/anonymous.png', 1000, 11000, 11000, 0, '2020-09-22 21:56:23'),
(134, 14, '1074', 'Bacano chuleton', 'vistas/img/productos/default/anonymous.png', 1000, 11000, 11000, 0, '2020-09-22 21:57:14'),
(135, 14, '1075', 'Bacano valluna ', 'vistas/img/productos/default/anonymous.png', 1000, 11000, 11000, 0, '2020-09-22 21:57:49'),
(136, 14, '1076', 'Bacano pollo', 'vistas/img/productos/default/anonymous.png', 1000, 11000, 11000, 0, '2020-09-22 21:58:19'),
(137, 14, '1077', 'Paisa costilla ', 'vistas/img/productos/default/anonymous.png', 1000, 11000, 11000, 0, '2020-09-22 21:58:59'),
(138, 14, '1078', 'Paisa chuleton ', 'vistas/img/productos/default/anonymous.png', 1000, 11000, 11000, 0, '2020-09-22 21:59:33'),
(139, 14, '1079', 'Paisa valluna ', 'vistas/img/productos/default/anonymous.png', 1000, 11000, 11000, 0, '2020-09-22 22:00:02'),
(140, 14, '1080', 'Paisa pollo', 'vistas/img/productos/default/anonymous.png', 1000, 11000, 11000, 0, '2020-09-22 22:00:31'),
(141, 14, '1081', 'Mexicano costilla', 'vistas/img/productos/default/anonymous.png', 1000, 11000, 11000, 0, '2020-09-22 22:01:08'),
(142, 14, '1082', 'Mexicano chuleton ', 'vistas/img/productos/default/anonymous.png', 1000, 11000, 11000, 0, '2020-09-22 22:01:38'),
(143, 14, '1083', 'Mexicano valluna ', 'vistas/img/productos/default/anonymous.png', 1000, 11000, 11000, 0, '2020-09-22 22:02:12'),
(144, 14, '1084', 'Mexicano pollo', 'vistas/img/productos/default/anonymous.png', 1000, 11000, 11000, 0, '2020-09-22 22:02:37'),
(145, 15, '1085', 'Ranchero x2 chuleton', 'vistas/img/productos/default/anonymous.png', 1000, 22000, 22000, 0, '2020-09-23 23:21:23'),
(146, 15, '1086', 'Ranchero x4 chuleton', 'vistas/img/productos/default/anonymous.png', 1000, 36000, 36000, 0, '2020-09-23 23:23:24'),
(147, 15, '1087', 'Ranchero x6 chuleton', 'vistas/img/productos/default/anonymous.png', 1000, 45000, 45000, 0, '2020-09-23 23:24:12'),
(148, 15, '1088', 'Ranchero x10 chuleton', 'vistas/img/productos/default/anonymous.png', 1000, 63000, 63000, 0, '2020-09-23 23:25:04'),
(149, 15, '1089', 'Ranchero x2 Costilla', 'vistas/img/productos/default/anonymous.png', 1000, 24000, 24000, 0, '2020-09-23 23:25:50'),
(150, 15, '1090', 'Ranchero x4 Costilla', 'vistas/img/productos/default/anonymous.png', 1000, 38000, 38000, 0, '2020-09-23 23:26:55'),
(151, 15, '1091', 'Ranchero x4 Costilla', 'vistas/img/productos/default/anonymous.png', 1000, 47000, 47000, 0, '2020-09-23 23:27:21'),
(152, 15, '1092', 'Ranchero x10 Costilla', 'vistas/img/productos/default/anonymous.png', 1000, 65000, 65000, 0, '2020-09-23 23:27:55'),
(153, 15, '1093', 'Ranchero x2 Chuleta Valluna', 'vistas/img/productos/default/anonymous.png', 1000, 21000, 21000, 0, '2020-09-23 23:28:39'),
(154, 15, '1094', 'Ranchero x4 Chuleta Valluna', 'vistas/img/productos/default/anonymous.png', 1000, 34000, 34000, 0, '2020-09-23 23:29:10'),
(155, 15, '1095', 'Ranchero x6 Chuleta Valluna', 'vistas/img/productos/default/anonymous.png', 1000, 43000, 43000, 0, '2020-09-23 23:29:41'),
(156, 15, '1096', 'Ranchero x10 Chuleta Valluna', 'vistas/img/productos/default/anonymous.png', 1000, 61000, 61000, 0, '2020-09-23 23:30:09'),
(157, 15, '1097', 'Ranchero x2 Pollo', 'vistas/img/productos/default/anonymous.png', 1000, 20000, 20000, 0, '2020-09-23 23:31:37'),
(158, 15, '1098', 'Ranchero x4 Pollo', 'vistas/img/productos/default/anonymous.png', 1000, 32000, 32000, 0, '2020-09-23 23:32:24'),
(159, 15, '1099', 'Ranchero x6 Pollo', 'vistas/img/productos/default/anonymous.png', 1000, 40000, 40000, 0, '2020-09-23 23:33:11'),
(160, 15, '1100', 'Ranchero x10 Pollo', 'vistas/img/productos/default/anonymous.png', 1000, 60000, 60000, 0, '2020-09-23 23:34:00'),
(161, 15, '1101', 'Mexicano x2 Chuleton', 'vistas/img/productos/default/anonymous.png', 1000, 20000, 20000, 0, '2020-09-23 23:35:35'),
(162, 15, '1102', 'Mexicano x4 Chuleton', 'vistas/img/productos/default/anonymous.png', 1000, 35000, 35000, 0, '2020-09-23 23:36:06'),
(163, 15, '1103', 'Mexicano x6 Chuleton', 'vistas/img/productos/default/anonymous.png', 1000, 44000, 44000, 0, '2020-09-23 23:36:42'),
(164, 15, '1104', 'Mexicano x10 Chuleton', 'vistas/img/productos/default/anonymous.png', 1000, 60000, 60000, 0, '2020-09-23 23:37:04'),
(165, 15, '1105', 'Mexicano x2 Costilla', 'vistas/img/productos/default/anonymous.png', 1000, 22000, 22000, 0, '2020-09-23 23:39:18'),
(166, 15, '1106', 'Mexicano x4 Costilla', 'vistas/img/productos/default/anonymous.png', 1000, 37000, 37000, 0, '2020-09-23 23:39:48'),
(167, 15, '1107', 'Mexicano x6 Costilla', 'vistas/img/productos/default/anonymous.png', 1000, 46000, 46000, 0, '2020-09-23 23:40:16'),
(168, 15, '1108', 'Mexicano x10 Costilla', 'vistas/img/productos/default/anonymous.png', 1000, 62000, 62000, 0, '2020-09-23 23:40:38'),
(169, 15, '1109', 'Mexicano x2 Chuleta Valluna', 'vistas/img/productos/default/anonymous.png', 1000, 19000, 19000, 0, '2020-09-23 23:41:12'),
(170, 15, '1110', 'Mexicano x4 Chuleta Valluna', 'vistas/img/productos/default/anonymous.png', 1000, 34000, 34000, 0, '2020-09-23 23:41:47'),
(171, 15, '1111', 'Mexicano x6 Chuleta Valluna', 'vistas/img/productos/default/anonymous.png', 1000, 42000, 42000, 0, '2020-09-23 23:43:04'),
(172, 15, '1112', 'Mexicano x10 Chuleta Valluna', 'vistas/img/productos/default/anonymous.png', 1000, 58000, 58000, 0, '2020-09-23 23:43:38'),
(173, 15, '1113', 'Mexicano x2 Pollo', 'vistas/img/productos/default/anonymous.png', 1000, 18000, 18000, 0, '2020-09-23 23:50:26'),
(174, 15, '1114', 'Mexicano x4 Pollo', 'vistas/img/productos/default/anonymous.png', 1000, 30000, 30000, 0, '2020-09-23 23:50:50'),
(175, 15, '1115', 'Mexicano x6 Pollo', 'vistas/img/productos/default/anonymous.png', 1000, 41000, 41000, 0, '2020-09-23 23:51:18'),
(176, 15, '1116', 'Mexicano x10 Pollo', 'vistas/img/productos/default/anonymous.png', 1000, 57000, 57000, 0, '2020-09-23 23:51:41'),
(177, 15, '1117', 'Chino x2 Chuleton', 'vistas/img/productos/default/anonymous.png', 1000, 20000, 20000, 0, '2020-09-23 23:54:05'),
(178, 15, '1118', 'Chino x4 Chuleton', 'vistas/img/productos/default/anonymous.png', 1000, 33000, 33000, 0, '2020-09-23 23:54:49'),
(179, 15, '1119', 'Chino x6 Chuleton', 'vistas/img/productos/default/anonymous.png', 1000, 43000, 43000, 0, '2020-09-23 23:56:43'),
(180, 15, '1120', 'Chino x10 Chuleton', 'vistas/img/productos/default/anonymous.png', 1000, 60000, 60000, 0, '2020-09-23 23:57:14'),
(181, 15, '1121', 'Chino x2 Costilla', 'vistas/img/productos/default/anonymous.png', 1000, 22000, 22000, 0, '2020-09-24 00:00:08'),
(182, 15, '1122', 'Chino x4 Costilla', 'vistas/img/productos/default/anonymous.png', 1000, 35000, 35000, 0, '2020-09-24 00:01:03'),
(183, 15, '1123', 'Chino x6 Costilla', 'vistas/img/productos/default/anonymous.png', 1000, 45000, 45000, 0, '2020-09-24 00:02:45'),
(184, 15, '1124', 'Chino x10 Costilla', 'vistas/img/productos/default/anonymous.png', 1000, 62000, 62000, 0, '2020-09-24 00:04:56'),
(185, 15, '1125', 'Chino x2 Chuleta Valluna', 'vistas/img/productos/default/anonymous.png', 1000, 18000, 18000, 0, '2020-09-24 00:05:38'),
(186, 15, '1126', 'Chino x4 Chuleta Valluna', 'vistas/img/productos/default/anonymous.png', 1000, 32000, 32000, 0, '2020-09-24 00:06:12'),
(187, 15, '1127', 'Chino x6 Chuleta Valluna', 'vistas/img/productos/default/anonymous.png', 1000, 40000, 4000, 0, '2020-09-24 00:06:36'),
(188, 15, '1128', 'Chino x10 Chuleta Valluna', 'vistas/img/productos/default/anonymous.png', 1000, 58000, 58000, 0, '2020-09-24 00:07:09'),
(189, 15, '1129', 'Chino x2 Pollo', 'vistas/img/productos/default/anonymous.png', 1000, 17000, 17000, 0, '2020-09-24 00:08:38'),
(190, 15, '1130', 'Chino x4 Pollo', 'vistas/img/productos/default/anonymous.png', 1000, 30000, 30000, 0, '2020-09-24 00:09:16'),
(191, 15, '1131', 'Chino x6 Pollo', 'vistas/img/productos/default/anonymous.png', 1000, 38000, 38000, 0, '2020-09-24 00:09:45'),
(192, 15, '1132', 'Chino x10 Pollo', 'vistas/img/productos/default/anonymous.png', 999, 56000, 56000, 1, '2020-12-15 17:16:32'),
(193, 15, '1133', 'Bacano x2 Chuleton', 'vistas/img/productos/default/anonymous.png', 1000, 23000, 23000, 0, '2020-09-24 00:12:05'),
(194, 1, '1134', 'Bacano x4 Chuleton', 'vistas/img/productos/default/anonymous.png', 1000, 37000, 37000, 0, '2020-09-24 00:13:50'),
(195, 15, '1135', 'Bacano x6 Chuleton', 'vistas/img/productos/default/anonymous.png', 1000, 46000, 46000, 0, '2020-09-24 00:14:12'),
(196, 15, '1136', 'Bacano x10 Chuleton', 'vistas/img/productos/default/anonymous.png', 1000, 64000, 64000, 0, '2020-09-24 00:14:31'),
(197, 15, '1137', 'Bacano x2 Costilla', 'vistas/img/productos/default/anonymous.png', 1000, 25000, 25000, 0, '2020-09-24 00:15:20'),
(198, 15, '1138', 'Bacano x4 Costilla', 'vistas/img/productos/default/anonymous.png', 1000, 39000, 39000, 0, '2020-09-24 00:17:16'),
(199, 15, '1139', 'Bacano x6 Costilla', 'vistas/img/productos/default/anonymous.png', 1000, 48000, 48000, 0, '2020-09-24 00:17:37'),
(200, 15, '1140', 'Bacano x10 Costilla', 'vistas/img/productos/default/anonymous.png', 1000, 66000, 66000, 0, '2020-09-24 00:18:12'),
(201, 15, '1141', 'Bacano x2 Chuleta Valluna', 'vistas/img/productos/default/anonymous.png', 1000, 22000, 22000, 0, '2020-09-24 00:19:02'),
(202, 15, '1142', 'Bacano x4 Chuleta Valluna', 'vistas/img/productos/default/anonymous.png', 1000, 35000, 35000, 0, '2020-09-24 00:19:28'),
(203, 15, '1143', 'Bacano x6 Chuleta Valluna', 'vistas/img/productos/default/anonymous.png', 1000, 44000, 44000, 0, '2020-09-24 00:20:39'),
(204, 15, '1144', 'Bacano x10 Chuleta Valluna', 'vistas/img/productos/default/anonymous.png', 1000, 62000, 62000, 0, '2020-09-24 00:21:05'),
(205, 15, '1145', 'Bacano x2 Pollo', 'vistas/img/productos/default/anonymous.png', 1000, 20000, 20000, 0, '2020-09-24 00:22:13'),
(206, 15, '1146', 'Bacano x4 Pollo', 'vistas/img/productos/default/anonymous.png', 1000, 33000, 33000, 0, '2020-09-24 00:22:33'),
(207, 15, '1147', 'Bacano x6 Pollo', 'vistas/img/productos/default/anonymous.png', 999, 41000, 41000, 1, '2020-12-29 22:31:25'),
(208, 15, '1148', 'Bacano x10 Pollo', 'vistas/img/productos/default/anonymous.png', 1000, 60000, 60000, 0, '2020-09-24 00:23:16'),
(209, 15, '1149', 'Paisa x2 Chuleton', 'vistas/img/productos/default/anonymous.png', 1000, 23000, 23000, 0, '2020-09-24 00:25:39'),
(210, 15, '1150', 'Paisa x4 Chuleton', 'vistas/img/productos/default/anonymous.png', 1000, 36000, 36000, 0, '2020-09-24 00:26:22'),
(211, 15, '1151', 'Paisa x6 Chuleton', 'vistas/img/productos/default/anonymous.png', 1000, 45000, 45000, 0, '2020-09-24 00:26:44'),
(212, 15, '1152', 'Paisa x10 Chuleton', 'vistas/img/productos/default/anonymous.png', 1000, 63000, 63000, 0, '2020-09-24 00:27:09'),
(213, 15, '1153', 'Paisa x2 Costilla', 'vistas/img/productos/default/anonymous.png', 1000, 25000, 25000, 0, '2020-09-24 00:27:41'),
(214, 15, '1154', 'Paisa x4 Costilla', 'vistas/img/productos/default/anonymous.png', 999, 38000, 38000, 0, '2020-12-04 23:12:53'),
(215, 15, '1155', 'Paisa x6 Costilla', 'vistas/img/productos/default/anonymous.png', 1000, 47000, 47000, 0, '2020-09-24 00:28:30'),
(216, 15, '1156', 'Paisa x10 Costilla', 'vistas/img/productos/default/anonymous.png', 1000, 65000, 65000, 0, '2020-09-24 00:28:56'),
(217, 15, '1157', 'Paisa x2 Chuleta Valluna', 'vistas/img/productos/default/anonymous.png', 1000, 21000, 21000, 0, '2020-09-24 00:29:47'),
(218, 15, '1158', 'Paisa x4 Chuleta Valluna', 'vistas/img/productos/default/anonymous.png', 1000, 34000, 34000, 0, '2020-09-24 00:30:06'),
(219, 15, '1159', 'Paisa x6 Chuleta Valluna', 'vistas/img/productos/default/anonymous.png', 1000, 43000, 43000, 0, '2020-09-24 00:30:59'),
(220, 15, '1160', 'Paisa x10 Chuleta Valluna', 'vistas/img/productos/default/anonymous.png', 1000, 61000, 61000, 0, '2020-09-24 00:31:31'),
(221, 15, '1161', 'Paisa x2 Pollo', 'vistas/img/productos/default/anonymous.png', 1000, 20000, 20000, 0, '2020-09-24 00:31:54'),
(222, 15, '1162', 'Paisa x4 Pollo', 'vistas/img/productos/default/anonymous.png', 1000, 32000, 32000, 0, '2020-09-24 00:32:18'),
(223, 15, '1163', 'Paisa x6 Pollo', 'vistas/img/productos/default/anonymous.png', 1000, 40000, 40000, 0, '2020-09-24 00:32:39'),
(224, 15, '1164', 'Paisa x10 Pollo', 'vistas/img/productos/default/anonymous.png', 999, 60000, 60000, 1, '2020-12-29 22:31:25'),
(225, 9, '1096', 'Chuleta Valluna x2', 'vistas/img/productos/default/anonymous.png', 999, 10000, 10000, 1, '2020-12-15 17:11:53'),
(226, 9, '1097', 'Chuleta Valluna x4', 'vistas/img/productos/default/anonymous.png', 1000, 20000, 20000, 0, '2020-12-15 17:05:05'),
(227, 10, '1098', 'Costillas Salsa BBQ x2', 'vistas/img/productos/default/anonymous.png', 1000, 15000, 15000, 0, '2020-12-15 17:05:50'),
(228, 10, '1098', 'Costillas Salsa BBQ x4', 'vistas/img/productos/default/anonymous.png', 999, 22000, 22000, 1, '2020-12-29 22:31:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(60, 'Jorge Murillo', 'jorge', '$2a$07$asxx54ahjppf45sd87a5autWZLJWDVBaymqUsqvJhKJUgilf.9wfy', 'Administrador', 'vistas/img/usuarios/jorge/823.png', 1, '2020-12-04 18:10:21', '2020-12-04 23:10:21'),
(61, 'Sebastian Murillo', 'sebastian', '$2a$07$asxx54ahjppf45sd87a5auRIQxX0M0ZiY0E3R7QrmfT.QqrGygIqy', 'Administrador', 'vistas/img/usuarios/sebastian/841.png', 1, '2020-09-11 16:38:32', '2020-09-11 21:38:32'),
(62, 'Liseth Dayana Ruiz Medina', 'liseth', '$2a$07$asxx54ahjppf45sd87a5aumRbK2R5/qd2AHIhgh7JZFJa8X4rb3t6', 'Vendedor', 'vistas/img/usuarios/liseth/205.png', 1, '2020-09-22 17:05:37', '2020-09-22 22:05:37'),
(63, 'Yadira Vargas', 'yadira', '$2a$07$asxx54ahjppf45sd87a5au.MkYJSAChmnnfvtsYyZynlQg/qXqVvS', 'Vendedor', 'vistas/img/usuarios/yadira/754.png', 1, '2020-09-11 17:00:59', '2020-09-11 22:00:59'),
(64, 'Jhonatan Carrillo', 'jhonatan', '$2a$07$asxx54ahjppf45sd87a5auRCzPGBidZ0xmUpV7KWkmztlopjJTTYy', 'Vendedor', 'vistas/img/usuarios/jhonatan/549.png', 1, '2020-09-07 16:09:16', '2020-09-07 21:09:16'),
(65, 'Carlos Eduardo Succa Cantillo', 'carlos', '$2a$07$asxx54ahjppf45sd87a5auRI2TSXh7SXJE/3lPblcRIlJtyzWXeoa', 'Vendedor', 'vistas/img/usuarios/carlos/271.png', 1, '0000-00-00 00:00:00', '2020-09-07 21:10:23'),
(66, 'Andry Ramos', 'andry', '$2a$07$asxx54ahjppf45sd87a5auOaigATU0MaTh3uM9DokxVo3X/6m8/E6', 'Vendedor', 'vistas/img/usuarios/andry/146.png', 1, '0000-00-00 00:00:00', '2020-09-07 21:11:28'),
(67, 'karolay  gamarra ruiz', 'karolay', '$2a$07$asxx54ahjppf45sd87a5auQm73fgmzEEzOUPwLtTCrV6acu9L6jxe', 'Vendedor', '', 1, '2020-11-24 17:44:17', '2020-11-24 22:44:17'),
(68, 'Charlys Garcia', 'charlysv14', '$2a$07$asxx54ahjppf45sd87a5aukSYCMWl.XA0JxFIcTNsuPX.5DL4/y3.', 'Administrador', 'vistas/img/usuarios/charlysv14/513.jpg', 1, '2023-03-28 18:19:19', '2023-03-28 23:19:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `productos` text COLLATE utf8_spanish_ci NOT NULL,
  `impuesto` float NOT NULL,
  `neto` float NOT NULL,
  `total` float NOT NULL,
  `metodo_pago` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `codigo`, `id_cliente`, `id_vendedor`, `productos`, `impuesto`, `neto`, `total`, `metodo_pago`, `fecha`) VALUES
(60, 10001, 218, 69, '[{\"id\":\"72\",\"descripcion\":\"Arroz Chino 2 Personas\",\"cantidad\":\"1\",\"stock\":\"999\",\"precio\":\"14000\",\"total\":\"14000\"}]', 0, 14000, 14000, 'Bancolombia-14000', '2020-12-12 20:59:03'),
(61, 10002, 219, 68, '[{\"id\":\"90\",\"descripcion\":\"Ejecutivo 2\",\"cantidad\":\"1\",\"stock\":\"999\",\"precio\":\"10000\",\"total\":\"10000\"},{\"id\":\"71\",\"descripcion\":\"Arroz Chino Personal\",\"cantidad\":\"1\",\"stock\":\"999\",\"precio\":\"8000\",\"total\":\"8000\"}]', 0, 18000, 18000, 'Efectivo', '2020-12-15 16:13:47'),
(62, 10003, 220, 68, '[{\"id\":\"61\",\"descripcion\":\"Arroz Bacano Personal\",\"cantidad\":\"1\",\"stock\":\"998\",\"precio\":\"12000\",\"total\":\"12000\"}]', 0, 12000, 12000, 'Efectivo', '2020-12-15 16:16:09'),
(63, 10004, 221, 68, '[{\"id\":\"112\",\"descripcion\":\"Espaguetis Bacano Personal\",\"cantidad\":\"1\",\"stock\":\"995\",\"precio\":\"15000\",\"total\":\"15000\"}]', 0, 15000, 15000, 'Efectivo', '2020-12-15 16:20:19'),
(64, 10005, 222, 68, '[{\"id\":\"71\",\"descripcion\":\"Arroz Chino Personal\",\"cantidad\":\"1\",\"stock\":\"998\",\"precio\":\"8000\",\"total\":\"8000\"}]', 0, 8000, 8000, 'Efectivo', '2020-12-15 16:28:41'),
(65, 10006, 223, 68, '[{\"id\":\"123\",\"descripcion\":\"Sopas del Dia\",\"cantidad\":\"2\",\"stock\":\"994\",\"precio\":\"5000\",\"total\":\"10000\"}]', 0, 10000, 10000, 'Efectivo', '2020-12-15 16:34:21'),
(66, 10007, 224, 68, '[{\"id\":\"225\",\"descripcion\":\"Chuleta Valluna x2\",\"cantidad\":\"1\",\"stock\":\"999\",\"precio\":\"10000\",\"total\":\"10000\"},{\"id\":\"61\",\"descripcion\":\"Arroz Bacano Personal\",\"cantidad\":\"1\",\"stock\":\"997\",\"precio\":\"12000\",\"total\":\"12000\"}]', 0, 22000, 22000, 'Efectivo', '2020-12-15 17:11:53'),
(67, 10008, 225, 68, '[{\"id\":\"192\",\"descripcion\":\"Chino x10 Pollo\",\"cantidad\":\"1\",\"stock\":\"999\",\"precio\":\"56000\",\"total\":\"56000\"}]', 0, 56000, 56000, 'Efectivo', '2020-12-15 17:16:32'),
(68, 10009, 35, 68, '[{\"id\":\"228\",\"descripcion\":\"Costillas Salsa BBQ x4\",\"cantidad\":\"1\",\"stock\":\"999\",\"precio\":\"22000\",\"total\":\"22000\"},{\"id\":\"224\",\"descripcion\":\"Paisa x10 Pollo\",\"cantidad\":\"1\",\"stock\":\"999\",\"precio\":\"60000\",\"total\":\"60000\"},{\"id\":\"207\",\"descripcion\":\"Bacano x6 Pollo\",\"cantidad\":\"1\",\"stock\":\"999\",\"precio\":\"41000\",\"total\":\"41000\"}]', 0, 123000, 123000, 'Efectivo', '2020-12-29 22:31:25');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
