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

## Required Packages (Debian/Ubuntu based)
### Shell and Git
- bash (usually pre-installed)
- git

### i3 Window Manager
- i3 — The i3 window manager
- i3status — Status bar for i3
- dconf-cli — For dconf configuration management

### Miscellaneous Applications
- obs-studio — Screen recording/streaming
- rofi — Application launcher and dmenu replacement
- sublime-text — Text editor
- mangohud — Vulkan/OpenGL overlay for monitoring FPS and stats
- bleachbit — System cleaner
- virtualbox — Virtual machine manager
- parcellite — Lightweight clipboard manager

### Optional / Third-party Packages
- sublime-text is not available in default apt repositories. To install:
- mangohud might require adding a PPA or building from source on some distros.

## Install Command Example
To install all available packages via apt:
```bash
sudo apt update
sudo apt install -y bash git i3 i3status dconf-cli obs-studio rofi bleachbit virtualbox parcellite
```
