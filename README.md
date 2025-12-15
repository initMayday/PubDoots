Heyo, these are the configuration files for my machines.

## Rundown
> WM: Hyprland  
> Distro: Arch Linux  
> Configuration Manager: Declarages & symlink-manager  

## Doots Info
This PubDoots exists within /home/pika/Config/PubDoots.  
Another repo called PrivDoots exists in /home/pika/Config/PrivDoots.

The Modules folder contains shared modules between devices.  
The Unique folder contains specific modules for specific devices.  

Each unique folder contains a packages.lua which specifies what packages to install for that system. This is aggregated by the packages.lua in the main folder (which combines them with the PrivDoots packages and applies default), which is read by declarages.

Alongside this, each also has a symlinks.lua. This is aggregated by the symlinks.lua (which combines them with the PrivDoots symlinks, where possible) in the main folder and then read by symlinks-manager to create symlinks where required.

The doots are licensed under `AGPL-3.0-or-later`, where applicable. Exemptions will be mentioned in the files relevant.
