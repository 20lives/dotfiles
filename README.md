# Twentylives dotfiles

## Vim
1. Clone this repository and create a symbolic link to the vimrc file
   ```
   git clone https://github.com/20lives/dotfiles.git
   cd dotfiles
   ln -sf $(pwd -P)/vimrc ~/.vimrc
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
   ln -sf $(pwd -P)/i3config ~/.config/i3/config
   ```

2. Restart i3 to load new configs with ALT+SHIFT+R keybinding.

## oh-my-zsh
1. Run the following command:
   ```
   sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
   ```

2. Clone this repository and create a symbolic link to the zshrc file
   ```
   git clone https://github.com/20lives/dotfiles.git
   cd dotfiles
   ln -sf $(pwd -P)/zshrc ~/.zshrc
   ```
