# rice
Linux configuration files. Mostly X11 and other gui related configs. "dotfiles" with terminal*ish* configs located [here](https://github.com/sanvew/dotfiles)

"Desktop environment" programs:
- wm: [dwm](https://github.com/sanvew/dwm)
- status bar: [dwmblocks-async](https://github.com/sanvew/dwmblocks-async)
- terminal emulator: [st](https://github.com/sanvew/st)
- screen lock: [slock](https://github.com/sanvew/slock)
- custom menus: [dmenu](https://github.com/sanvew/dmenu)

Files linking managed with [dotbot](https://github.com/anishathalye/dotbot)

## Bootstrap
Repository cloning
```shell
git clone git@github.com:sanvew/rice.git $HOME/.local/src/rice
```

Full initial installation
```shell
cd $HOME/.local/src/rice && ./install --root
```
> `--root` arg is required to link X11 system wide config

Configuration update and reload
```shell
reload-rice
```

## Themes
Using [gruvbox-dark](https://github.com/morhetz/gruvbox) as a primary theme for the system

### Credits
- gtk: [SylEleuth/Gruvbox-GTK-Theme](https://github.com/SylEleuth/gruvbox-gtk-theme): Gruvbox-Dark-BL-LB

## TODO
- [ ] add mpd deamon and client setup
- [ ] statusbar:
    - [ ] add battery indicator
    - [ ] add network indicator
    - [ ] add cpu and ram indicator
- [ ] add notification daemon [dunst](https://github.com/dunst-project/dunst)
