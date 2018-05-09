#!/bin/bash

if [ "$(whoami)" != "root" ]
then
    sudo su -s "$0"
    exit
fi

echo -n "Are you activating your eGPU (Y) or deactivating (n)? Enter Y/n: "
read activate

if [ "$activate" = "Y" ]; then
	read -p "Plug in eGPU, then press any key to continue... " -n1 -s
	echo "Scanning PCI-E devices"

	sleep 3s

	echo 1 > /sys/bus/pci/rescan

	sleep 2s

	echo "Activating eGPU"
	prime-select nvidia

	sleep 0.5s

	read -p "Press any key to restart gdm onto eGPU monitor... " -n1 -s
	service gdm restart
fi
if [ "$activate" = "n" ]; then
	echo "Deactivating eGPU"
	prime-select intel

	sleep 0.5s

	read -p "Press any key to restart gdm onto internal monitor... " -n1 -s
	service gdm restart
fi
