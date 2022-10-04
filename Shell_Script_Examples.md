1. # Getting server inventory:-

```
server_name=$(uname -n)
ip_address=$(ifconfig | grep inet | awk 'NR==1{print $2}')
os_type=$(uname)
up_time=$(uptime | awk '{print $3}') 
echo "server-name, ip-address,os-type,up-time" > server-info.csv
echo "1.$server_name,$ip_address,$ip_address,$ip_address" >> server-info.csv
```
---

2. # Clear the logs old 30 days
```
logs=$(find /tmp/logs -type f -name '*.log' -mtime 30 -exec rm -f {} \;)
echo "logs older then 30 day is deleted: ${logs}
```
---


3. # Cpu utilization is more then 80% needs to get an alert

```
!#/bin/bash
cpuuser=$(cat /proc/loadavg | awk '{print $3}' | cut -f 1 -d '.')
if [ ${cpuuser} -ge 80% ]
then
subject="Attention: cpu utilization is reached hish $(hostanme) at  $(date)"
message="/tmp/mail.out
TO="example@gmail.com"
echo "CPU current usage is: $cpuuser%" >> $message
mail -s "${subject}" "${To}" < ${message}
else
echo "cpu utilization is normal usage"
fi
```

---



4. # File system is using high memory usage

```
memory_usage=$(df -h | awk 'NR==3 {print $2}')
if [ ${memory_uasge} -ge 30% ]
then
echo "this file system is using more memory usage more then 30%: ${memory_usage}
else
echo "this file system is normal condition"
fi
```
---

 
6. # Shell Script to check SSL expiry dates and send a report 

```
#!/bin/bash
DOMAINLIST="hp.com github.com google.com"
To=example.mail.com
EXPIRYALERTDAYS=15
LOGFILE=/tmp/SSLreport.txt
echo "" > $LOGFILE

for Domain in ($DOMAINLIST)
do
EXPIRY=$( echo | openssl s_client -servername $DOMAIN -connect $DOMAIN:443 2>/dev/null | openssl x509 -noout -dates | grep notAfter | sed 's/notAfter=//')
EXPIRYSIMPLE=$( date -d "$EXPIRY" +%F )
EXPIRYSEC=$(date -d "$EXPIRY" +%s)
TODAYSEC=$(date +%s)
EXPIRYCALC=$(echo "($EXPIRYSEC-$TODAYSEC)/86400" | bc )
if [ $EXPIRYCALC -lt $EXPIRYALERTDAYS ];
then
echo "######ALERT####### $DOMAIN Cert needs to be renewed." >> $LOGFILE
fi
echo "$EXPIRYSIMPLE - $DOMAIN expires (in $EXPIRYCALC days)" >> $LOGFILE
done
```

---





