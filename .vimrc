" My .vimrc, which at the time of writing started as a minimal Janus
" copy...

set nocompatible      " Use vim, no vi defaults
set number            " Show line numbers
set ruler             " Show line and column number
set encoding=utf-8    " Set default encoding to UTF-8

set nowrap                        " don't wrap lines
set tabstop=2                     " a tab is two spaces
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab                     " use spaces, not tabs
set list                          " Show invisible characters
set backspace=indent,eol,start    " backspace through everything in insert mode
set shiftround                    " use multples of shiftwidth when indenting with '<' and '>'

set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

" change the mapleader from '\' to ','
let mapleader=","

if exists("g:enable_mvim_shift_arrow")
  let macvim_hig_shift_movement = 1 " mvim shift-arrow-keys
endif

" List chars
set listchars=""                  " Reset the listchars
set listchars=tab:\ \             " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set listchars+=precedes:<         " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen

""
"" Searching
""

set hlsearch    " highlight matches
set incsearch   " incremental searching
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter

""
"" Wild settings
""

" TODO: Investigate the precise meaning of these settings
set wildmode=list:longest,list:full

" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem

" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz

" Ignore bundler and sass cache
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*

" Disable temp and backup files
set wildignore+=*.swp,*~,._*

" Disable per-project tmp directory
set wildignore+=*/tmp/*

""
"" Backup and swap files
""

set backupdir=~/.vim/_backup//    " where to put backup files.
set directory=~/.vim/_temp//      " where to put swap files.

" Let pathogen do the work for us
call pathogen#infect()

" solarized
syntax enable
set background=light
colorscheme solarized

filetype plugin indent on

"
" Nuke trailing whitespace
function! <SID>StripTrailingWhitespaces()
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  %s/\s\+$//e
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction

nnoremap <silent> <F5> :call <SID>StripTrailingWhitespaces()<CR>
autocmd BufWritePre *.py,*.js,*.haml,*.coffee,*.coffee.erb,*.sass,*.css,*.scss :call <SID>StripTrailingWhitespaces()
autocmd FileType ruby autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

" Hide the toolbar
set go-=T

" Learn to move around like a boss
"map <up> <nop>
"map <down> <nop>
"map <left> <nop>
"map <right> <nop>

" scrolling over wrapped lines behaves like normal editors
nnoremap j gj
nnoremap k gk

" clear the search easily, maintain history
nmap <silent> ,/ :nohlsearch<CR>

" toggle nerdtree
nmap <silent> <leader>n :NERDTreeToggle<CR>

" Bufexplorer remapping
nnoremap <silent> <leader>b :BufExplorer<CR>

" A snappier gitgutter
"let g:gitgutter_eager = 0
