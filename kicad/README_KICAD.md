Plantillas KiCad (carpeta kicad)

Contenido:
- `amplificador.kicad_pro` — plantilla de proyecto (comentarios)
- `amplificador.kicad_sch` — placeholder de esquemático
- `amplificador.kicad_pcb` — placeholder de PCB

Cómo convertir estas plantillas en un proyecto válido:

1) Abrir KiCad (GUI) en la carpeta del proyecto:
   - `kiCad` en el menú de tu sistema o ejecutar `kicad` desde la terminal.

2) Crear un nuevo proyecto con nombre "amplificador":
   - File -> New Project -> seleccionar carpeta del repositorio -> nombre "amplificador"
   - Esto generará archivos reales: `amplificador.kicad_pro`, `amplificador.kicad_sch`, `amplificador.kicad_pcb`.

3) Diseñar el esquemático (Eeschema) y transferir el netlist a Pcbnew.

4) En Pcbnew, diseñar el PCB, configurar footprints y reglas, y guardar.

5) Exportar Gerbers desde Pcbnew o usando `kicad-cli`:

```bash
# ejemplo (ajusta el nombre de archivo si es diferente):
kicad-cli pcb export gerbers amplificador.kicad_pcb --output gerbers
```

Si quieres, puedo ahora:
- Intentar generar automáticamente un proyecto KiCad real usando `kicad-cli` si me autorizas (crearé esquemático y pcb mínimos).
- O crear un proyecto básico con un par de componentes pasivos conectados (resistores, condensador, con footprints) como ejemplo; dime si prefieres eso.
