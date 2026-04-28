INSTALL_DIR=$HOME/.local/bin/vhob
SYSTEMD_DIR=$HOME/.config/systemd/user
APP_DIR=$HOME/.local/share/applications
AUTOSTART_DIR=$HOME/.config/autostart

configure() {
    local param=$1
    local value="$2"
    sed "s|@$param@|$value|g"    
}