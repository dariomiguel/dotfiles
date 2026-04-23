#!/bin/bash

echo "🔄 Sincronizando Obsidian..."

rclone bisync ~/Documents/NotasObsidian/ "Google Drive:ObsidianVault" \
  --exclude ".git/**" \
  --exclude ".obsidian/cache/**" \
  --exclude ".trash/**" \
  --verbose

if [ $? -ne 0 ]; then
  echo "⚠️ Error detectado. Ejecutando resync..."

  rclone bisync ~/Documents/NotasObsidian/ "Google Drive:ObsidianVault" \
    --resync \
    --exclude ".git/**" \
    --exclude ".obsidian/cache/**" \
    --exclude ".trash/**" \
    --verbose
else
  echo "✅ Sincronización OK"
fi
