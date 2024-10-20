#!/usr/bin/env bash
set -uo pipefail

# Backup folder
BACKUP_MAIN="$HOME/backups"
mkdir -p $BACKUP_MAIN

# Copy iptables rules
if [ -d "/etc/iptables/" ]; then
	mkdir -p $BACKUP_MAIN/iptables
	rm $BACKUP_MAIN/iptables/rules.*
	sudo cp /etc/iptables/rules.v4 $BACKUP_MAIN/iptables/
	sudo cp /etc/iptables/rules.v6 $BACKUP_MAIN/iptables/
fi

# Copy LXC confs
if [ -e "/etc/pve/lxc/" ]; then
	mkdir -p $BACKUP_MAIN/lxc
	rm $BACKUP_MAIN/lxc/*.conf
	sudo cp -R /etc/pve/lxc/* $BACKUP_MAIN/lxc/
fi

# Change owner
sudo chown -R $USER:$USER $BACKUP_MAIN
