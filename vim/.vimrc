syntax on
set cino=2
set tabstop=2
set backspace=2
"set shiftwidth=2
"set expandtab

set expandtab
set ruler
set shiftwidth=2
set softtabstop=2
set hlsearch



set smarttab
set autoindent
"set smartindent


filetype plugin indent on

map <F5> :set paste \| insert <CR> 
map <F6> :set nopaste \| :set ruler<CR>
map <C-o> :tabe 
map <C-q> :qall!
nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>
map <F1> :!cvs commit<cr>
map <F10> :g/^ *$/d
"map <C-l> :tabnext<cr>
"map <C-h> :tabprevious<cr>
"map <C-n> :tabnew<cr>
"map <C-d> :tabc<cr>
execute pathogen#infect()

set hl=l:Folded

map <space> <C-f>
"map <backspace> <C-b>

if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

function InsertTabWrapper()
      let col = col('.') - 1
      if !col || getline('.')[col - 1] !~ '\k'
          return "\<tab>"
      else
          return "\<c-p>"
      endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>

iab exx except Exception, ss:

imap <C-j> <ESC>jli
"imap <C-k> <ESC>kli
imap <C-h> <ESC>hli
imap <C-l> <ESC>la
colorscheme morning
set pastetoggle=<F11>

map <tab> :tabnext<cr>
map <backspace> :tabprevious<cr>
vmap <C-e> S<span nevow:render="i18n">
runtime /usr/share/vim/vim74/plugin/matchit.vim
autocmd BufNewFile,BufReadPost *.ino,*.pde set filetype=cpp
