set fish_key_bindings fish_user_key_bindings
set -x AWS_PROFILE panek-dev 
set -x EDITOR /usr/bin/gvim -v

xset r rate 300 50

alias vim "gvim -v"
alias u "sudo pacman -Syu && yay"
alias rm "rm -i"
alias ltr "ll -tr"
alias cal "cal -m"
alias del "rm -rf"
alias copy "rsync -rhvP"
alias mci "mvn clean install"
alias mct "mvn clean test"
alias fzfv "gvim -v -o ('fzf')"
alias cdn "cd ~/workspace/notes && ls"
alias cdt "cd ~/workspace/tickets && ls"
alias cdws "cd ~/workspace && ls"
alias cdcb "cd ~/workspace/codebase && ls"

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end
