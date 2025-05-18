# Personal Dotfiles
This repository contains my personal dotfiles and configuration for various tools and environments, including shell, git, i3wm, and miscellaneous applications.

# Setup

1. Clone the repository:
```bash
git clone https://github.com/yourusername/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

2. Run the bootstrap script to symlink everything:
```bash
chmod +x bootstrap.sh
./bootstrap.sh
```

3. Install required packages (see below)

- sublime-text is not available in default apt repositories. To install:
- mangohud might require adding a PPA or building from source on some distros.

To install all available packages via apt:
```bash
sudo apt update
sudo apt install -y bash git i3 i3status dconf-cli obs-studio rofi bleachbit virtualbox parcellite flameshot kitty
```
