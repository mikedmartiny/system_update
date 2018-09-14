#!/bin/bash

GREEN="\033[1;32m"
NOCOLOR="\033[0m"
YELLOW='\e[0;33m'
RED='\e[1;31m'

echo

echo -e "Step 1: ${GREEN}Pre-configuring packages${NOCOLOR}"
sudo dpkg --configure -a
echo -e "${YELLOW}Step 1 completed......${NOCOLOR}"

echo

echo -e "Step 2: ${GREEN}Fix and attempt to correct a system with broken dependencies${NOCOLOR}"
sudo apt-get install -f
echo -e "${YELLOW}Step 2 completed......${NOCOLOR}"

echo

echo -e "Step 3: ${GREEN}Update apt cache${NOCOLOR}"
sudo apt-get update
echo -e "${YELLOW}Step 3 completed......${NOCOLOR}"

echo

echo -e "Step 4: ${GREEN}Upgrade packages${NOCOLOR}"
sudo apt-get upgrade
echo -e "${YELLOW}Step 4 completed......${NOCOLOR}"

echo

echo -e "Step 5: ${GREEN}Distribution upgrade${NOCOLOR}"
sudo apt-get dist-upgrade
echo -e "${YELLOW}Step 5 completed......${NOCOLOR}"

echo

echo -e "Step 6: ${GREEN}Remove unused packages${NOCOLOR}"
sudo apt-get --purge autoremove
echo -e "${YELLOW}Step 6 completed......${NOCOLOR}"

echo

echo -e "Step 7: ${GREEN}Clean up${NOCOLOR}"
        sudo apt-get autoclean
echo -e "${YELLOW}Step 7 completed......${NOCOLOR}"

echo

if [ -f /var/run/reboot-required ]; then
        echo -e "${RED}REBOOT REQUIRED!${NOCOLOR}"
        sudo reboot
fi
