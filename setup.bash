#!/run/current-system/sw/bin/bash

sudo rm -rf /etc/nixos
echo removed /etc/nixos

sudo ln -s ~/nix-config /etc/nixos
echo soft linked ~/nix-config and /etc/nixos

sudo nixos-rebuild switch --flake ~/nix-config/#nixos-btw
echo rebuilt nix with the flake in ~/nix-config

git clone --quiet https://github.com/kwerkq/newdots ~/.config/

git clone --quiet https://github.com/orangci/walls-catppuccin-mocha ~/Pictures/Wallpapers/walls-catppuccin-mocha/
