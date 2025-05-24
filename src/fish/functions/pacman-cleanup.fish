function pacman-cleanup --wraps='sudo pacman -Rns (pacman -Qdtq) ; and sudo paccache -r' --description 'alias pacman-cleanup=sudo pacman -Rns (pacman -Qdtq) ; and sudo paccache -r'
  sudo pacman -Rns (pacman -Qdtq) ; and sudo paccache -r $argv
        
end
