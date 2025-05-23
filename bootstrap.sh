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
sudo pacman -S rofi git xdg-user-dirs ufw pulseaudio pulseaudio-alsa alsa-utils pavucontrol gnome-keyring seahorse breeze breeze-gtk breeze-icons qt5ct lxappearance 
sudo pacman -S kvantum kvantum-theme-materia materia-gtk-theme capitaine-cursors arc-icon-theme lxappearance
sudo pacman -S ttf-cascadia-code-nerd code 
# firewall config
ufw default deny && ufw allow from 192.168.0.0/24 && ufw limit ssh
ufw enable
systemctl enable ufw
systemctl start ufw
ufw status
