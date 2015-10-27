for ip in $(seq 0 255); do
ping -c 1 192.168.43.$ip |grep "bytes from" |cut -d" " -f 4|cut -d":" -f1 &
done
