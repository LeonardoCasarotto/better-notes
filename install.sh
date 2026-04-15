#!/bin/bash
# Legge la versione dal file typst.toml
VERSION=$(grep version typst.toml | cut -d '"' -f 2)
DEST="$HOME/Library/Application Support/typst/packages/local/better-notes/$VERSION"

# Crea la cartella per quella versione e copia i file
mkdir -p "$DEST"
cp  -a ./src/. ./typst.toml "$DEST"

echo "✅ Package better-notes v$VERSION successfully installed!"