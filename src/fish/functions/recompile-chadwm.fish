function recompile-chadwm --wraps='cd ~/.config/chadwm/chadwm && rm config.h && sudo make install' --description 'alias recompile-chadwm=cd ~/.config/chadwm/chadwm && rm config.h && sudo make install'
  cd ~/.config/chadwm/chadwm && sudo make install $argv
        
end
