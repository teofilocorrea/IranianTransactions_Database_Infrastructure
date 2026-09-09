# Project Closure — Iranian Transactions | Database Infrastructure

## 📋 Información del proyecto

| Campo | Detalle |
|---|---|
| **Proyecto** | Iranian Transactions — Database Infrastructure |
| **Fase** | 1 de 5 — Infraestructura |
| **Autor** | Teófilo Correa Rojas |
| **Fecha inicio** | Septiembre 2026 |
| **Fecha cierre** | Septiembre 2026 |
| **Estado** | ✅ Completado |

---

## 🎯 Objetivos — ¿Se cumplieron?

| Objetivo | Estado |
|---|---|
| Validar el entorno antes de crear | ✅ Completado |
| Crear la base de datos | ✅ Completado |
| Crear los cuatro esquemas Medallion | ✅ Completado |
| Documentar los cimientos del proyecto | ✅ Completado |

---

## 🧱 Lo que se construyó

### Base de datos

| Elemento | Nombre |
|---|---|
| Base de datos | `iranian_transactions_db` |

### Esquemas creados

| Esquema | Capa | Rol |
|---|---|---|
| `stg` | Staging | Datos crudos del CSV |
| `bronze` | Bronce | Datos crudos + auditoría |
| `silver` | Plata | Datos limpios y validados |
| `gold` | Oro | Modelo dimensional |

### Scripts creados

| Carpeta | Scripts |
|---|---|
| `validation/` | Verificación de base y esquemas antes de crear |
| raíz | Creación de la base y de los esquemas |

---

## 📚 Lo que apliqué en esta fase

| Concepto | Descripción |
|---|---|
| Validación previa | Consultar `pg_database` e `information_schema.schemata` antes de crear |
| `IF NOT EXISTS` | Válido para SCHEMA, no para DATABASE en PostgreSQL |
| Arquitectura Medallion | Cuatro esquemas para el refinamiento progresivo de datos |

### Decisiones técnicas importantes

- Se valida el entorno antes de crear, para evitar errores de duplicado
- La base se verifica con `pg_database` (DATABASE no admite `IF NOT EXISTS`)
- Los esquemas usan `IF NOT EXISTS` (hace el script re-ejecutable)
- Cuatro esquemas separados aíslan cada capa del proceso

---

## 🔑 Lección más importante

```
Validar antes de crear no es un paso opcional:

DATABASE no admite IF NOT EXISTS en PostgreSQL.
Por eso se consulta pg_database primero —
para saber si existe antes de intentar crearla.

Conocer los límites de cada comando evita
scripts que fallan a ciegas.
```

---

## 💼 Qué significa para la gestión de proyectos

```
Empezar por validar el entorno antes de actuar
es un principio de operaciones seguras: no se
asume el estado del sistema, se confirma.

En proyectos reales, crear algo que ya existe
—o asumir que existe algo que no— genera errores
que cuestan tiempo. Un cimiento bien validado y
documentado es lo que permite que las fases
siguientes se construyan sin sorpresas.

Establecer bien la base, aunque parezca el paso
menos vistoso, es lo que sostiene todo el proyecto.
```


---

## 🔜 Próximas fases

| Fase | Proyecto | Enfoque |
|---|---|---|
| 1 | Iranian Transactions — Database Infrastructure | Infraestructura ✅ |
| 2 | Iranian Transactions — STG Layer | Datos crudos |
| 3 | Iranian Transactions — Bronze Layer | Auditoría |
| 4 | Iranian Transactions — Silver Layer | Limpieza + columnas calculadas |
| 5 | Iranian Transactions — Gold Layer | Modelo dimensional + window functions |

---

## 👤 Autor

### Teófilo Correa Rojas

**Project Manager | Data analytic**

🔗 [LinkedIn](https://www.linkedin.com/in/teófilo-correa-rojas/)