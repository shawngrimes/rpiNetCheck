# rpiNetCheck
Raspberry Pi network check script.  The script checks if the pi can ping it’s default router and if it can’t, it takes down the wlan0 interface and brings it back up.  You may need to edit which interface you want to take down. 

## Install Directions

1. Copy to /usr/local/bin/

2. Add cron job e.g.:
`crontab -e
` ———
 `/5 \* \* \* \* /usr/bin/sudo -H /usr/local/bin/checkwifi.sh >> /dev/null 2>&1
` ———

3. Make executable `sudo chmod a+x /usr/local/bin/rpiNetCheck.sh`