#!/bin/bash
export QT_QPA_PLATFORM=xcb
export MESA_NO_ERROR=1
export LIBGL_ALWAYS_SOFTWARE=0
export MESA_GLES_VERSION_OVERRIDE=3.2
export GALLIUM_DRIVER=virpipe

# Désactive le pipeline de rendu qui pose problème si besoin
# export MESA_LOADER_DRIVER_OVERRIDE=iris

TRINITY_BIN=$(find ~ -maxdepth 1 -name "Trinity*.AppImage" -print -quit)

if [ -z "$TRINITY_BIN" ]; then
    echo "[Erreur] AppImage Trinity introuvable !"
    exit 1
fi

"$TRINITY_BIN"