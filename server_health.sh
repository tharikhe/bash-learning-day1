#!/bin/bash


# clors
GREEN="\033[0;32m"
RED="\033[0;31m"
YELLOW="\033[1;33m"
BLUE="\033[0;34m"
NC="\033[0m"   # No Color

echo -e "${BLUE}===========================================${NC}"
echo -e "                    server health check"
echo -e "==================================================${NC}"


#cpu load

cpu_loadd=$(uptime | awk -F'load average:' '{ print $2 }' | cut -d, -f1)

# Memory Usage
memory_used=$(free -m | awk '/Mem:/ {print $3}')
memory_total=$(free -m | awk '/Mem:/ {print $2}')
memory="$memory_used / $memory_total MB"

#memory usage 
disk=$(df -h / | awk 'NR==2 {print $5}')

#uptime
uptime_info=$(uptime -p)

#ping test 
ping -c 1 google.com &> /dev/null
if [ $? -eq 0 ]; then
ping_status="${GREEN}ONLINE${NC}"
else 
ping_status="${RED}OFFLINE${NC}"
fi

echo ""
echo""
echo -e "${yellow}CPU load :${NC} $cpu_loadd"
echo -e "${yellow}Memory usage :${NC}$memory"
echo -e "${yellow}disk usage :${NC}$disk"
echo -e "${yellow}system Up time :${NC}$uptime_info"
echo -e "${yellow}ping test :${NC}$ping_status"


echo ""
echo ""
echo -e "${BLUE}==================================================${NC}"
