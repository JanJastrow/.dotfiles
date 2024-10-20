#!/usr/bin/env bash
set -uo pipefail

# Delete logs older than 7 days
sudo journalctl --vacuum-time=7days

# Delete other archived log files
sudo rm /var/log/*.gz
