# Configuration files obey this on a best-effort basis. Do rg pika in the config folder, to see where certain values are hardcoded
export ST_USERNAME="pika"
export ST_HOME="/home/$ST_USERNAME"
export ST_CONFIG="$ST_HOME/Config"
export HOSTNAME="$(uname -n)"
#export ST_MODULES="$ST_CONFIG/Modules"
#export ST_UNIQUE="$ST_CONFIG/Unique"
#export ST_HOSTPATH="$ST_UNIQUE/$(uname -n)"

export EDITOR=nvim
