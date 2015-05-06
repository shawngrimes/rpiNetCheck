#get ip address of router
IP=$(/sbin/ip route | awk '/default/ { print $3 }')

#ping router to see if we can connect
ping -c4 $IP > /dev/null

#if ping fails
if [ $? != 0 ]
then
  #take interface down and bring it back up
  echo "No network connection, restarting wlan0"
  /sbin/ifdown 'wlan0'
  sleep 5
  /sbin/ifup --force 'wlan0'
fi
