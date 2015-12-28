#!/bin/sh
HOST=$(hostname)
IPADDR=$(curl -s http://169.254.169.254/latest/meta-data/public-ipv4)
MEM=$(grep MemTotal /proc/meminfo | awk '{ print $2 }')
CPUS=$(cat /proc/cpuinfo | grep processor | wc -l)
KERNEL=$(uname -r)
OSVER=$(cat /etc/redhat-release)

echo "<html><body>"
echo "<img src=https://upload.wikimedia.org/wikipedia/commons/thumb/1/1d/AmazonWebservices_Logo.svg/2000px-AmazonWebservices_Logo.svg.png width=200>"
echo "<pre>"
echo "Hostname:   $HOST"
echo "IP:         $IPADDR"
echo "Memory:     $MEM kB"
echo "# CPUs:     $CPUS"
echo "Kernel:     $KERNEL"
echo "OS Version: $OSVER"
echo "</pre></body></html>"
echo ""