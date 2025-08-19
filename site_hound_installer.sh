#!/bin/bash

# -------------------- Directories --------------------
TOOL_DIR="$HOME/Site_HOUND"
BIN_DIR="$HOME/bin"
LAUNCHER="$BIN_DIR/SITE-HOUND"

# -------------------- Banner --------------------
echo -e "\033[1;35m  ====================================\033[0m"
echo -e "\033[1;36m          SITE HOUND INSTALLER        \033[0m"
echo -e "\033[1;36m   Developer ➤ Black Zero ✘ Parves Joy\033[0m"
echo -e "\033[1;35m  ====================================\033[0m"

# -------------------- Termux Storage Permission --------------------
echo -e "\033[1;34m  [+] Granting Termux Storage Permission...\033[0m"
termux-setup-storage -y > /dev/null 2>&1

# -------------------- Install Dependencies --------------------
echo -e "\033[1;34m  [+] Installing dependencies (git, python3, wget)...\033[0m"
pkg install -y git python3 wget > /dev/null 2>&1

# -------------------- Create bin dir --------------------
mkdir -p "$BIN_DIR" > /dev/null 2>&1

# -------------------- Clone or Update Repo --------------------
if [ -d "$TOOL_DIR" ]; then
    echo -e "\033[1;33m  [*] Site_Hound folder exists, pulling latest changes...\033[0m"
    cd "$TOOL_DIR" && git pull > /dev/null 2>&1
else
    echo -e "\033[1;34m  [+] Cloning Site_Hound repository...\033[0m"
    git clone https://github.com/TEAMBCS/Site-HOUND.git "$TOOL_DIR" > /dev/null 2>&1
fi

cd "$TOOL_DIR" || exit

# -------------------- Set Execute Permissions --------------------
echo -e "\033[1;34m  [+] Setting execute permissions...\033[0m"
chmod +x * > /dev/null 2>&1

# -------------------- Install Python Requirements --------------------
echo -e "\033[1;34m  [+] Installing Python requirements...\033[0m"
pip install --upgrade pip > /dev/null 2>&1
pip install -r requirements.txt > /dev/null 2>&1

# -------------------- Create SITE-HOUND Launcher --------------------
echo -e "\033[1;34m  [+] Creating SITE-HOUND launcher...\033[0m"
cat > "$LAUNCHER" << EOF
#!/data/data/com.termux/files/usr/bin/env python3
import sys
import os
sys.path.insert(0, os.path.join(os.environ["HOME"], "Site_HOUND"))
exec(open(os.path.join(os.environ["HOME"], "Site_HOUND", "site_hound.py")).read())
EOF

chmod +x "$LAUNCHER"

# -------------------- Add BIN_DIR to PATH --------------------
if [ "$SHELL" = "/data/data/com.termux/files/usr/bin/fish" ]; then
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
echo -e "\033[1;32m  ====================================\033[0m"
