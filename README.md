# dotfiles installation
## Clone the repo
```bash
git clone https://github.com/MartinJaque/dotfiles ~/.
```
## Bash
1. Symbolic link to the env configs
```bash
ln -s ~/dotfiles/shell/bash/.bashrc ~/.bashrc
ln -s ~/dotfiles/shell/bash/.bash_aliases ~/.bash_aliases
ln -s ~/dotfiles/shell/bash/.bash_completion/ ~/.bash_completion/
ln -s ~/dotfiles/shell/.profile ~/.profile
ln -s ~/dotfiles/shell/.pam_environment ~/.pam_environment
ln -s ~/dotfiles/shell/.Xresources ~/.Xresources
```
## Nvim:
0. Prerequisites:
- node and npm [url](https://nodejs.org/en/download)
- xclip `sudo apt install xclip`
1. Install from .tar
  - 1.1  Decompress 2 times (7z)
  - 1.2 `mv ~/Downloads/nvim.. ~/Downloads/nvim`
  - 1.3 `mv ~/Downloads/nvim /opt/`
2. Configuration:
```bash
ln -s ~/dotfiles/nvim ~/.config/nvim/
```
## alacritty
1. Install from the [src](https://github.com/alacritty/alacritty/blob/master/INSTALL.md)
2. Configuration:
```bash
ln -s ~/dotfiles/alacritty/ ~/.config/alacritty/
```
## Tmux:
1. Installation:
```bash
sudo apt install tmux
```
2. Configuration:
```bash
ln -s ~/dotfiles/tmux/ ~/.config/tmux/
```
## Rofi
1. Installation
```bash
sudo apt install rofi
```
2. Configuration
```bash
ln -s ~/dotfiles/rofi ~/.config/rofi/
```
## Gnome extensions:
1. Just perfection
2. PaperWM
3. SpaceBar

Command for unable the dash shortcut with cmd + nums `gsettings set org.gnome.shell.extensions.dash-to-dock hot-keys false`

## Notas
To do a symbolic link
```bash
ln -s ~/dotfiles/<folder_to> ~/.config/<folder_from>
```
**Nota**: La carpeta de destino no debe existir previamente

Comando para obligar a 2.4Ghz:
```bash
nmcli connection modify "guest" 802-11-wireless.band bg
```
Comando para sacar el case sensitive de bash:
```bash
echo set completion-ignore-case on | sudo tee -a /etc/inputrc
```
