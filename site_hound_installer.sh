#!/bin/bash

TOOL_DIR="$HOME/Site_Hound"
BIN_DIR="$HOME/bin"
SHORTCUT="$BIN_DIR/SITE-HOUND"

# -------------------- Banner --------------------
echo -e "\033[1;35m====================================\033[0m"
echo -e "\033[1;36m          SITE HOUND INSTALLER       \033[0m"
echo -e "\033[1;36m   Developer ➤ Black Zero ✘ Parves Joy\033[0m"
echo -e "\033[1;35m====================================\033[0m"

# -------------------- Termux Storage & Dependencies --------------------
echo -e "\033[1;34m[+] Granting Termux storage permission...\033[0m"
termux-setup-storage -y > /dev/null 2>&1

echo -e "\033[1;34m[+] Installing dependencies: git, python3, wget...\033[0m"
pkg install -y git python3 wget > /dev/null 2>&1

mkdir -p "$BIN_DIR" > /dev/null 2>&1

# -------------------- Clone or Update Repo --------------------
if [ -d "$TOOL_DIR" ]; then
    echo -e "\033[1;33m[*] Site_Hound exists, updating...\033[0m"
    cd "$TOOL_DIR" && git pull > /dev/null 2>&1
else
    echo -e "\033[1;34m[+] Cloning Site_Hound repository...\033[0m"
    git clone https://github.com/TEAMBCS/Site-HOUND.git "$TOOL_DIR" > /dev/null 2>&1
fi

cd "$TOOL_DIR" > /dev/null 2>&1
chmod +x * > /dev/null 2>&1

# -------------------- Install Python Requirements --------------------
echo -e "\033[1;34m[+] Installing Python requirements...\033[0m"
pip install --upgrade pip > /dev/null 2>&1
pip install -r requirements.txt > /dev/null 2>&1

# -------------------- Create WORKING Shortcut --------------------
echo -e "\033[1;34m[+] Creating SITE-HOUND shortcut...\033[0m"

# Write a small launcher script
echo -e "#!/data/data/com.termux/files/usr/bin/env bash\npython3 $TOOL_DIR/site_hound.py \"\$@\"" > "$SHORTCUT"
chmod +x "$SHORTCUT" > /dev/null 2>&1

# -------------------- PATH Update --------------------
if ! echo "$PATH" | grep -q "$BIN_DIR"; then
    if [ "$SHELL" = "/data/data/com.termux/files/usr/bin/fish" ]; then
        fish -c "set -Ux PATH \$PATH $BIN_DIR" > /dev/null 2>&1
    else
        echo "export PATH=\$PATH:$BIN_DIR" >> "$HOME/.bashrc"
        echo "export PATH=\$PATH:$BIN_DIR" >> "$HOME/.zshrc"
    fi
fi

# -------------------- Completion --------------------
echo -e "\033[1;32m====================================\033[0m"
echo -e "\033[1;33m[✔] Installation Complete!\033[0m"
echo -e "\033[1;36m[✔] Run Site Hound with: SITE-HOUND\033[0m"
echo -e "\033[1;36m[!] If command not found, restart Termux or run 'source ~/.bashrc' / 'source ~/.zshrc'\033[0m"
echo -e "\033[1;32m====================================\033[0m"
