#!/run/current-system/sw/bin/bash

sudo rm -rf /etc/nixos
echo removed /etc/nixos
nix-shell -p git
echo created a shell with git
cd ~
git clone https://github.com/kwerkq/nix-config
echo git cloned github.com/kwerkq/nix-config
sudo ln -s ~/nix-config /etc/nixos
echo soft linked ~/nix-config and /etc/nixos
sudo nixos-rebuild switch --flake ~/nix-config/#nixos-btw
echo rebuilt nix with the flake in ~/nix-config
