function pacman-explicit --wraps='pacman -Qent' --description 'alias pacman-explicit=pacman -Qent'
  pacman -Qent $argv
        
end
