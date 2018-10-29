# Twentylives dotfiles

## Vim
1. Clone this repository and create a symbolic link to the vimrc file
   ```
   git clone https://github.com/20lives/dotfiles.git
   cd dotfiles
   ln -s vimrc ~/.vimrc
   ```

2. Install [vim-plug] by running the following command
   ```
   curl -fLo curl ~/.vim/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   ```

3. Run vim and `:PlugInstall` to install all plugins.

## i3
1. Clone this repository and create a symbolic link to the vimrc file
   ```
   git clone https://github.com/20lives/dotfiles.git
   cd dotfiles
   ln -sf i3config ~/.config/i3/config
   ```

2. Restart i3 to load new configs with ALT+SHIFT+R keybinding.
