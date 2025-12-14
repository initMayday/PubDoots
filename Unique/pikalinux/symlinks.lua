return function(Info)
    return {
        Symlinks = {
            [Info.DotConfig .. "/kitty"] = Info.Modules .. "/kitty",
            [Info.DotConfig .. "/alacritty"] = Info.Modules .. "/alacritty",
            [Info.DotConfig .. "/sherlock"] = Info.Modules .. "/sherlock",
            [Info.DotConfig .. "/nvim"] = Info.Modules .. "/neovim",
            ["/etc/nix/nix.conf"] = Info.Modules .. "/nix/nix.conf",
            ["/etc/fstab"] = Info.HostPath .. "/boot/fstab",
            [Info.Home .. "/.zshrc"] = Info.Modules .. "/zsh/desktopdefault",
            [Info.DotConfig .. "/hypr"] = Info.Modules .. "/hypr",
            ["/etc/pacman.conf"] = Info.Modules .. "/pacman.conf",
            ["/etc/default/grub"] = Info.HostPath .. "/boot/grub",
            ["/etc/NetworkManager/conf.d/networkmanager.conf"] = Info.Modules .. "/network/networkmanager.conf",
            ["/etc/monerod.conf"] = Info.HostPath .. "/monerod.conf",
            ["/etc/resolvconf.conf"] = Info.Modules .. "/network/resolvconf.conf",
            [Info.DotConfig .. "/fastfetch"] = Info.Modules .. "/fastfetch",
            [Info.DotConfig .. "/quickshell"] = Info.Modules .. "/quickshell",
            ["/etc/crypttab"] = Info.HostPath .. "/crypttab",
            ["/etc/systemd/system/getty@tty1.service.d/override.conf"] = Info.Modules .. "/autologin.conf",
            [Info.DotConfig .. "/OpenTabletDriver"] = Info.HostPath .. "/tablet",
        },

        Settings = {
            AddSymlinkConfirmation = false,
            AddPathConfirmation = true,
            RemovePathConfirmation = true,
            CachePath = Info.DotConfig .. "/",
            SuperuserCommand = "sudo",
        }
    }
end
