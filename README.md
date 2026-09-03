# Dallos_Post1_U3 — Página de Perfil y Dashboard Responsivo con CSS3

> **Post-contenido Unidad 3 — Programación Web**

## Autores

| Nombre | Rol |
|---|---|
| **Julian Dallos** | Desarrollo y diseño |

---

## Descripción del Proyecto

Este repositorio contiene dos ejercicios de laboratorio entregados como una sola actividad:

- **Parte 1 – Página de Perfil Personal:** construida con selectores CSS avanzados, Box Model (`box-sizing: border-box`), posicionamiento CSS (`fixed`, `relative`, `absolute`), Custom Properties con escala de espaciado, tipografía fluida con `clamp()` y estilos de formulario accesibles con validación visual.
- **Parte 2 – Dashboard Responsivo:** maquetado con CSS Grid para la estructura general de página y colocación explícita de paneles, Flexbox para los componentes internos (sidebar y topbar), franjas zebra en la tabla de proyectos, y diseño adaptable a dispositivos móviles.

Ninguna parte utiliza frameworks CSS externos.

---

## Estructura de Archivos

```
Dallos_Post1_U3/
├── parte-1-perfil-css3/
│   ├── index.html
│   ├── css/
│   │   └── estilos.css
│   └── img/
│       └── perfil.jpg
├── parte-2-dashboard-grid/
│   ├── index.html
│   └── css/
│       └── dashboard.css
└── README.md
```

---

## Decisiones de Diseño

### Parte 1 — Validación de Formulario

**Estrategia elegida:** Estrategia A — `input:invalid:not(:placeholder-shown)`

**Justificación:** Se eligió la Estrategia A porque muestra el indicador visual de error (borde rojo) únicamente cuando el usuario ya ha comenzado a escribir en el campo y el valor ingresado no cumple con la validación nativa de HTML5. Esto se logra combinando la pseudo-clase `:invalid` con `:not(:placeholder-shown)`: mientras el placeholder sea visible (campo vacío o sin interacción), el estilo de error no se aplica, evitando que todos los campos `required` aparezcan en rojo al cargar la página.

**¿Por qué sin `!important`?** El selector compuesto `.contact-form__input:invalid:not(:placeholder-shown)` tiene una especificidad de `0-3-1` (tres pseudo-clases + una clase), que es mayor que la del selector base `.contact-form__input` (`0-1-0`). Esto garantiza que el estilo de error prevalece naturalmente en la cascada sin necesidad de recurrir a `!important`, lo cual rompería la predictibilidad de la cascada y dificultaría sobrescribir estilos en el futuro. Además, cuando el campo inválido recibe foco, un selector aún más específico (`.contact-form__input:focus:invalid:not(:placeholder-shown)`) restaura el anillo de foco primario para no confundir al usuario mientras edita.

### Parte 1 — Justificaciones Técnicas (comentarios en CSS)

1. **`position: relative` en `.avatar-wrapper`:** Se usa para crear un *containing block* que permita posicionar el badge (`.badge`) con `position: absolute` relativo al avatar, manteniendo la relación espacial independiente del layout general.

2. **`clamp()` en `.profile-card__name`:** Se usa `clamp(1.6rem, 4vw, 2.5rem)` para lograr tipografía fluida que escale de forma continua entre un tamaño mínimo y máximo sin necesidad de múltiples media queries con saltos discretos.

3. **Combinador hijo directo (`>`) en `.skills__list > .skills__item`:** Se usa para aplicar estilos solo a los `<li>` hijos directos de la lista, evitando que se propaguen a posibles sublistas anidadas y asegurando un selector más preciso y autodocumentado.

### Parte 2 — Diseño Responsivo del Dashboard

**Breakpoint elegido:** `768px`

**Justificación:** El breakpoint de 768px es el punto estándar donde los dispositivos tablet en orientación vertical dejan de tener espacio horizontal suficiente para mostrar un sidebar fijo de ~250px junto al área de contenido principal. Por debajo de este ancho, la distribución de dos columnas se vuelve ilegible.

**Estrategia elegida:** Estrategia Grid — Redefinir `grid-template-areas` a una sola columna

**Justificación:** Se eligió la Estrategia Grid porque permite reorganizar completamente el layout del dashboard dentro de la media query simplemente redefiniendo:
- `grid-template-columns` de `var(--sidebar-w) 1fr` a `1fr`
- `grid-template-areas` de `"sidebar topbar" / "sidebar main"` a `"topbar" / "sidebar" / "main"`

