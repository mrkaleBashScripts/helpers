alias cpu='sudo cat /sys/devices/system/cpu/cpu*/cpufreq/cpuinfo_cur_freq && sudo cat /sys/class/thermal/thermal_zone0/temp'
alias gokeychain="keychain --nogui $HOME/.ssh/id_rsa; . $HOME/.keychain/$(hostname)-sh"
alias gs='git status -sb'
alias sudo='sudo '

# ls aliases
alias l='ls -CF'
alias ll='ls -l'
alias lll='ls -ali'
alias llll='ls -auxli'
alias la='ls -A'

alias sl='ls -la|grep ^lr'
