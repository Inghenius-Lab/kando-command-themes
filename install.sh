#!/usr/bin/env bash
# install.sh — instala los 4 temas Kando de este repo.
# Copia orbital, nivel-5, root y cristal a ~/.config/kando/menu-themes/
# y, si existe kando-matugen-sync.py, genera el preset Matugen de cada uno.
set -eu
DEST="${HOME}/.config/kando/menu-themes"
mkdir -p "$DEST"
for tema in orbital nivel-5 root cristal; do
  rm -rf "${DEST}/${tema}"
  cp -r "$(dirname "$0")/${tema}" "${DEST}/${tema}"
  echo "instalado: ${tema}"
done
if [ -x "${HOME}/.local/bin/kando-matugen-sync.py" ]; then
  python3 "${HOME}/.local/bin/kando-matugen-sync.py" || true
  echo "preset Matugen generado (elige 'Matugen' en el desplegable de colores del tema)"
fi
echo "Listo. Reinicia Kando y elige el tema en Ajustes -> Appearance -> Menu Themes."
