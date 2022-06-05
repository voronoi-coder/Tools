# Tools

## Shadowfly
www.shadow-fly.us

## Vim
1. brew/vim with python3/macvim
2. 参考spacevim配置：
3. .vimrc/Vundle
4. install Nerd fonts\
  if has("gui_running")
    echo "yes, we have a GUI"
    if has("gui_macvim")
      :set guifont=SauceCodePro\ Nerd\ Font\ Mono:h12"
    endif
  endif
5. 基本设置:set...
6. schema: gruvbox
7. vimawesome:
  NERDTree/YCM/Leaderf/airline

## 常见问题：python版本
:pythonx import sys; print(sys.path)
$ /usr/local/opt/python@3.10/Frameworks/Python.framework/Versions/3.10/bin/pip3 install --user pynvim
