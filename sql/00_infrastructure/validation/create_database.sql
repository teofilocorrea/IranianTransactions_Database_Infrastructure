-- ============================================================
-- Script : Crear base de datos
-- Proyecto: Iranian Transactions
-- Autor  : Teofilo Correa Rojas
-- Fecha  : 4 Septiembre 2026
-- ============================================================

-- Paso 1 — Validar si la base de datos ya existe
SELECT datname
FROM pg_database
WHERE datname = 'iranian_transactions_db';

-- Paso 2 — Si el query anterior NO devuelve resultados,
--          ejecutar la creación:
CREATE DATABASE iranian_transactions_db;