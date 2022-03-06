if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Warren Custom Stuff

# Autojump
[ -f /opt/homebrew/share/autojump/autojump.fish ]; and source /opt/homebrew/share/autojump/autojump.fish

# Add Homebrew to Path
fish_add_path -p /opt/homebrew/bin

alias gmi="go mod init"
alias gi="git init"
alias gA="git add *"
alias ga="git add"
alias gr="git pull --rebase"
alias gp="git push"
alias gc="git commit -m"
alias e="exit"
alias gtkwave='/Applications/gtkwave.app/Contents/Resources/bin/gtkwave'

function fish_user_key_bindings
  # ...
  bind \e\e 'thefuck-command-line'  # Bind EscEsc to thefuck
  # ...
end
fish_vi_key_bindings
