#!/bin/bash
#================================================================
# HEADER
#================================================================
# SYNOPSIS
#    sudo install-dnsmasq.sh
#
# DESCRIPTION
#    Installs dnsmasq on ubuntu.
#
#    Based on the article at https://computingforgeeks.com/install-and-configure-dnsmasq-on-ubuntu/
#
#    !! This script must be run either as root, or under sudo
#
# EXAMPLES
#    sudo install-dnsmasq.sh
#
#================================================================
# IMPLEMENTATION
#    version         disable-systemd-resolved.sh 0.0.1
#    author          Steve Kallestad
#    license         CC-BY-SA Creative Commons License
#
#================================================================
#  HISTORY
#     2023/05/28 : Script creation
# 
#================================================================
# END_OF_HEADER
#================================================================

apt-get update
apt-get install dnsmasq
