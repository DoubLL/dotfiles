Explicitly installed packages

yay install:
sudo pacman -Syu --needed base-devel git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay --version


Things I would have expected to be defaults
- yay
- git
- vi (git ammend complains if it's not there?)
- polkit-kde-agent
- ntfs-3g (needed to mount windows drive)
- libnotify (for notifs)
- inotify-tools (for notifs)

For desktop
- hyprlauncher
- hyprpolkitagent
- dunst (notifs)
- waybar
- ttf-firacode-nerd (also set in vscode and enable ligatures)
- fastfetch
- uwufetch (lol)

Important software
- waterfox
- rclone (google drive)
- keepassxc
- code

Other software
- ayugram-desktop-bin (stylable telegram)
- signal-desktop
- discrod_arch_electron
- betterdiscord-installer (modified discord, not standalone)
- steam