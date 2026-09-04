-- ============================================================
-- Script : Crear esquemas — Arquitectura Medallion
-- Proyecto: Iranian Transactions
-- Autor  : Teofilo Correa Rojas
-- Fecha  : 4 Septiembre 2026
-- ============================================================

-- Paso 1 — Verificar qué esquemas ya existen

SELECT schema_name
FROM information_schema.schemata
WHERE schema_name IN ('stg', 'bronze', 'silver', 'gold');

-- Paso 2 — Crear los esquemas de la arquitectura Medallion
CREATE SCHEMA IF NOT EXISTS stg;
CREATE SCHEMA IF NOT EXISTS bronze;
CREATE SCHEMA IF NOT EXISTS silver;
CREATE SCHEMA IF NOT EXISTS gold;