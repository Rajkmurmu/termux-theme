#!/bin/bash
clear
echo "🚀 Applying TrendScape Terminal Theme..."

# Font
if [ -f "font.ttf" ]; then
    cp font.ttf ~/.termux/font.ttf
    termux-reload-settings
    echo "🎨 Font applied!"
else
    echo "⚠️ font.ttf missing — Nerd Font not applied"
fi

# Banner + glyphs
cp banner.txt ~/banner.txt
cp glyphcheck.sh ~/glyphcheck.sh
chmod +x ~/glyphcheck.sh

# Shell config
cp .bashrc ~/.bashrc

echo "✅ Done! Restart Termux and run: ./glyphcheck.sh"
