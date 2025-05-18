#!/bin/bash
set -euo pipefail

DOTFILES_DIR="$HOME/dotfiles"

backup_and_link() {
  local source=$1
  local target=$2

  if [ -L "$target" ]; then
    echo "Removing existing symlink $target"
    rm "$target"
  elif [ -e "$target" ]; then
    echo "Backing up existing file/folder $target to $target.bak"
    mv "$target" "$target.bak"
  fi

  echo "Linking $source -> $target"
  ln -s "$source" "$target"
}

echo "Creating ~/.config if missing..."
mkdir -p "$HOME/.config"

echo "Linking shell and git configs..."
backup_and_link "$DOTFILES_DIR/.bashrc" "$HOME/.bashrc"
backup_and_link "$DOTFILES_DIR/.bash_logout" "$HOME/.bash_logout"
backup_and_link "$DOTFILES_DIR/.gitconfig" "$HOME/.gitconfig"

echo "Linking i3wm configs..."
backup_and_link "$DOTFILES_DIR/i3wm/dconf" "$HOME/.config/dconf"
backup_and_link "$DOTFILES_DIR/i3wm/i3" "$HOME/.config/i3"
backup_and_link "$DOTFILES_DIR/i3wm/i3status" "$HOME/.config/i3status"

echo "Linking misc configs..."
backup_and_link "$DOTFILES_DIR/obs-studio" "$HOME/.config/obs-studio"
backup_and_link "$DOTFILES_DIR/rofi" "$HOME/.config/rofi"
backup_and_link "$DOTFILES_DIR/sublime-text" "$HOME/.config/sublime-text"
backup_and_link "$DOTFILES_DIR/mango-hud" "$HOME/.config/MangoHud"
backup_and_link "$DOTFILES_DIR/zap-zap" "$HOME/.config/ZapZap"
backup_and_link "$DOTFILES_DIR/vencord" "$HOME/.config/Vencord"
backup_and_link "$DOTFILES_DIR/bleachbit" "$HOME/.config/bleachbit"
backup_and_link "$DOTFILES_DIR/virtual-box" "$HOME/.config/VirtualBox"
backup_and_link "$DOTFILES_DIR/parcellite" "$HOME/.config/parcellite"

echo "All symlinks created successfully!"
