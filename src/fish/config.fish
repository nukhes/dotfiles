if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Rust environment
set -gx PATH $HOME/.cargo/bin $PATH

# Homebrew environment
eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)

# ASDF path setup
set -gx PATH (string replace -r '^$' "$HOME/.asdf" $ASDF_DATA_DIR)/shims $PATH

# Personal aliases
alias sizeof='du -h -d 1 | sort -hr'
alias update='sudo apt update -y && sudo apt upgrade -y'
