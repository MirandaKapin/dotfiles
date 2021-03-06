# Dotfiles

## Vim - Dotfiles

### Initial Set Up - Vim
*Command Line*
```
git clone https://github.com/MirandaKapin/dotfiles.git
cd dotfiles/
./install.sh
```

### Install Vundle
*github link: https://github.com/VundleVim/Vundle.vim*

1. `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
2. Launch vim and type `:PluginInstall`

### YouCompleteMe - Vim Plugin

#### Applications Needed - YouCompleteMe
```
sudo apt-get install build-essential cmake    # Build Essential and CMake
sudo apt-get install python-dev python3-dev   # Python Headers
```

#### Install - YouCompleteMe
```
cd ~/.vim/bundle/YouCompleteMe                # Navigate to YouCompleteMe
./install.py                                  # Install YouCompleteMe
```
*Restart Computer*

#### References
* https://github.com/Valloric/YouCompleteMe/blob/master/README.md#ubuntu-linux-x64
