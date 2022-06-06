" Leader
let mapleader = ","


set number
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline
" au WinEnter * set cursorline cursorcolumn
set cursorline 
" set cursorcolumn
" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright
set hlsearch

" font
if has("gui_running")
	echo "yes, we have a GUI"
	if has("gui_macvim")
		:set guifont=SauceCodePro\ Nerd\ Font\ Mono:h13"
	endif
endif

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'preservim/nerdtree'
Plugin 'yggdroot/leaderf'
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'
Plugin 'easymotion/vim-easymotion'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()            " required
filetype plugin indent on    " required
" see :h vundle for more details or wiki for FAQ

" colorscheme
" must set ofter plugin is loaded
syntax enable
set background=dark
"set background=light
"let g:gruvbox_contrast_dark='soft'
"let g:gruvbox_contrast_dark='medium'
"let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox
" colorscheme desert

" NERDTree
let g:NERDTreeNodeDelimiter = "\u00a0"
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

""" LeaderF
" Show icons, icons are shown by default
let g:Lf_ShowDevIcons = 1
" For GUI vim, the icon font can be specify like this, for example
let g:Lf_DevIconsFont = "DroidSansMono Nerd Font Mono"
let g:Lf_ShowHidden = 1
" If needs
" set ambiwidth=double
" don't show the help in normal mode
let g:Lf_HideHelp = 1
let g:Lf_UseCache = 0
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1
" popup mode
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "DroidSansMono Nerd Font Mono" }
let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }

let g:Lf_ShortcutF = "<leader>ff"
noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
noremap <leader>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
noremap <leader>ft :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>
noremap <leader>fs :<C-U><C-R>=printf("Leaderf! rg -e ")<CR>
noremap <C-B> :<C-U><C-R>=printf("Leaderf! rg --current-buffer -e %s ", expand("<cword>"))<CR>
noremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>
""" LeaderF End

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

""" YouCompleteMe
nmap <leader>sw <Plug>(YCMFindSymbolInWorkspace)
nmap <leader>sd <Plug>(YCMFindSymbolInDocument)
nmap <leader>c :YcmForceCompileAndDiagnostics<CR>
nmap <leader>d <plug>(YCMHover)

nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>gr :YcmCompleter GoToReferences<CR>
nnoremap <leader>gs :YcmCompleter GoToSymbol 
nnoremap <leader>f :YcmCompleter Format<CR>
nnoremap <leader>fi :YcmCompleter FixIt<CR>
nnoremap <leader>rr :YcmCompleter RefactorRename 

let g:ycm_auto_hover=''
let g:ycm_confirm_extra_conf=0 "不再询问是否加载.ycm_extra_conf.py文件
let g:ycm_complete_in_comments = 1  "注释也用补全
let g:ycm_complete_in_strings=1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_key_invoke_completion = '<C-Space>'
""" YouCompleteMe End

""" easymotion
" <Leader>f{char} to move to {char}
map  <Leader><Leader>f <Plug>(easymotion-bd-f)
nmap <Leader><Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap <Leader><Leader>s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader><Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader><Leader>l <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader><Leader>w <Plug>(easymotion-bd-w)
nmap <Leader><Leader>w <Plug>(easymotion-overwin-w)
""" easymotion
