#!/usr/bin/env bash
# Script: intenta exportar gerbers usando kicad-cli encontrando el primer .kicad_pcb en el repo
set -e
ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT_DIR"
PCB_FILE=$(find . -maxdepth 2 -type f -name "*.kicad_pcb" | head -n1 || true)
if [[ -z "$PCB_FILE" ]]; then
  echo "No se encontró ningún archivo .kicad_pcb en el repositorio (profundidad 2)." >&2
  exit 1
fi
mkdir -p gerbers
echo "Usando PCB: $PCB_FILE"
kicad-cli pcb export gerbers "$PCB_FILE" --output gerbers
if [[ $? -eq 0 ]]; then
  echo "Gerbers exportados a gerbers/"
else
  echo "La exportación de gerbers falló." >&2
  exit 2
fi
