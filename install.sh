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

PLAT=$(uname)

if [ "$PLAT" = "Darwin" ]; then
  HOME_DIR="/Users"
elif [ "$PLAT" = "Linux" ]; then
  HOME_DIR="/home"
else
  echo "Platform $PLAT not yet supported"
fi

CONF_REPO="https://github.com/muffledMitosis/nvim.git"
BACKUP_DIR="$HOME_DIR/$USER/.config/nvim.back"
CONF_DIR="$HOME_DIR/$USER/.config/nvim"

if [ -d "$BACKUP_DIR" ]; then
  rm -rf "$BACKUP_DIR"
fi

if [ -d "$CONF_DIR" ]; then
  echo "Creating new backup"
  cp -r "$CONF_DIR" "$BACKUP_DIR"
  rm -rf "$CONF_DIR"
fi

echo "Cloning config"
git clone "$CONF_REPO" "$CONF_DIR"

