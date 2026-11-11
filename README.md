# Notas de Taller 🌱⚡

Bitácora personal y cuaderno de campo enfocado en **resiliencia climática**, **tecnología apropiada** y **electrónica/tinkering de bajo consumo**.

---

## 🛠️ Cómo escribir desde Obsidian

Toda la carpeta está integrada en tu bóveda de Obsidian en:
`Vault/04 - Proyectos/notas-taller/`

Para publicar una nueva entrada:
1. Crea un archivo en la carpeta `_posts/` con el formato de nombre estándar de Jekyll:
   `YYYY-MM-DD-titulo-de-la-nota.md`
   *(Por ejemplo: `2026-11-02-sensor-humedad-suelo.md`)*
2. Coloca este encabezado simple al inicio del archivo:

```markdown
---
layout: post
title: "Título de la nota o experimento"
date: 2026-11-02
category: Sensores
tags: [esp32, humedad, huerto, solar]
summary: "Breve resumen de una línea que aparecerá en la portada."
---

Aquí escribes todo tu contenido en Markdown normal:
- Puedes usar listas
- Tablas
- Bloques de código con ```c, ```python, etc.
- Imágenes guardadas en `assets/images/` usando `![diagrama](/assets/images/diagrama.png)`
```

---

## 🚀 Cómo ver el sitio en local

Abre una terminal y ejecuta:
```bash
~/Prometeo/Vault/Proyectos/notas-taller/serve.sh
# O si estás en la carpeta:
./serve.sh
```

Abre en tu navegador:
👉 **`http://localhost:4000`**

Cualquier cambio que guardes en Obsidian se reflejará automáticamente en el navegador.

---

## 📁 Estructura del proyecto

- `_posts/`: Aquí van todos los artículos y notas que quieras publicar.
- `_layouts/`: Plantillas base (`default.html`, `post.html`, `page.html`).
- `_includes/`: Encabezado (`header.html`) y pie de página (`footer.html`).
- `assets/css/style.css`: Estilos visuales minimalistas (modo claro cálido y modo oscuro automático).
- `assets/images/`: Esquemas, diagramas de circuitos y fotos de tus prototipos.
- `index.html`: La portada del sitio con el listado de entradas.
- `acerca.md`: Página explicativa sobre el taller y sus principios.
- `_config.yml`: Ajustes generales del sitio.
