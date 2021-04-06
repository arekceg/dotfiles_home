set fish_key_bindings fish_user_key_bindings
set -x AWS_PROFILE panek-dev 

xset r rate 300 50

alias vim "gvim -v"
alias u "sudo pacman -Syu && yay"
alias rm "rm -i"
alias ltr "ll -tr"
alias cal "cal -m"
alias del "rm -rf"
alias copy "rsync -rhvP"
alias mci "mvn clean install"

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end