Esto reapila el sidebar debajo del topbar de forma natural, sin necesidad de duplicar HTML, ocultar/mostrar elementos destructivamente, ni cambiar de sistema de layout. Toda la estructura semántica permanece intacta y el CSS es fácil de mantener. La alternativa basada en Flexbox requeriría usar `order` y `display: none/block` para reorganizar los elementos, lo cual es más frágil y menos semántico.

### Parte 2 — Técnicas CSS Específicas

| Técnica | Elemento | Propiedad |
|---|---|---|
| CSS Grid áreas | `.app-layout` | `grid-template-areas` |
| Flexbox columna | `.sidebar` | `flex-direction: column` |
| Flexbox distribución | `.topbar` | `justify-content: space-between` |
| Grid auto-fill | `.stats-row` | `repeat(auto-fill, minmax(200px, 1fr))` |
| Grid 2fr 1fr | `.content-row` | `grid-template-columns: 2fr 1fr` |
| Colocación explícita | `.card--notes` | `grid-column: 1 / -1` |
| Franjas zebra | `tbody tr:nth-child(even)` | `background` (respeta `:hover`) |

---

## Cómo Visualizar

1. Clonar o descargar el repositorio.
2. Abrir `parte-1-perfil-css3/index.html` en el navegador para ver la Página de Perfil.
3. Abrir `parte-2-dashboard-grid/index.html` en el navegador para ver el Dashboard.
4. Redimensionar la ventana del navegador (o usar DevTools responsive) para verificar el comportamiento adaptable.

---

## Tecnologías Utilizadas

- HTML5 semántico
- CSS3 (Custom Properties, Grid, Flexbox, `clamp()`, pseudo-clases, `box-sizing: border-box`)
- Sin frameworks CSS externos

---

## Commits del Repositorio

El historial de commits sigue los checkpoints exigidos por la rúbrica del laboratorio:

1. `feat: estructura HTML y CSS base de la página de perfil (Parte 1)`
2. `feat: header fijo, tarjeta con avatar/badge y tipografía fluida`
3. `feat: formulario de contacto con validación Estrategia A`
4. `feat: estructura HTML y CSS base del dashboard (Parte 2)`
5. `feat: grid areas, sidebar flexbox, topbar y stats-row`
6. `feat: content-row, tabla con franjas zebra y card--notes`
7. `feat: responsive 768px con Estrategia Grid`
8. `docs: README con decisiones de diseño y justificaciones`
9. `docs: evidencias y capturas de pantalla de la entrega`

---

## Evidencias y Capturas

Las capturas de pantalla que respaldan la entrega se encuentran organizadas en la carpeta `capturas/`:

### Parte 1 — Página de Perfil
- `capturas/Parte 1/PerfilCompleto.png`: Vista completa de la página de perfil en escritorio.
- `capturas/Parte 1/AvatarBadge.png`: Detalle del badge posicionado con `position: absolute` sobre `.avatar-wrapper` con `position: relative`.
- `capturas/Parte 1/Habilidades.png`: Cuadrícula de habilidades estilizada con el combinador hijo directo `>`.
- `capturas/Parte 1/FormularioVacio.png`: Formulario sin campos en rojo al cargar (Estrategia A con `:not(:placeholder-shown)`).
- `capturas/Parte 1/FormularioInvalido.png`: Validación nativa activa con borde rojo al escribir un valor incorrecto.
- `capturas/Parte 1/PerfilResponsive.png`: Adaptabilidad en vista móvil.

### Parte 2 — Dashboard Responsivo
- `capturas/Parte 2/DashBoardCompleto.png`: Layout general con CSS Grid areas, sidebar Flexbox, topbar y stats-row.
- `capturas/Parte 2/TablaZebra.png`: Tabla de proyectos con franjas zebra (`tbody tr:nth-child(even)`).
- `capturas/Parte 2/TablaHouver.png`: Efecto `:hover` interactivo en las filas de la tabla.
- `capturas/Parte 2/NotasRapidas.png`: Tarjeta `.card--notes` abarcando ambas columnas con `grid-column: 1 / -1`.
- `capturas/Parte 2/DashBoardResponsive.png`: Comportamiento responsive a 768px con la Estrategia Grid en una sola columna.

---

*© 2025 — Julian Dallos · Programación Web · Unidad 3*
