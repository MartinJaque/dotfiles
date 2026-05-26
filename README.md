# dotfiles installation
## Clonar repositorio
```bash
git clone https://github.com/MartinJaque/dotfiles ~/.
```
## Bash
1. Hacer link simbolico de las configuraciones
```bash
ln -s ~/dotfiles/shell/bash/.bashrc ~/.bashrc
ln -s ~/dotfiles/shell/bash/.bash_aliases ~/.bash_aliases
ln -s ~/dotfiles/shell/bash/.bash_completion/ ~/.bash_completion/
ln -s ~/dotfiles/shell/.profile ~/.profile
ln -s ~/dotfiles/shell/.pam_environment ~/.pam_environment
ln -s ~/dotfiles/shell/.Xresources ~/.Xresources
```
## Nvim:
0. Pre requisitos:
- node and npm [url](https://nodejs.org/en/download)
- xclip `sudo apt install xclip`
1. Instalar desde .tar
  - 1.1 Descomprimir (7z) 2 veces
  - 1.2 mv ~/Downloads/nvim.. ~/Downloads/nvim
  - 1.3 mv ~/Downloads/nvim /opt/
2. Configuracion:
```bash
ln -s ~/dotfiles/nvim ~/.config/nvim/
```
## alacritty
1. Instalar desde el [src](https://github.com/alacritty/alacritty/blob/master/INSTALL.md)
2. Configuracion:
```bash
ln -s ~/dotfiles/alacritty/ ~/.config/alacritty/
```
## Tmux:
1. Instalacion:
```bash
sudo apt install tmux
```
2. Configuracion:
```bash
ln -s ~/dotfiles/tmux/ ~/.config/tmux/
```
## Extensiones gnome:
1. Just perfection
2. PaperWM
3. SpaceBar
gsettings set org.gnome.shell.extensions.dash-to-dock hot-keys false
### Para hacer un link simbolico
```bash
ln -s ~/dotfiles/<nombre_carpeta> ~/.config/<nombre_carpeta>
```
**Nota**: La carpeta de destino no debe existir previamente
