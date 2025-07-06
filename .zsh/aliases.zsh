# Basic commands
alias fucking=sudo
alias install='sudo pacman -S --needed --noconfirm'
alias remove='sudo pacman -Rs'
alias boobies='sudo pacman -Syu'
alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias logoff='loginctl terminate-user aliaks'
alias svim='sudo vim'
alias tk='nvim ~/Documents/.token'
alias c=clear
alias a='clear && ./a.out'
alias buds='rfcomm connect rfcomm0 34:E3:FB:0C:16:01 && bluetoothctl connect 34:E3:FB:0C:16:01'
alias bt=bluetoothctl
alias btd='bluetoothctl disconnect'
alias vpn='adguardvpn-cli'
alias ls='ls --color --group-directories-first'
alias l='ls -lA'
alias mkiso='sudo mkarchiso -v -w /home/aliaks/iso/buseOS-src/output -o /home/aliaks/iso /home/aliaks/iso/buseOS-src'
alias .df='cd $HOME/.dotfiles'
alias turnip='mpvpaper -o "--loop-file" ALL /home/aliaks/Videos/turnip.mp4'
alias aliases='nvim ~/.dotfiles/.zsh/aliases.zsh'
alias gs='git status'

# Directories & Configs
alias hypr='cd /home/aliaks/.config/hypr'
alias hyprconf='hypr && nvim hyprland.conf'
alias nconf='cd ~/.config/nvim'
alias nconfplug='cd ~/.config/nvim/lua/plugins'
alias buseos='cd ~/iso/buseOS-src'
## Code directories
alias cdjava='cd ~/Code/Java/'
alias cdpy='cd ~/Code/Python/'
alias cdlua='cd ~/Code/Lua/'
alias cdhtml='cd ~/Code/HTML/'
alias cdc='cd ~/Code/C/'

alias cdlearn='cd ~/Code/Java/LEARN_MODE/"LearnMode (Swing)"/'
alias learn='cdlearn && java Main'
alias clearn='cdlearn && javac *.java && learn'

# Sd-card reader
alias sd-disable='sudo bash -c "echo 2-3 > /sys/bus/usb/drivers/usb/unbind"'
alias sd-enable='sudo bash -c "echo 2-3 > /sys/bus/usb/drivers/usb/bind"'
