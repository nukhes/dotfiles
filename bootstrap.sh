# shell and git
ln -sf "$HOME/dotfiles/src/.bashrc" "$HOME/"
ln -sf "$HOME/dotfiles/src/.bash_logout" "$HOME/"
ln -sf "$HOME/dotfiles/src/.gitconfig" "$HOME/"
ln -sf "$HOME/dotfiles/src/fish" "$HOME/.config/"
ln -sf "$HOME/dotfiles/src/kitty" "$HOME/.config/"

# i3wm config
ln -sf "$HOME/dotfiles/src/i3wm/dconf" "$HOME/.config/"
ln -sf "$HOME/dotfiles/src/i3wm/i3" "$HOME/.config/"
ln -sf "$HOME/dotfiles/src/i3wm/i3status" "$HOME/.config/"

# misc
ln -sf "$HOME/dotfiles/src/obs-studio" "$HOME/.config/"
ln -sf "$HOME/dotfiles/src/rofi" "$HOME/.config/"
ln -sf "$HOME/dotfiles/src/sublime-text" "$HOME/.config/"
ln -sf "$HOME/dotfiles/src/MangoHud" "$HOME/.config/"
ln -sf "$HOME/dotfiles/src/ZapZap" "$HOME/.config/"
ln -sf "$HOME/dotfiles/src/Vencord" "$HOME/.config/"
ln -sf "$HOME/dotfiles/src/bleachbit" "$HOME/.config/"
ln -sf "$HOME/dotfiles/src/VirtualBox" "$HOME/.config/"
ln -sf "$HOME/dotfiles/src/parcellite" "$HOME/.config/"
ln -sf "$HOME/dotfiles/src/neofetch" "$HOME/.config/"

# install
sudo pacman -S --needed alsa-utils amd-ucode base blueman bluez-utils docker docker-compose efibootmgr eza fastfetch flameshot flatpak htop i3-wm imlib2 kitty linux-lts lxappearance nano noto-fonts-emoji pacman-contrib pavucontrol smartmontools syncthing terminus-font thunar ttf-cascadia-code-nerd ufw unzip wget wireless_tools xf86-video-amdgpu xorg-server xorg-sessreg xorg-xinit zip
sudo pacman -Syu
