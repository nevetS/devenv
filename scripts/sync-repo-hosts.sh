  #!/bin/bash
  #================================================================
  # HEADER
  #================================================================
  # SYNOPSIS
  #    sync-repo-hosts.sh
  #
  # DESCRIPTION
  #    Adds hostnames from this project into the local /etc/hosts file
  #
  #
  # EXAMPLES
  #    sync-repo-hosts.sh
  #
  #================================================================
  # IMPLEMENTATION
  #    version         sync-repo-hosts 0.0.1
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

  ansible-playbook \
      --connection=local \
      --inventory 127.0.0.1, \
      --ask-become-pass \
      --limit 127.0.0.1 scripts/ansible/playbooks/hosts.yaml -i ansible_hosts
