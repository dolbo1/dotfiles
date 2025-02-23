# Basic commands
alias fucking=sudo
alias install='sudo pacman -S --needed'
alias boobies='sudo pacman -Syu'
alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias logoff='loginctl terminate-user aliaks'
alias svim='sudo vim'
alias bt=bluetoothctl
alias dotfiles='cd ~/Documents/dotfiles'
alias tk='nvim ~/Documents/.token'

# Directories
alias 'cd..'='cd ..'
alias hypr='nvim /home/aliaks/.config/hypr/hyprland.conf'
alias aliases='nvim $ZSH_CUSTOM/aliases.zsh'
alias nconf='cd ~/.config/nvim'
alias nconfplug='cd ~/.config/nvim/lua/plugins'
## Code directories
alias cdjava='cd ~/Code/Java/'
alias cdpy='cd ~/Code/Python'
alias cdlua='cd ~/Code/Lua'
alias cdhtml='cd ~/Code/HTML/'

# Sd-card reader
alias sd-disable='sudo bash -c "echo 2-3 > /sys/bus/usb/drivers/usb/unbind"'
alias sd-enable='sudo bash -c "echo 2-3 > /sys/bus/usb/drivers/usb/bind"'

