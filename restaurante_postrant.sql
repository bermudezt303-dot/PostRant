-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-05-2026 a las 23:01:13
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `restaurante_postrant`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nombre_categoria` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nombre_categoria`) VALUES
(1, 'Entradas'),
(2, 'Platos Fuertes'),
(3, 'Bebidas'),
(4, 'Postres'),
(5, 'Aperitivos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra_insumo`
--

CREATE TABLE `compra_insumo` (
  `id_compra` int(11) NOT NULL,
  `fecha_compra` varchar(10) DEFAULT NULL,
  `cantidad_comprada` int(11) NOT NULL DEFAULT 0,
  `valor_total` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

CREATE TABLE `detalle_pedido` (
  `id_detalle` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL DEFAULT 0,
  `precio_unitario` decimal(10,2) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_pedido`
--

INSERT INTO `detalle_pedido` (`id_detalle`, `cantidad`, `precio_unitario`, `subtotal`) VALUES
(1, 3, 10900.25, 32700.75),
(2, 5, 12900.50, 64502.50),
(3, 2, 38900.75, 77801.50),
(4, 6, 7900.40, 47402.40),
(5, 4, 11900.99, 47603.96);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `id_empleado` int(11) NOT NULL,
  `nombres` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `numero_identificacion` varchar(10) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `correo` varchar(90) DEFAULT NULL,
  `nombre_usuario` varchar(30) DEFAULT NULL,
  `contraseña` varchar(20) DEFAULT NULL,
  `fecha_ingreso` varchar(10) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`id_empleado`, `nombres`, `apellidos`, `numero_identificacion`, `direccion`, `telefono`, `correo`, `nombre_usuario`, `contraseña`, `fecha_ingreso`, `estado`) VALUES
(1, 'Javier Alberto', 'Sanchez Palacios', '79851362', 'Calle 147 # 12 - 45', '3104829105', 'javierA02@gmail.com', 'Javier Sanches', '21839', '20-06-2015', 'activo'),
(2, 'María Camila', 'Restrepo Vélez', '1018452931', 'Carrera 73A # 53 - 12', '3198765432', 'mari067@gmail.com', 'Maria_1234', 'restrepo303', '31-09-2025', 'activo'),
(3, 'César Augusto', 'Salcedo Vivas', '1023938401', 'Circular 3A # 68B - 25 Sur', '3001234569', 'Vivas405@gmail.com', 'Agustin64', 'Millonarios2018', '14-03-2024', 'inactivo'),
(4, 'Héctor Fabio', 'Urrego Castañeda', '52964173', 'Carrera 21 # 39A - 52', '3218354629', 'urregoSimp2034@gmail.com', 'Hector_Castañeda', 'Fabio86420', '09-01-2011', 'activo'),
(5, 'Elena Sofía', 'Perea Blandón', '1152194827', 'Calle 48C Sur # 3A - 15', '3018765433', 'sofia98@gmail.com', 'Sofi_1999', '1234', '18-11-2017', 'activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insumo`
--

CREATE TABLE `insumo` (
  `id_insumo` int(11) NOT NULL,
  `nombre_insumo` varchar(50) DEFAULT NULL,
  `unidad_medida` varchar(20) DEFAULT NULL,
  `cantidad_disponible` int(11) NOT NULL DEFAULT 0,
  `stock_minimo` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `insumo`
--

INSERT INTO `insumo` (`id_insumo`, `nombre_insumo`, `unidad_medida`, `cantidad_disponible`, `stock_minimo`) VALUES
(1, 'Platano', 'kg', 56, '10'),
(2, 'Pasta', 'kg', 40, '15'),
(3, 'Limones', 'kg', 36, '30'),
(4, 'Huevos', 'kg', 78, '10'),
(5, 'Carne', 'kg', 29, '9');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa`
--

CREATE TABLE `mesa` (
  `id_mesa` int(11) NOT NULL,
  `numero_mesa` varchar(100) DEFAULT NULL,
  `capacidad` varchar(2) DEFAULT NULL,
  `ubicacion` varchar(200) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mesa`
--

INSERT INTO `mesa` (`id_mesa`, `numero_mesa`, `capacidad`, `ubicacion`, `estado`) VALUES
(1, '22', '4', 'Tercer piso a la derecha en la esquina', 'Ocupada'),
(2, '13', '6', 'Primer piso al lado de la entrada', 'Ocupada'),
(3, '4', '10', 'Segundo piso a la izquierda al lado de la ventana', 'Disponible'),
(4, '7', '8', 'Primer piso en la parte central', 'Ocupada'),
(5, '11', '2', 'Primer piso a la derecha cerca de la cocina', 'Disponible');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `id_pago` int(11) NOT NULL,
  `fecha_pago` varchar(10) DEFAULT NULL,
  `metodo_pago` varchar(20) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `comprobante_generado` varchar(20) DEFAULT NULL,
  `numero_factura` varchar(30) DEFAULT NULL,
  `tipo_factura` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pago`
--

INSERT INTO `pago` (`id_pago`, `fecha_pago`, `metodo_pago`, `total`, `comprobante_generado`, `numero_factura`, `tipo_factura`) VALUES
(1, '19/05/2026', 'Efectivo', 77801.50, '1', '44', 'Electronica'),
(2, '06/02/2026', 'Targeta', 64502.50, '1', '20', 'Electronica'),
(3, '24/11/2025', 'Targeta', 32700.75, '1', '3', 'Electronica'),
(4, '19/05/2026', 'Efectivo', 47402.40, '1', '45', 'Electronica'),
(5, '19/05/2026', 'Targeta', 47603.96, '1', '50', 'Electronica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `id_pedido` int(11) NOT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `estado` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`id_pedido`, `fecha_hora`, `estado`) VALUES
(1, '19/05/2026 - 3:00pm', 'Servido'),
(2, '19/05/2026 - 3:34pm', 'Listo'),
(3, '24/11/2025 - 12:50pm', 'Pagado'),
(4, '19/05/2026 - 4:01pm', 'En preparación'),
(5, '06/02/2026 - 10:45am', 'Pagado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prediccion`
--

CREATE TABLE `prediccion` (
  `id_prediccion` int(11) NOT NULL,
  `fecha_genracion` varchar(10) DEFAULT NULL,
  `consumo_estimado` int(11) NOT NULL DEFAULT 0,
  `stock_recomendado` int(11) NOT NULL DEFAULT 0,
  `nivel_riesgo` int(11) NOT NULL DEFAULT 0,
  `estado` varchar(20) DEFAULT NULL,
  `observacion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `nombre_producto` varchar(100) DEFAULT NULL,
  `descripcion` varchar(400) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `disponible` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `nombre_producto`, `descripcion`, `precio`, `disponible`) VALUES
(1, 'Sopa de pasta', 'El calor del hogar en un tazón. Delicado caldo casero de la casa preparado con vegetales frescos, tiernas papas locales y pasta, finalizado con un toque de cilantro fresco.', 10900.00, 35),
(2, 'Bandeja con Carne Asada con Sobrebarriga al horno', 'El doble placer de la parrilla y el horno. Una imponente combinación de sobrebarriga lentamente horneada hasta quedar extra suave, acompañada de una jugosa carne de res asada a la plancha. Se sirve con arroz blanco, frijoles caseros, aguacate y ensalada fresca.', 38900.00, 56),
(3, 'Limonada', 'Frescura instantánea. Zumo de limones seleccionados, exprimido al instante y endulzado al gusto. El acompañamiento perfecto y refrescante para tu comida.', 7900.00, 23),
(4, 'Flan de tres leches', 'Suavidad y dulzura tradicional. Flan artesanal de textura sedosa y cremosa, bañado en nuestra mezcla especial de tres leches y un sutil espejo de caramelo líquido.', 11900.00, 12),
(5, 'Plátano maduro con queso y bocadillo', 'Tradición dorada al horno. Plátano maduro asado en su punto, relleno de auténtico queso doble crema derretido y el toque dulce del tradicional bocadillo veleño.', 12900.00, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_insumo`
--

CREATE TABLE `producto_insumo` (
  `id_producto_insumo` int(11) NOT NULL,
  `cantidad_requerida` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `nombre_rol` varchar(20) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `nombre_rol`, `descripcion`) VALUES
(1, 'Mesero', 'El mesero se encarga de procesar y gestionar los pedidos, tambie se encarga de gestionar las mesas'),
(2, 'Administrador', 'El administrador tiene acceso completo al sistema, se encarga de autenticar y gestionar usuarios, pu'),
(3, 'Cajero', 'El cajero es el encargado de procesar los pagos de las ventas');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `compra_insumo`
--
ALTER TABLE `compra_insumo`
  ADD PRIMARY KEY (`id_compra`);

--
-- Indices de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD PRIMARY KEY (`id_detalle`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id_empleado`),
  ADD UNIQUE KEY `numero_identificacion` (`numero_identificacion`),
  ADD UNIQUE KEY `correo` (`correo`),
  ADD UNIQUE KEY `nombre_usuario` (`nombre_usuario`);

--
-- Indices de la tabla `insumo`
--
ALTER TABLE `insumo`
  ADD PRIMARY KEY (`id_insumo`);

--
-- Indices de la tabla `mesa`
--
ALTER TABLE `mesa`
  ADD PRIMARY KEY (`id_mesa`),
  ADD UNIQUE KEY `numero_mesa` (`numero_mesa`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`id_pago`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id_pedido`);

--
-- Indices de la tabla `prediccion`
--
ALTER TABLE `prediccion`
  ADD PRIMARY KEY (`id_prediccion`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `producto_insumo`
--
ALTER TABLE `producto_insumo`
  ADD PRIMARY KEY (`id_producto_insumo`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `compra_insumo`
--
ALTER TABLE `compra_insumo`
  MODIFY `id_compra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `id_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `insumo`
--
ALTER TABLE `insumo`
  MODIFY `id_insumo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `mesa`
--
ALTER TABLE `mesa`
  MODIFY `id_mesa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `pago`
--
ALTER TABLE `pago`
  MODIFY `id_pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `prediccion`
--
ALTER TABLE `prediccion`
  MODIFY `id_prediccion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `producto_insumo`
--
ALTER TABLE `producto_insumo`
  MODIFY `id_producto_insumo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
