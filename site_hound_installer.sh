#!/bin/bash

#===========================#
#  SITE-HOUND INSTALLER 🛠️ #
#===========================#

clear
echo
echo "🐺 SITE-HOUND INSTALLER by TEAM BCS"
echo "--------------------------------------"
sleep 1

echo "[+] Cloning SITE-HOUND tool..."
git clone https://github.com/TEAMBCS/Site-HOUND.git "$HOME/Site_HOUND" > /dev/null 2>&1

cd "$HOME/Site_HOUND" || { echo "❌ Clone failed!"; exit 1; }

echo "[+] Installing Python requirements..."
pip install --upgrade pip > /dev/null 2>&1
pip install -r requirements.txt > /dev/null 2>&1

echo "[+] Creating launcher script..."
echo "python3 \$HOME/Site_HOUND/site_hound.py" > "$HOME/.site-hound-run"
chmod +x "$HOME/.site-hound-run"

echo "[+] Adding shortcut command..."

# Add shortcut to Bash, Zsh, and Profile
for file in "$HOME/.bashrc" "$HOME/.zshrc" "$HOME/.profile"; do
  if [ -f "$file" ] && ! grep -q "alias SITE-HOUND=" "$file"; then
    echo "alias SITE-HOUND='bash \$HOME/.site-hound-run'" >> "$file"
  fi
done

# Fish shell support
if [ -d "$HOME/.config/fish/functions" ]; then
  echo "function SITE-HOUND; python3 \$HOME/Site_HOUND/site_hound.py; end" > "$HOME/.config/fish/functions/SITE-HOUND.fish"
fi

echo
echo "✅ SITE-HOUND Installed Successfully!"
echo "👉 Type: SITE-HOUND"
echo "🔄 If not working, run: source ~/.bashrc OR restart Termux"
echo
