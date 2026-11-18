# Kando Command Center Themes

Temas para [Kando](https://kando.menu), el menú pie. Cuatro diseños futuristas,
con animación suave y sin sobrecarga, evocando un centro de mando: de una nave
espacial, de una agencia gubernamental, hacker y cristal HUD.

*Kando pie-menu themes. Four futuristic command-center designs with gentle
animations: spaceship bridge, government agency, hacker terminal and crystal HUD.*

| Tema | Estilo | Color de firma |
| --- | --- | --- |
| **Orbital** | Puente de nave espacial | Cian `#35e0ff` + barrido de radar |
| **Nivel 5** | Centro de mando · agencia | Ámbar `#ffb000` + anillo de sello |
| **Root** | Centro de mando hacker | Verde fósforo `#39ff6a` + escaneo |
| **Cristal HUD** | HUD cristal en lavanda | Lavanda `#d1bcff` + violeta `#3c0090` |

## Instalar

```sh
./install.sh
```

O a mano: copiar las carpetas `orbital`, `nivel-5`, `root` y `cristal` a
`~/.config/kando/menu-themes/`, reiniciar Kando y elegir el tema en
Kando → Ajustes → Appearance → Menu Themes.

## Colores que siguen al fondo de pantalla (Matugen)

Cada tema trae dos presets de color:

- **El de su nombre** (`Orbital`, `Nivel 5`, `Root`, `Cristal HUD`): sus
  colores de firma, fijos.
- **Matugen**: sigue a los colores del fondo de pantalla. Lo genera y
  actualiza `kando-matugen-sync.py` en cada cambio de fondo (ya viene
  conectado a `theme-regenerate.sh` en el equipo del autor). Para
  activarlo, elegir el preset **Matugen** en el desplegable de colores
  del tema dentro de los ajustes de Kando.

Si instalas desde este repo en otro equipo, el preset `Matugen` se crea
solo la primera vez que corre el sync; sin él, el tema usa sus colores
de firma.

## Origen y licencia

Derivados de **Alpha Neon** (CC-BY-4.0, por digitalart3d y Elfi Ox), con
colores, velocidades y capas de animación propias. Por eso este repo es
**CC-BY-4.0**: puedes usar, modificar y compartir los temas, dando
crédito a los autores originales y a Elemental.

- `theme.json5`: nombre, colores y capas del tema.
- `theme.css`: la animación y el dibujo (anillos, barrido, sello, escaneo, escarcha).
- `presets/`: presets de color, incluido `Matugen.json`.
- `assets/`: `arrow.svg` y `ring.svg` (máscaras de la base Alpha Neon).
