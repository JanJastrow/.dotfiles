#!/usr/bin/env bash
set -uo pipefail

# Comment out all URLs in this apt source
sudo sed -i'' -e 's/^\(\s\+\)\([^#]\)/\1# \2/' /etc/apt/apt.conf.d/20apt-esm-hook.conf

# Also here
sudo sed -i'' -e '/^[^#]/ s/^/# /' /var/lib/ubuntu-advantage/apt-esm/etc/apt/sources.list.d/ubuntu-esm-apps.sources
