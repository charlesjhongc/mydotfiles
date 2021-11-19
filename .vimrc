" Show line number in the left set nu
set nu

" Use Vim settings, rather then Vi settings (much better!)
set nocompatible

" Set smartindent (equals to autoindent plus some C syntax)
set smartindent

" Expand tab as spaces
set expandtab

" Show the cursor position all the time
set ruler

" Show bottom line of current line
set cursorline

" Set tab size
"set tabstop=4

" Set status line
set statusline=[%02n]\ %f\ %(\[%M%R%H]%)%=\ %4l,%02c%2V\ %P%*

" Always display a status line at the bottom of the window
set laststatus=2

" Set to auto read when a file is changed from the outside (reload if file was changed when executing cmds)
set autoread

" set term,this makes tmux & vim understand each other (key binding..)"
set term=xterm-256color

" Enable backspace delete auto-indent, eol, start
set backspace=indent,eol,start

" Adjust highlight color scheme for Pmenu (for autocomplete menu and selection)
highlight Pmenu ctermfg=Black ctermbg=Gray guibg=Magenta
highlight PmenuSel ctermfg=Black ctermbg=Green guibg=DarkGrey
highlight SpellBad term=reverse ctermfg=White ctermbg=9 gui=undercurl guisp=Red

" ?????
"set list

" Show tab as '>='
" set listchars=tab:>=

" Turn on the syntax highlight"
syntax on

" terraform fmt on save
let g:terraform_fmt_on_save=1

" always show hidden files in NERDTree
let NERDTreeShowHidden=1

" coc extension config (static)
let g:coc_global_extensions = [
\    'coc-json',
\    'coc-tsserver',
\    'coc-eslint',
\    'coc-prettier',
\]

" coc GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" nerdtree map
cmap nd<CR> NERDTree<CR>

" general editing mapping
nmap <silent> <C-d> daw

" vim-plug section starts here
call plug#begin('~/.vim/plugged')

" nerdtree
Plug 'scrooloose/nerdtree'

" youcompleteme
Plug 'valloric/youcompleteme'

" vim-go
Plug 'fatih/vim-go'

" syntax for every language
Plug 'sheerun/vim-polyglot'

" LSP support and vscode-like extenstions
Plug 'neoclide/coc.nvim'

" vim-terraform (coc not supporting tf yet)
Plug 'hashivim/vim-terraform'

" vim-plug section ends here
call plug#end()
