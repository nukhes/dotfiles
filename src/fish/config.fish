if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Rust environment
set -gx PATH $HOME/.cargo/bin $PATH

# Add ~/workspace/bin to path
set -gx PATH $HOME/workspace/bin $PATH

# Homebrew environment
# eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)

# ASDF configuration code
if test -z $ASDF_DATA_DIR
    set _asdf_shims "$HOME/.asdf/shims"
else
    set _asdf_shims "$ASDF_DATA_DIR/shims"
end

# Do not use fish_add_path (added in Fish 3.2) because it
# potentially changes the order of items in PATH
if not contains $_asdf_shims $PATH
    set -gx --prepend PATH $_asdf_shims
end
set --erase _asdf_shims

# Personal aliases
alias sizeof='du -h -d 1 | sort -hr'
alias update='sudo apt update -y && sudo apt upgrade -y'

# Start X Session
if test -z "$DISPLAY"; and test (tty) = "/dev/tty1"
    startx
end

