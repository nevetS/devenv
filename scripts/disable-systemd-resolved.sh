  #!/bin/bash
  #================================================================
  # HEADER
  #================================================================
  # SYNOPSIS
  #    disable-systemd-resolved.sh
  #
  # DESCRIPTION
  #    Disables systemd-resolved in preparation for installing dnsmasq on ubuntu.
  #
  #    Based on the article at https://computingforgeeks.com/install-and-configure-dnsmasq-on-ubuntu/
  #
  # EXAMPLES
  #    sudo disable-systemd-resolved.sh
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

  # First disable, then stop systemd-resolved
  systemctl disable systemd-resolved
  systemctl stop systemd-resolved

  # unlink /etc/resolv.conf (systemd-resolved has that file linked to
  #  /run/systemd/resolve/stub-resolv.conf
  unlink /etc/resolv.conf

  # 8.8.8.8 is the google dns server
  echo nameserver 8.8.8.8 | sudo tee /etc/resolv.conf
