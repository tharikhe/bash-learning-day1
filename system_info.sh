#!/bin/bash

#colors
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No color

echo -e "${BLUE}==============================================="
echo -e "         system information report"
echo -e "===============================================${NC}"
echo ""

#get system iformation

current_date=$(date "+%Y-%m-%d")
current_time=$(date "+%H:%M:%S")
current_user=$(whoami)
home_directory=$HOME
current_directory=$(pwd)
shell_type=$SHELL
hostname=$(hostname)

# Display  information

echo -e "${GREEN}Date:${NC} $current_date"
echo -e "${GREEN}time:${NC} $current_time"
echo -e "${GREEN}User:${NC} $current_user"
echo -e "${GREEN}Home directory:${NC} $home_directory"
echo -e "${GREEN}current directory :${NC} $current_directory"
echo -e "${GREEN}shell :${NC} $shell_type"
echo -e "${GREEN}name of the host :${NC} $hostname"
echo ""
echo -e "${BLUE}===============================================${NC}"
