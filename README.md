# Dotfiles  

My dotfiles

[Information](#information) ·
[Showcase](#showcase) ·
[Installation](#installation) ·
[Cheat sheet](#cheat-sheet) ·

![main](https://github.com/kivyfreakt/dotfiles/blob/main/screenshots/1.png)

## Information

- **OS:** [Arch Linux](https://archlinux.org)
- **WM:** [i3-gaps](https://github.com/Airblader/i3)
- **Compositor:** [picom](https://github.com/yshui/picom)
- **Bar:** [polybar](https://github.com/polybar/polybar)
- **Terminal:** [kitty](https://github.com/kovidgoyal/kitty)
- **Shell:** [zsh](https://www.zsh.org/)
- **Application Launcher:** [rofi](https://github.com/davatorium/rofi)
- **Notification Deamon:** [dunst](https://github.com/dunst-project/dunst)

## Showcase

### Stack layout
![main](https://github.com/kivyfreakt/dotfiles/blob/main/screenshots/2.png)

### Float layout
![main](https://github.com/kivyfreakt/dotfiles/blob/main/screenshots/3.png)

### dunst
![main](https://github.com/kivyfreakt/dotfiles/blob/main/screenshots/4.png)

### rofi
![main](https://github.com/kivyfreakt/dotfiles/blob/main/screenshots/4.png)

## Installation

### Dependencies
```sh
    pacman -S - < pkglist.txt
```

### Using install script 

Clone the repository.
```sh
git clone
cd dotfiles
chmod +x install.sh
./install.sh
```

## Cheat sheet

Keybinds

These are the some keybinds. Read through the [i3](./config/i3/config) config for more keybinds.

|        Keybind         |                 Function                 |
| ---------------------- | ---------------------------------------- |
| *$mod+e*               | Open thunar                              |
| *$mod+Shift+s*         | Make screenshot via flameshot            |
| *$mod+d*               | Open applist via rofi                    |
| *$mod+Tab*             | Open open windows via rofi               |
| *$mod+c*               | Open clipmenu                            |
| *$mod+Shift+z*         | Floating toggle                          |