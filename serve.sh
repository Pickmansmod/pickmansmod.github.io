#!/usr/bin/env bash
# Script para iniciar el servidor local de Notas de Taller con recarga automática

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
VAULT_DIR="/home/pickmansmod/Prometeo/Vault/04 - Proyectos/notas-taller"

cd "$DIR"

echo "=========================================================="
echo "🌱 Levantando 'Notas de Taller' en http://localhost:4000"
echo "Notas e imágenes vinculadas a Obsidian en:"
echo "👉 $VAULT_DIR"
echo "Presiona Ctrl+C para detener."
echo "=========================================================="

podman run --rm \
  --name notas_taller_jekyll \
  -v "$DIR:/srv/jekyll:Z" \
  -v /mnt/sata/Prometeo:/mnt/sata/Prometeo \
  -v /home/pickmansmod/Prometeo:/home/pickmansmod/Prometeo \
  -p 4000:4000 \
  docker.io/jekyll/jekyll:latest \
  jekyll serve --host 0.0.0.0 --port 4000 --force_polling --watch
