# Dotfiles
> Oscar J Rodriguez B
This is a repo with all of my configurations, it goes from AwesomeWM, TMUX, nvim, vim, nano (yes, nano) and some other programs. I'll try to keep this as updated as possible.
## What can I use from here?

Well, you are free to take whatever you want, report eny bugs, make pull requests, make forks, or just copy the 100% of my configs, in case you are wondering how to do that then all you need to do is use GNU/stow to place my configs in the correct place in your machine.
1) `git clone https://github.com/josuer08/dotfiles`
2) Delete files from your home that you want to replace with mine.
3) Delete from your copy of the repo the files you dont want from my repo.
3) `cd dotfiles && stow .`
4) Enjoy!

## Tree of my home
.dotfiles/
├── .config
│   ├── awesome
│   ├── bashrc
│   ├── bashtop
│   ├── bpytop
│   ├── coc
│   ├── GIMP
│   ├── htop
│   ├── mpv
│   ├── nvim
│   │   ├── autoload
│   │   ├── plugin
│   │   └── plugins
│   ├── obs-studio
│   ├── pulse
│   ├── PulseEffects
│   ├── qutebrowser
│   │   ├── bookmarks
│   │   ├── greasemonkey
│   │   └── qsettings
│   ├── ranger
│   ├── slock
│   ├── systemd
│   └── wal
│       ├── colorschemes
│       │   ├── dark
│       │   └── light
│       └── templates
├── .local
│   ├── bin
│   ├── include
│   └── lib
├── .nano
├── scripts
└── .tmux

