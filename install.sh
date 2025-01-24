echo "Setting up Neovim..."

# Deps
# Neovim >= 0.8
# Git >= 2.19
# Luarocks
# Nerdfont (optional)
# Python 3
# pip
# node >= 22lts

# TODO: Check for deps
# TODO: Install deps

CONF_REPO="https://github.com/muffledMitosis/nvim.git"
BACKUP_DIR="/home/$USER/.config/nvim.back"
CONF_DIR="/home/$USER/.config/nvim"

if [ -d "$BACKUP_DIR" ]; then
  rm -rf "$BACKUP_DIR"
fi

echo "Cloning config"
rm -rf "$CONF_DIR"
git clone "$CONF_REPO" "$CONF_DIR"

echo "Creating new backup"
cp -r "$CONF_DIR" "$BACKUP_DIR"
