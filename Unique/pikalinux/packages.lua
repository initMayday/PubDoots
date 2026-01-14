return {
    Pacman = {
        Primary = {
            --> Base
            "base",
            "base-devel",
            "linux", "linux-headers",
            "linux-firmware",
            "efibootmgr",
            "amd-ucode",
            "dkms",
            "cryptsetup",
            "networkmanager-iwd", --> From chaotic
            "grub",
            "sudo",
            "lua", --> For declarages
            "luarocks",
            "booster",

            --> Audio
            "libpulse",
            "pipewire",
            "pipewire-jack",
            "pipewire-pulse",
            "pipewire-alsa",
            "wireplumber",

            --> Graphics
            "nvidia-open-dkms",
            "nvidia-utils",
            "nvidia-settings",
            "lib32-nvidia-utils",
            "mesa",
            "mesa-utils",

            --> Bluetooth
            "bluez",
            "bluez-utils", --> Eg. includes bluetoothctl
            "blueman",

            --> Package Managers
            "flatpak",
            "nix",

            --> Keyrings
            "chaotic-keyring",
            "chaotic-mirrorlist",

            --> Core
            "git", "less",
            "zsh", -- The shell is ZSH for root
            "zsh-syntax-highlighting",
            "zsh-autosuggestions",
            "openssh",
            "dnsmasq",
            "ttf-cascadia-code", "noto-fonts", "noto-fonts-emoji",
            "wl-clipboard",
            "system-config-printer",
            "fd",             --> Alternative to find
            "7zip",
            "ripgrep",        --> Recursive grep
            "zoxide",         --> CD replacement
            "eza",            --> LS replacement
            "bridge-utils",
            "qemu-base",
            "edk2-ovmf",
            "spice",

            --> Filesystems
            "exfatprogs",
            "btrfs-progs",

            --> Development
            "rustup",
            "meson",

            --> Apps
            "fastfetch",
            "btop",
            "qbittorrent",
            "neovim", "npm", "unzip", --> npm is required for BashLS, Unzip is required for Clangd
            "yazi",
            "kitty", "alacritty",
            "telegram-desktop",
            "xdg-desktop-portal-hyprland", "hyprland", "hyprpaper", "uwsm",
            "grim", "slurp", "satty",
            "prismlauncher", "jdk21-openjdk",
            "signal-desktop",
            "mpv",
            "firefox",
            "nautilus",
            "occt",
            "baobab", --> Disk Space Checker
            "yt-dlp",
            "umu-launcher",
            "steam",
            "udisks2", --> For mounting & umounting drivers as user
            "man-db",
            "monero",
            "mangohud",
            "cloc", --> Get LOC
            "virt-manager", "virt-viewer",
            "obs-studio",
            "go",            --> For yay
            "playerctl",     --> Issue playback commands to media playing
            "wev",           --> Check keysyms of keys
            "krita",
            "nwg-look",
            "gamescope",
            "quickshell",
            "firejail",
            "openai-codex",
            "vulkan-validation-layers",

            --> Chaotic AUR
            "yay",
            "epson-inkjet-printer-escpr",
            "brave-bin",
            "downgrade",
            "opentabletdriver",
            "zsh-vi-mode",
            "localsend",
        },

        Custom = {
            "adwsteamgtk",

            {
                Base = "maypaper",
                Sub = { "maypaper" },
                RPC = false,
            },
            {
                Base = "wayfreeze-git",
                Sub = { "wayfreeze-git" },
                RPC = false,
            },
            {
                Base = "sherlock-launcher",
                Sub = { "sherlock-launcher-bin" },
                CloneCmd = "git clone https://aur.archlinux.org/sherlock-launcher.git"
            },
            {
                Base = "Rust-VPN-Handler",
                Sub = { "vpn-handler-git" },
                CloneCmd = "git clone https://github.com/initMayday/Rust-VPN-Handler"
            },
        },

        Ignore = {},

        Settings = {
            CustomLocation = os.getenv("ST_HOME") .. "/.aur/",
        },
    },

    Flatpak = {
        Primary = {
            "com.rtosta.zapzap",
            "org.vinegarhq.Sober",
            "org.vinegarhq.Vinegar",
        },

        Ignore = {},
    },

    Nix = {
        Primary = {},
        Ignore = {},
    },

    Settings = { Cores = { "Pacman", "Flatpak", "Nix" } }
}
