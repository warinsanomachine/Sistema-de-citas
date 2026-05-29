-- --------------------------------------------------------
-- Preparación del entorno
-- --------------------------------------------------------
-- Crear el esquema public en caso de que no exista en la nueva base de datos
CREATE SCHEMA IF NOT EXISTS public;

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', 'public', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';
SET default_table_access_method = heap;

-- --------------------------------------------------------
-- CREACIÓN DE TABLAS
-- --------------------------------------------------------

--
-- Estructura de la tabla: citas
--
DROP TABLE IF EXISTS public.citas;
CREATE TABLE public.citas (
    situacion character varying(40) DEFAULT NULL::character varying,
    hora integer,
    fecha date,
    consultorio character varying(40) DEFAULT NULL::character varying,
    especialidad character varying(40) DEFAULT NULL::character varying,
    horaf integer,
    paciente character varying(2000) DEFAULT NULL::character varying,
    doctor character varying(2000) DEFAULT NULL::character varying,
    receta character varying(200) DEFAULT NULL::character varying
);

--
-- Estructura de la tabla: consultorios
--
DROP TABLE IF EXISTS public.consultorios;
CREATE TABLE public.consultorios (
    nombre character varying(40) DEFAULT NULL::character varying
);

--
-- Estructura de la tabla: doctores
--
DROP TABLE IF EXISTS public.doctores;
CREATE TABLE public.doctores (
    especialidad character varying(40) DEFAULT NULL::character varying,
    feproxc date,
    hoproxc integer,
    hori integer,
    horf integer,
    consultorio character varying(40) DEFAULT NULL::character varying,
    email character varying(2000) DEFAULT NULL::character varying
);

--
-- Estructura de la tabla: especialidad
--
DROP TABLE IF EXISTS public.especialidad;
CREATE TABLE public.especialidad (
    nombre character varying(40) DEFAULT NULL::character varying
);

--
-- Estructura de la tabla: mensajes
--
DROP TABLE IF EXISTS public.mensajes;
CREATE TABLE public.mensajes (
    fecha date,
    hora integer,
    remitente character varying(2000) DEFAULT NULL::character varying,
    destinatario character varying(2000) DEFAULT NULL::character varying,
    mensaje character varying(1000) DEFAULT NULL::character varying
);

--
-- Estructura de la tabla: situaciones
--
DROP TABLE IF EXISTS public.situaciones;
CREATE TABLE public.situaciones (
    nombre character varying(40) DEFAULT NULL::character varying,
    duracion integer,
    especialidad character varying(40) DEFAULT NULL::character varying
);

--
-- Estructura de la tabla: usuarios
--
DROP TABLE IF EXISTS public.usuarios;
CREATE TABLE public.usuarios (
    nombre character varying(20) DEFAULT NULL::character varying,
    apellidos character varying(20) DEFAULT NULL::character varying,
    email character varying(2000) DEFAULT NULL::character varying,
    contra character varying(30) DEFAULT NULL::character varying,
    nivel integer
);

-- --------------------------------------------------------
-- INSERCIÓN DE DATOS
-- --------------------------------------------------------

-- Datos para la tabla: citas
INSERT INTO public.citas (situacion, hora, fecha, consultorio, especialidad, horaf, paciente, doctor, receta) VALUES 
('Gripa', 1110, '2026-03-18', 'Consultorio 1', 'Pediatra', 1140, 'augustofv.2012@gmail.com', 'doctor@gmail.com', 'Dormir'),
('Gripa', 870, '2026-04-27', 'Consultorio 1', 'Pediatra', 900, 'yo@gmail.com', 'doctor@gmail.com', NULL);

-- Datos para la tabla: consultorios
INSERT INTO public.consultorios (nombre) VALUES 
('Consultorio 1'),
('Consultorio 23');

-- Datos para la tabla: doctores
INSERT INTO public.doctores (especialidad, feproxc, hoproxc, hori, horf, consultorio, email) VALUES 
('Pediatra', NULL, NULL, 840, 1320, 'Consultorio 1', 'doctor@gmail.com'),
('Pediatra', NULL, NULL, 480, 960, 'Consultorio 23', 'Jose@gmail.com');

-- Datos para la tabla: especialidad
INSERT INTO public.especialidad (nombre) VALUES 
('Pediatra');

-- Datos para la tabla: mensajes
INSERT INTO public.mensajes (fecha, hora, remitente, destinatario, mensaje) VALUES 
('2026-03-04', 754, 'augustofv.2012@gmail.com', 'doctor@gmail.com', 'HOLA'),
('2026-03-04', 754, 'doctor@gmail.com', 'augustofv.2012@gmail.com', 'hola');

-- Datos para la tabla: situaciones
INSERT INTO public.situaciones (nombre, duracion, especialidad) VALUES 
('Gripa', 30, 'Pediatra');

-- Datos para la tabla: usuarios
INSERT INTO public.usuarios (nombre, apellidos, email, contra, nivel) VALUES 
('admin', 'admin', 'admin@gmail.com', '456654', 3),
('Mrvh', 'Orshc', 'doctor@gmail.com', '456654', 2),
('Dxjxvwr', 'Ioruhv', 'augustofv.2012@gmail.com', '45677654', 1),
('Mrvh', 'Khuqdqghc', 'Jose@gmail.com', '45677654', 2);