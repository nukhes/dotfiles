# Personal Dotfiles
This repository contains my personal dotfiles and configuration for various tools and environments, including shell, git, i3wm, and miscellaneous applications.

## Setup Instructions
1. Clone the repository:
```bash
git clone https://github.com/yourusername/dotfiles.git ~/dotfiles
cd ~/dotfiles
```
2. Run the bootstrap script to create symlinks:
```bash
chmod +x bootstrap.sh
./bootstrap.sh
```

This will:
- Backup any existing conflicting config files/folders (by adding `.bak` suffix)
- Create symbolic links from the dotfiles repo to your home directory and `~/.config`

3. Install required packages (see below)
### Optional / Third-party Packages
- sublime-text is not available in default apt repositories. To install:
- mangohud might require adding a PPA or building from source on some distros.

## Install Command Example
To install all available packages via apt:
```bash
sudo apt update
sudo apt install -y bash git i3 i3status dconf-cli obs-studio rofi bleachbit virtualbox parcellite flameshot kitty
```
