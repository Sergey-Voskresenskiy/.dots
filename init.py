from os import system

config_destinations = {
    'dunst': '~/.config/',
    'htop': '~/.config/',
    'i3': '~/.config/',
    'nvim': '~/.config/',
    'picom': '~/.config/',
    'alacritty': '~/.config/',
    'feh': '~/.config/',
    'rofi': '~/.config/',
    'polybar': '~/.config/'
}

for config, path in config_destinations.items():
    system(f'rm -r {path}{config}')
    system(f'ln -s $PWD/{config} {path}{config}')
    print(f'installed: {path}{config}')
