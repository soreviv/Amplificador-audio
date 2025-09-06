# Proyecto PCB - Amplificador de audio

Este repositorio contiene plantillas iniciales para desarrollar una PCB (KiCad-friendly) del proyecto "Amplificador de audio".

Archivos existentes (conservados):
- `amplificador.html`
- `esquema.html`

Qué incluye este scaffold:
- `README.md` (este archivo) — instrucciones rápidas en español.
- `.gitignore` — reglas básicas para proyectos PCB y Node.
- `.vscode/tasks.json` — tareas para comprobar KiCad y mostrar comandos útiles.
- `BOM-template.csv` — plantilla de BOM (CSV).
- `assembly_notes.md` — notas de ensamblaje y control de calidad.
- `LICENSE` — MIT.
- `package.json` — scripts auxiliares para comprobar kicad-cli.

Requisitos previos recomendados:
- KiCad 6+ (para usar `kicad-cli`).
- Un visualizador Gerber (por ejemplo, `gerbv`).

Uso rápido

1. Comprobar que `kicad-cli` esté disponible desde la terminal del proyecto:

```bash
npm run check-kicad
```

2. Abrir las tareas de VS Code (Terminal → Ejecutar tarea) y ejecutar "Comprobar KiCad" o "Mostrar ejemplo export Gerbers".

3. Para exportar Gerbers desde KiCad (ejemplo manual):

```bash
kicad-cli pcb export gerbers <archivo.kicad_pcb> --output gerbers
```

Nota: las tareas incluidas realizan comprobaciones básicas y muestran comandos de ejemplo; adapte los nombres de archivo del proyecto antes de ejecutar exportaciones reales.

Siguientes pasos recomendados:
- Añadir los archivos del proyecto KiCad (.kicad_pro, .kicad_pcb, esquemáticos .sch, etc.).
- Completar `BOM-template.csv` tras el diseño.
- Crear un script de exportación personalizado si desea automatizar Gerbers y Fabricación.

Si quieres, puedo:
- Añadir un script real de exportación/validación que invoque directamente `kicad-cli` usando nombres de archivo detectados.
- Añadir un `Makefile` o GitHub Actions para generar Gerbers automáticamente.
