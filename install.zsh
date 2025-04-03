#!/bin/zsh

python3 -m pip install --user pipx --break-system-packages
pipx install --include-deps ansible
pipx ensurepath 
ansible-playbook ansible_bootstrap/install_packages.yml
ansible-playbook ansible_bootstrap/install_dotfiles.yml