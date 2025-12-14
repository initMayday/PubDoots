# Aliases
alias rm='rm -I'
alias grep='grep --color=auto'
alias build-config="$ST_HOME/Software/declarages/local-run.sh $ST_CONFIG/PubDoots/Unique/$HOSTNAME/packages.lua && lua $ST_HOME/Software/symlink-manager/main.lua $ST_CONFIG/PubDoots/symlinks.lua"
alias edit="cd $ST_CONFIG/PubDoots"
alias editm="cd $ST_CONFIG/PubDoots/Modules"
alias editu="cd $ST_CONFIG/PubDoots/Unique/$HOSTNAME"
alias editc="cd $ST_CONFIG/PrivDoots"
alias editmc="cd $ST_CONFIG/PrivDoots/Modules"
alias edituc="cd $ST_CONFIG/PrivDoots/Unique/$HOSTNAME"
alias vim="nvim"
alias vi="nvim"
alias sudo="sudo "
alias up="sudo vpn_handler up"
alias down="sudo vpn_handler down"
alias space="du -sh ./ ; du -sh ./*"
alias printer="sudo system-config-printer"
alias emptytrash="sudo rm -r ~/.local/share/Trash/*"
alias rs="rsync -ah --info=progress2"
alias gitid-initMayday="git config user.email 'initMayday@protonmail.com'; git config user.name 'initMayday'"

if command -v eza > /dev/null 2>&1; then
    alias ls="eza --icons=always --colour=always"
fi
