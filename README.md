# Tools

## Shadowfly
www.shadow-fly.us

## Vim
1. brew/vim with python3/macvim/spacevim
2. How do I enable YouCompleteMe?\
  I do not recommend using YouCompleteMe.
  It is too big as a vim plugin. Also, I do not like using submodules in a vim
  plugin. It is hard to manage with a plugin manager.
  Step 1: Add let g:spacevim_enable_ycm = 1 to custom_config. By default
  it should be ~/.SpaceVim.d/init.vim.
  Step 2: Get into the directory of YouCompleteMe’s author. By default it
  should be ~/.cache/vimfiles/repos/github.com/Valloric/. If you find the
  directory YouCompleteMe in it, go into it. Otherwise clone
  YouCompleteMe repo by
  git clone https://github.com/Valloric/YouCompleteMe.git. After cloning,
  get into it and run git submodule update --init --recursive.
  Step 3: Compile YouCompleteMe with the features you want. If you just want
  C family support, run ./install.py --clangd-completer.
