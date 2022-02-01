from os import system
from sys import argv

config_destinations = {
    'dunst': '~/.config/',
    'htop': '~/.config/',
    'i3': '~/.config/',
    'nvim': '~/.config/',
    'picom': '~/.config/',
    'alacritty': '~/.config/',
    'feh': '~/.config/',
    'rofi': '~/.config/',
}


for config, path in config_destinations.items():
    system(f'rm -r {path}{config}')
    system(f'ln -s $PWD/{config} {path}{config}')
    print(f'installed: {path}{config}')
