if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Warren Custom Stuff

# Autojump
[ -f /opt/homebrew/share/autojump/autojump.fish ]; and source /opt/homebrew/share/autojump/autojump.fish

# Add Homebrew to Path
fish_add_path -p /opt/homebrew/bin
# Go Code
alias gmi="go mod init"

# Git Functions
alias gi="git init"
alias gs="git status"
alias gA="git add *"
alias ga="git add"
alias gr="git pull --rebase"
alias gp="git push"
alias gc="git commit -m"
alias e="exit"
alias rstudio='/Applications/RStudio.app/Contents/MacOS/RStudio'
alias gtkwave='/Applications/gtkwave.app/Contents/Resources/bin/gtkwave'
fish_add_path "/opt/homebrew/anaconda3/bin/"
function fish_user_key_bindings
  # ...
  bind \e\e 'thefuck-command-line'  # Bind EscEsc to thefuck
  # ...
end
fish_vi_key_bindings


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /opt/homebrew/anaconda3/bin/conda "shell.fish" "hook" $argv | source
starship init fish | source
# <<< conda initialize <<<

