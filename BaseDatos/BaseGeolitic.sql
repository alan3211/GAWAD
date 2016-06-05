-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 05-06-2016 a las 21:16:56
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `BaseGeolitic`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `idAdmin` int(11) NOT NULL,
  `user_idUser` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `Boleta` int(11) NOT NULL,
  `grupos_Grupo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `funcion`
--

CREATE TABLE `funcion` (
  `Numfun` int(11) NOT NULL,
  `funcion` varchar(45) NOT NULL,
  `grupos_Grupo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupos`
--

CREATE TABLE `grupos` (
  `Grupo` varchar(30) NOT NULL,
  `profesor_NumProf` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `NumProf` int(11) NOT NULL,
  `ases` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `idUser` varchar(30) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL,
  `ApPat` varchar(30) NOT NULL,
  `ApMat` varchar(30) NOT NULL,
  `Age` varchar(10) NOT NULL,
  `Sex` varchar(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `Rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`idUser`, `name`, `ApPat`, `ApMat`, `Age`, `Sex`, `username`, `pass`, `Rol`) VALUES
('2013601590', 'Armando Alan', 'Hernandez', 'Sanchez', '22', 'M', 'alan3211', 'alan', 1),
('2013601591', 'Maria', 'Manrique', 'Hernandez', '23', 'F', 'Mary11', '123', 2),
('2013741480', 'Administrator', 'administrator', 'Administrator', '22', 'M', 'administrator', 'admin', 3),
('2015634584', 'Ruben', 'Peredo', 'Valderrama', '45', 'M', 'ruben', 'rpv', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_has_alumno`
--

CREATE TABLE `user_has_alumno` (
  `user_idUser` varchar(30) NOT NULL,
  `alumno_Boleta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_has_profesor`
--

CREATE TABLE `user_has_profesor` (
  `user_idUser` varchar(30) NOT NULL,
  `profesor_NumProf` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idAdmin`,`user_idUser`),
  ADD KEY `fk_admin_user1_idx` (`user_idUser`);

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`Boleta`),
  ADD KEY `fk_alumno_grupos1_idx` (`grupos_Grupo`);

--
-- Indices de la tabla `funcion`
--
ALTER TABLE `funcion`
  ADD PRIMARY KEY (`Numfun`),
  ADD KEY `fk_funcion_grupos1_idx` (`grupos_Grupo`);

--
-- Indices de la tabla `grupos`
--
ALTER TABLE `grupos`
  ADD PRIMARY KEY (`Grupo`),
  ADD KEY `fk_grupos_profesor1_idx` (`profesor_NumProf`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`NumProf`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`);

--
-- Indices de la tabla `user_has_alumno`
--
ALTER TABLE `user_has_alumno`
  ADD PRIMARY KEY (`user_idUser`,`alumno_Boleta`),
  ADD KEY `fk_user_has_alumno_alumno1_idx` (`alumno_Boleta`),
  ADD KEY `fk_user_has_alumno_user1_idx` (`user_idUser`);

--
-- Indices de la tabla `user_has_profesor`
--
ALTER TABLE `user_has_profesor`
  ADD PRIMARY KEY (`user_idUser`,`profesor_NumProf`),
  ADD KEY `fk_user_has_profesor_profesor1_idx` (`profesor_NumProf`),
  ADD KEY `fk_user_has_profesor_user1_idx` (`user_idUser`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `funcion`
--
ALTER TABLE `funcion`
  MODIFY `Numfun` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `fk_admin_user1` FOREIGN KEY (`user_idUser`) REFERENCES `user` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD CONSTRAINT `fk_alumno_grupos1` FOREIGN KEY (`grupos_Grupo`) REFERENCES `grupos` (`Grupo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `funcion`
--
ALTER TABLE `funcion`
  ADD CONSTRAINT `fk_funcion_grupos1` FOREIGN KEY (`grupos_Grupo`) REFERENCES `grupos` (`Grupo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `grupos`
--
ALTER TABLE `grupos`
  ADD CONSTRAINT `fk_grupos_profesor1` FOREIGN KEY (`profesor_NumProf`) REFERENCES `profesor` (`NumProf`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `user_has_alumno`
--
ALTER TABLE `user_has_alumno`
  ADD CONSTRAINT `fk_user_has_alumno_alumno1` FOREIGN KEY (`alumno_Boleta`) REFERENCES `alumno` (`Boleta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_user_has_alumno_user1` FOREIGN KEY (`user_idUser`) REFERENCES `user` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `user_has_profesor`
--
ALTER TABLE `user_has_profesor`
  ADD CONSTRAINT `fk_user_has_profesor_profesor1` FOREIGN KEY (`profesor_NumProf`) REFERENCES `profesor` (`NumProf`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_user_has_profesor_user1` FOREIGN KEY (`user_idUser`) REFERENCES `user` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
