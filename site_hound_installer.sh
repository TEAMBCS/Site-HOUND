#!/bin/bash

TOOL_DIR="$HOME/Site_Hound"
BIN_DIR="$HOME/bin"

# -------------------- Banner --------------------
echo -e "\033[1;35m  ====================================\033[0m"
echo -e "\033[1;36m          SITE HOUND INSTALLER        \033[0m"
echo -e "\033[1;36m   Developer ➤ Balck Zero ✘ Parves Joy\033[0m"
echo -e "\033[1;35m  ====================================\033[0m"

# -------------------- Update & Install --------------------
echo -e "\033[1;34m  [+] Updating packages...\033[0m"
pkg update -y > /dev/null 2>&1 && pkg upgrade -y > /dev/null 2>&1

echo -e "\033[1:34m  [+] Termux Storage Permission \033[0m"
termux-setup-storage -y > /dev/null 2>&1
echo -e "\033[1;34m  [+] Installing dependencies (git, python3, wget)...\033[0m"
pkg install -y git python3 wget > /dev/null 2>&1

# Create bin dir if not exists
mkdir -p "$BIN_DIR" > /dev/null 2>&1

# Clone repo or update if exists
if [ -d "$TOOL_DIR" ]; then
    echo -e "\033[1;33m  [*] Site_Hound folder exists, pulling latest changes...\033[0m"
    cd "$TOOL_DIR" && git pull > /dev/null 2>&1
else
    echo -e "\033[1;34m  [+] Cloning Site_Hound repository...\033[0m"
    git clone https://github.com/TEAMBCS/Site_HOUND.git "$TOOL_DIR" > /dev/null 2>&1
fi

cd "$TOOL_DIR" > /dev/null 2>&1

echo -e "\033[1;34m  [+] Setting execute permissions...\033[0m"
chmod +x * > /dev/null 2>&1

echo -e "\033[1;34m  [+] Installing Python requirements...\033[0m"
pip install --upgrade pip > /dev/null 2>&1
pip install -r requirements.txt > /dev/null 2>&1

# -------------------- Create Shortcut --------------------
SYMLINK="$BIN_DIR/SITE-HOUND"
echo -e "\033[1;34m  [+] Creating shortcut command 'SITE-HOUND'...\033[0m"
ln -sf "$TOOL_DIR/site_hound.py" "$SYMLINK" > /dev/null 2>&1

# -------------------- PATH Update --------------------
if [ "$SHELL" = "/data/data/com.termux/files/usr/bin/fish" ]; then
    echo -e "\033[1;34m  [*] Detected Fish shell. Updating universal PATH...\033[0m"
    fish -c "set -Ux PATH \$PATH $BIN_DIR" > /dev/null 2>&1
else
    if ! echo "$PATH" | grep -q "$BIN_DIR"; then
        echo "export PATH=\$PATH:$BIN_DIR" >> "$HOME/.bashrc"
        echo "export PATH=\$PATH:$BIN_DIR" >> "$HOME/.zshrc"
    fi
fi

# -------------------- Completion Banner --------------------
echo -e "\033[1;32m  ====================================\033[0m"
echo -e "\033[1;33m     [✔] Installation Complete!\033[0m"
echo -e "\033[1;36m  [✔] You can now run Site Hound with: SITE-HOUND\033[0m"
echo -e "\033[1;32m====================================\033[0m"
