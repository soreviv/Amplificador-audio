Proyecto KiCad mínimo — amplificador

He creado un proyecto KiCad mínimo generado automáticamente:
- `amplificador.kicad_pro`
- `amplificador.kicad_sch`
- `amplificador.kicad_pcb`

Estos archivos son un punto de partida; ábrelos en KiCad (versión 6/7) y completa:
- Verifica footprints y pinout de `IC1` (IRS2092S).
- Ajusta huellas de MOSFETs (TO-220) y agrega pads mecánicos/disipador.
- Ejecuta ERC y DRC desde la GUI y corrige advertencias.

Si quieres, ahora intento ejecutar checks automáticos (ERC/DRC) con `kicad-cli` y
trataré de corregir errores simples.
