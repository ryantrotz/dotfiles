" START VUNDLE
set nocompatible                " choose no compatibility with legacy vi
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
" END VUNDLE

"" Logical Starting Points
filetype plugin indent on       " load file type plugins + indentation
set encoding=utf-8
set number
set showcmd                     " display incomplete commands


" Setting our Color Schemes
syntax on
let g:solarized_termcolors=256  " Only Required for Solarized
set background=dark
colorscheme solarized

"" Whitespace
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

"" Tab Complete
set wildmode=longest,list

" Unbind the cursor keys in insert, normal and visual modes.
for prefix in ['i', 'n', 'v']
  for key in ['<Up>', '<Down>', '<Left>', '<Right>']
    exe prefix . "noremap " . key . " <Nop>"
  endfor
endfor

" Numbering
set relativenumber
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

" Misc
set listchars=tab:▸\ ,eol:¬
