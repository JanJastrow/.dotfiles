#!/usr/bin/env bash
set -uo pipefail

# Comment out all URLs in this apt source
sudo sed -i'' -e 's/^\(\s\+\)\([^#]\)/\1# \2/' /etc/apt/apt.conf.d/20apt-esm-hook.conf
