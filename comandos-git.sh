#!/bin/bash
# ============================================================
# Script de commits para: Dallos_Post1_U3
# Autores: Julian Dallos
# ============================================================
# INSTRUCCIONES:
# 1. Crear el repositorio "Dallos_Post1_U3" en GitHub (vacío, sin README).
# 2. Abrir Git Bash en la carpeta raíz del proyecto.
# 3. Ejecutar: bash comandos-git.sh
# ============================================================

# --- Configuración inicial ---
git init
git branch -M main

# --- Commit 1: Estructura HTML y CSS base de la Parte 1 ---
git add parte-1-perfil-css3/index.html
git add parte-1-perfil-css3/img/perfil.jpg
git commit -m "feat: estructura HTML y CSS base de la página de perfil (Parte 1)"

# --- Commit 2: Header fijo, tarjeta avatar/badge, tipografía fluida ---
git add parte-1-perfil-css3/css/estilos.css
git commit -m "feat: header fijo, tarjeta con avatar/badge y tipografía fluida"

# --- Commit 3: Formulario con validación Estrategia A ---
git add -A parte-1-perfil-css3/
git commit -m "feat: formulario de contacto con validación Estrategia A"

# --- Commit 4: Estructura HTML y CSS base del dashboard (Parte 2) ---
git add parte-2-dashboard-grid/index.html
git commit -m "feat: estructura HTML y CSS base del dashboard (Parte 2)"

# --- Commit 5: Grid areas, sidebar flexbox, topbar y stats-row ---
git add parte-2-dashboard-grid/css/dashboard.css
git commit -m "feat: grid areas, sidebar flexbox, topbar y stats-row"

# --- Commit 6: Content-row, tabla zebra y card--notes ---
git add -A parte-2-dashboard-grid/
git commit -m "feat: content-row, tabla con franjas zebra y card--notes"

# --- Commit 7: Responsive 768px con Estrategia Grid ---
git add parte-1-perfil-css3/
git add parte-2-dashboard-grid/
git commit -m "feat: responsive 768px con Estrategia Grid"

# --- Commit 8: README con decisiones de diseño ---
git add README.md
git add comandos-git.sh
git commit -m "docs: README con decisiones de diseño y justificaciones"

# --- Commit 9: Evidencias y capturas de pantalla ---
git add capturas/
git commit -m "docs: evidencias y capturas de pantalla de la entrega"

# --- Push al repositorio remoto ---
# IMPORTANTE: Reemplazar <TU-USUARIO> con el usuario de GitHub real
git remote add origin https://github.com/<TU-USUARIO>/Dallos_Post1_U3.git
git push -u origin main

echo ""
echo "✅ Todos los commits han sido realizados y el push fue exitoso."
echo "🔗 Verifica en: https://github.com/<TU-USUARIO>/Dallos_Post1_U3"
