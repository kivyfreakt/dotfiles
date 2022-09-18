#!/bin/bash

config_directory="$HOME/.config"
fonts_directory="/usr/share/fonts"
gtk_theme_directory="/usr/share/themes"

sudo pacman --noconfirm --needed -Sy dialog

create_default_directories(){
    echo -e "${green}[*] Copying configs to $config_directory.${no_color}"
    mkdir -p "$HOME"/.config
    sudo mkdir -p  /usr/local/bin
    sudo mkdir -p  /usr/share/themes
    mkdir -p "$HOME"/Pictures/wallpapers
}

copy_configs(){
    echo -e "${green}[*] Copying configs to $config_directory.${no_color}"
    cp -r ./config/* "$config_directory"
}

copy_fonts(){
    echo -e "${green}[*] Copying fonts to $fonts_directory.${no_color}"
    sudo cp -r ./fonts/* "$fonts_directory"
    fc-cache -fv
}

copy_other_configs(){
    echo -e "${green}[*] Copying gtk theme to /usr/share/themes.${no_color}"
    sudo cp -r ./themes/* /usr/share/themes
    echo -e "${green}[*] Copying wallpapers to "$HOME"/Pictures/wallpapers.${no_color}"
    cp -r ./wallpapers/* "$HOME"/Pictures/wallpapers
}

cmd=(dialog --clear --separate-output --checklist "Select (with space) what script should do.\\nChecked options are required for proper installation, do not uncheck them if you do not know what you are doing." 26 86 16)
options=(1 "Create default directories" on
         2 "Copy configs" on
         3 "Copy fonts" on
         4 "Copy other configs (gtk theme, wallpaper)" on)
choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

clear

for choice in $choices
do
    case $choice in
        1) create_default_directories;;
        2) copy_configs;;
        3) copy_fonts;;
        4) copy_other_configs;;
    esac
done

