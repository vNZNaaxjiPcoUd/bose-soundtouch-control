#!/bin/bash

# Sound Touch Speaker IP/PORT
IP="192.168.1.125"
PORT="17000"

# Device Configuration
device='/dev/tcp/'$IP'/'$PORT

# Help Information
help=$"
Bose SoundTouch App\n
\n
Help:\n
vvbose {power|up|u|down|d|v #|volume|#|presets|prev|next|play|stop|pause|mute|aux|now}\n
\n
where:\n
power   - toggles the speaker ON/OFF\n
up      - increases the volume\n
down    - decreases the volume\n
volume  - display the current volume\n
1-6     - select preset 1..6 (bose 1 = station preset 1)\n
presets - show current preset information\n
mute    - mute\n
now     - status now\n"

case $1 in
  power|on|off)
    echo "toggle the power"
    echo 'sys power' > $device
    ;;
  up)
    echo "volume +5"
    echo 'sys volume up 5' > $device
    ;;
  down)
    echo "volume -5"
    echo 'sys volume down 5' > $device 
    ;;
  1|2|3|4|5|6)
    echo 'preset station '$1''
    echo 'sys presetkey '$1' p' > $device
    ;;
  volume)
    volume="$(echo 'sys volume' | nc $IP $PORT -w 2 | awk 'NR==1{print $5}')"
    echo 'volume is currently set to '$volume
    ;;
  presets)
    presets="$(echo 'ws getpresets' | nc $IP $PORT -w 2 | sed -n '/itemName/{n;p}' | sed 's/.*text://;s/\"//g')"

    echo 'volume is currently set to '$volume

    declare preset=(0 1 2 3 4 5 6)
    preset[1]="$(echo "$presets" | awk 'NR==1 {print}')"
    preset[2]="$(echo "$presets" | awk 'NR==2 {print}')"
    preset[3]="$(echo "$presets" | awk 'NR==3 {print}')"
    preset[4]="$(echo "$presets" | awk 'NR==4 {print}')"
    preset[5]="$(echo "$presets" | awk 'NR==5 {print}')"
    preset[6]="$(echo "$presets" | awk 'NR==6 {print}')"
    echo 'presets are: '
    echo '1) '${preset[1]}
    echo '2) '${preset[2]}
    echo '3) '${preset[3]}
    echo '4) '${preset[4]}
    echo '5) '${preset[5]}
    echo '6) '${preset[6]}
    ;;
  prev)
    echo "prev"
    echo 'key prev' > $device
    ;;
  next)
    echo "next"
    echo 'key next' > $device
    ;;
  play)
    echo "play"
    echo 'key play' > $device
    ;;
  stop)
    echo "stop"
    echo 'key stop' > $device
    ;;
  pause)
    echo "pause"
    echo 'key pause' > $device
    ;;
  mute)
    echo "mute"
    echo 'key mute' > $device
    ;;
  vu|u)
    echo "volume +1"
    echo 'key volume_up' > $device
    ;;
  vd|d)
    echo "volume -1"
    echo 'key volume_down' > $device
    ;;
  v)
    if [[ ! $2 ]] ; then 
      echo 'no number'
      exit 1
    fi
    re='^([0-9]|[1-9][0-9])$'
    if ! [[ $2 =~ $re ]] ; then
      echo "error number "$2; exit 1
    fi
    echo "set volume $2"
    echo 'sys volume '$2 > $device
    ;;
  aux)
    echo "aux input"
    echo 'key aux' > $device
    ;;
  now|status)
    echo "status now"
    volume="$(echo 'sys volume' | nc $IP $PORT -w 2 | awk 'NR==1{print $5}')"
    presets="$(echo 'ws getpresets' | nc $IP $PORT -w 2 | sed -n '/itemName/{n;p}' | sed 's/.*text://;s/\"//g')"

    echo 'volume is currently set to '$volume

    declare preset=(0 1 2 3 4 5 6)
    preset[1]="$(echo "$presets" | awk 'NR==1 {print}')"
    preset[2]="$(echo "$presets" | awk 'NR==2 {print}')"
    preset[3]="$(echo "$presets" | awk 'NR==3 {print}')"
    preset[4]="$(echo "$presets" | awk 'NR==4 {print}')"
    preset[5]="$(echo "$presets" | awk 'NR==5 {print}')"
    preset[6]="$(echo "$presets" | awk 'NR==6 {print}')"
    echo 'presets are: '
    echo '1) '${preset[1]}
    echo '2) '${preset[2]}
    echo '3) '${preset[3]}
    echo '4) '${preset[4]}
    echo '5) '${preset[5]}
    echo '6) '${preset[6]}

    ;;
  *)
    echo -e $help
esac
