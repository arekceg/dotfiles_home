set fish_key_bindings fish_user_key_bindings
alias vim "gvim -v"
alias u "sudo pacman -Syu && yay"
xset r rate 300 50

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end
