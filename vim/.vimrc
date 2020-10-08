set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-sensible'

call vundle#end()
filetype plugin indent on

runtime! plugin/sensible.vim

set encoding=utf-8 fileencodings=
syntax on

set number
"Limit colon count to 80
set cc=80
set mouse=a

"Insert tabs in Makefiles
autocmd Filetype make setlocal noexpandtab

"Show tabs and traling whitespaces
set list listchars=tab:»­,trail:­

set tabstop:4
set shiftwidth=4
"Replace tabs by spaces
set expandtab
set smartindent

" Custom mappings
"" Add empty braces body below this line
map Be o{<Enter><Esc>ko
"" Encapsulates this line in a braces body
map Bl ddO{<Enter><Esc>P

"" Insert blank lines below or above, while staying in NORMAL mode
map <A-o> o<Esc>
map <A-O> O<Esc>
""" For mac
map œ o<Esc>
map Œ O<Esc>

"" Insert semi-colon at end of line
map <A-;> A;<Esc>
map … A;<Esc>
map • A;<Enter>


let git_settings = system("git config --get vim.settings")
if strlen(git_settings)
    exe "set" git_settings
endif
