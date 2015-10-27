#this script runs reverse dns lookups
#!/bin/bash

for ip in $(seq 0 255);do
  host 38.100.193.$ip |grep "megacorp" |cut -d" " -f1,5
done
