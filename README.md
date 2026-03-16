# Bitacora de abordo

Pequena web estatica para mostrar el contenido de `diario.md`.

## Archivos

- `index.html`: estructura principal
- `styles.css`: estilos
- `app.js`: render del diario
- `data.js`: copia utilizable del diario para abrir la web en local
- `sync-diario.ps1`: sincroniza `diario.md` con `data.js`

## Uso

1. Ejecuta `.\sync-diario.ps1` dentro de esta carpeta cuando cambie `diario.md`.
2. Abre `index.html` en el navegador.
