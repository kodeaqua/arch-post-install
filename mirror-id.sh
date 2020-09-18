#!/bin/bash
# Welcome!
echo "> Running script..."

# Set var for mirrorlist
export MIRROR=/etc/pacman.d/mirrorlist

# Creating backup for original mirrorlist
sudo mv ${MIRROR} ${MIRROR}.bak

# Set for Indonesian users only
sudo echo "## Mirrors for Indonesian users" > ${MIRROR}

# Get data from original mirrorlist
sudo cat ${MIRROR}.bak | grep ".id/" >> ${MIRROR}

# Unset var
unset MIRROR

# Done
echo "> Transaction complete!"
echo "  Thanks for using my scripts!"
echo "  https://github.com/kodeaqua"