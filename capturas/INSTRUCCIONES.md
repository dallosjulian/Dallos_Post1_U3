# 📸 Guía de Capturas de Pantalla

Guarda cada captura en esta carpeta (`capturas/`) con el nombre indicado.
Para tomar capturas en Windows usa: **Win + Shift + S** (Recortes) o **PrtScr**.

---

## PARTE 1 — Página de Perfil (`parte-1-perfil-css3/index.html`)

Abre el archivo `parte-1-perfil-css3/index.html` haciendo doble clic en él.

### Captura 1 → `01-perfil-completo.png`
- **Qué mostrar:** La página completa en escritorio (ancho de ventana ~1200px).
- **Cómo:** Maximiza el navegador. Haz scroll para que se vea el header fijo arriba, la tarjeta de perfil con la foto y el badge verde ✓.
- **Guardar como:** `capturas/01-perfil-completo.png`

### Captura 2 → `02-avatar-badge.png`
- **Qué mostrar:** Zoom en la tarjeta de perfil para evidenciar el badge con `position: absolute` sobre el avatar con `position: relative`.
- **Cómo:** Usa **Win + Shift + S** y recorta solo la zona del avatar + badge.
- **Guardar como:** `capturas/02-avatar-badge.png`

### Captura 3 → `03-habilidades.png`
- **Qué mostrar:** La sección de habilidades completa (grid de tarjetas).
- **Cómo:** Haz scroll hasta la sección "Habilidades" y recorta esa zona.
- **Guardar como:** `capturas/03-habilidades.png`

### Captura 4 → `04-formulario-vacio.png`
- **Qué mostrar:** El formulario de contacto con todos los campos vacíos (SIN bordes rojos — esto demuestra que la Estrategia A funciona).
- **Cómo:** Recorta solo el formulario sin tocar ningún campo.
- **Guardar como:** `capturas/04-formulario-vacio.png`

### Captura 5 → `05-formulario-invalido.png`
- **Qué mostrar:** El formulario con un campo inválido (ej: escribir "ab" en email) mostrando el borde rojo de validación.
- **Cómo:** Escribe algo inválido en el campo de correo (ej: "hola") y haz clic fuera. El borde rojo aparecerá. Recorta el formulario.
- **Guardar como:** `capturas/05-formulario-invalido.png`

### Captura 6 → `06-formulario-focus.png`
- **Qué mostrar:** Un campo del formulario recibiendo foco (borde morado + sombra).
- **Cómo:** Haz clic en cualquier campo. Recorta mostrando el anillo de foco.
- **Guardar como:** `capturas/06-formulario-focus.png`

### Captura 7 → `07-perfil-responsive.png`
- **Qué mostrar:** La página de perfil en vista móvil (~375px de ancho).
- **Cómo:** Presiona **F12** → clic en el ícono de dispositivo móvil (📱) → selecciona "iPhone SE" o pon ancho 375px. Captura la vista.
- **Guardar como:** `capturas/07-perfil-responsive.png`

---

## PARTE 2 — Dashboard (`parte-2-dashboard-grid/index.html`)

Abre el archivo `parte-2-dashboard-grid/index.html` haciendo doble clic en él.

### Captura 8 → `08-dashboard-completo.png`
- **Qué mostrar:** El dashboard completo en escritorio (~1200px+), mostrando sidebar, topbar y tarjetas de estadísticas.
- **Cómo:** Maximiza el navegador. Recorta toda la vista visible.
- **Guardar como:** `capturas/08-dashboard-completo.png`

### Captura 9 → `09-tabla-zebra.png`
- **Qué mostrar:** La tabla de "Proyectos Recientes" con las franjas zebra (filas alternas con color diferente).
- **Cómo:** Haz scroll hasta la tabla y recorta esa sección.
- **Guardar como:** `capturas/09-tabla-zebra.png`

### Captura 10 → `10-tabla-hover.png`
- **Qué mostrar:** Una fila de la tabla con el efecto hover (fondo morado suave).
- **Cómo:** Pasa el mouse sobre una fila par (la que tiene franja). Usa **Win + Shift + S** rápido mientras el mouse está encima.
- **Guardar como:** `capturas/10-tabla-hover.png`

### Captura 11 → `11-notas-fullwidth.png`
- **Qué mostrar:** La tarjeta de "Notas Rápidas" ocupando el ancho completo (evidencia del `grid-column: 1 / -1`).
- **Cómo:** Haz scroll hasta las notas y recorta mostrando que ocupa ambas columnas.
- **Guardar como:** `capturas/11-notas-fullwidth.png`

### Captura 12 → `12-dashboard-responsive.png`
- **Qué mostrar:** El dashboard en vista móvil (~768px o menos) con el sidebar apilado debajo del topbar.
- **Cómo:** Presiona **F12** → ícono de dispositivo (📱) → pon ancho 768px o selecciona "iPad Mini". Captura toda la vista.
- **Guardar como:** `capturas/12-dashboard-responsive.png`

### Captura 13 → `13-dashboard-movil.png`
- **Qué mostrar:** El dashboard en móvil estrecho (~375px), todo en una columna.
- **Cómo:** En DevTools cambia a 375px de ancho. Captura la vista.
- **Guardar como:** `capturas/13-dashboard-movil.png`

---

## Resumen rápido de nombres

| # | Archivo | Qué demuestra |
|---|---------|---------------|
| 1 | `01-perfil-completo.png` | Vista general desktop del perfil |
| 2 | `02-avatar-badge.png` | position: relative/absolute |
| 3 | `03-habilidades.png` | Grid + combinador hijo directo > |
| 4 | `04-formulario-vacio.png` | Estrategia A — sin rojos al cargar |
| 5 | `05-formulario-invalido.png` | Estrategia A — borde rojo al escribir mal |
| 6 | `06-formulario-focus.png` | Estilo :focus accesible |
| 7 | `07-perfil-responsive.png` | Responsive del perfil en móvil |
| 8 | `08-dashboard-completo.png` | Grid areas + sidebar + topbar |
| 9 | `09-tabla-zebra.png` | nth-child(even) franjas zebra |
| 10 | `10-tabla-hover.png` | :hover sobre fila zebra |
| 11 | `11-notas-fullwidth.png` | grid-column: 1 / -1 |
| 12 | `12-dashboard-responsive.png` | Breakpoint 768px Estrategia Grid |
| 13 | `13-dashboard-movil.png` | Vista móvil 375px |

---

**Tip:** Después de guardar todas las capturas, puedes añadirlas al commit de Git:
```bash
git add capturas/
git commit -m "docs: capturas de pantalla de evidencia"
```
