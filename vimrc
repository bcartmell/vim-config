      set nocompatible      " Don't force vi compatibility
      filetype on           " This was off and I can't remember why 
                            "" turning it back on to see if it breaks

      " Initialize Pathogen 
      execute pathogen#infect()


      color tomorrow-night

      filetype plugin on    " Required for NERD_commenter

      filetype plugin indent on

      set nu
      set ffs=unix          " Set Unix file format to prevent line-return characters
      behave xterm          " Alternative is 'mswin'
      
      set encoding=utf-8    " Set UTF-8 as default encoding
      set mouse=a           " Enable mouse support
      set selectmode=mouse  " Use mouse to select text
      set ai                " Turn on autoindenting
      set aw                " Save file when compiling, etc.
      set bs=2              " Allow backspacing over everything in insert mode
      set viminfo='20,\"50  " Read/write a .viminfo file, don't store more
                            " than 50 lines of registers

      set whichwrap=b,s,<,>,[,] " End of line cursor support
      set ruler

      set expandtab         " Indent with spaces
      set shiftwidth=2      " What you get for ^D
      set tabstop=2         " Same as shiftwidth
      set softtabstop=2
      set shiftround        " round to nearest tab

      set scrolloff=3       " begin scrolling before cursor reaches the edge
      set sidescrolloff=5   " also for side scrolling

      set showcmd           " show my commands

      if exists("+colorcolumn")
        set colorcolumn=81  " highlight column 81
      endif

      set cursorline

      set ignorecase        " make searching case-insensitive
      set smartcase         " Unless search string includes an uppercase letter

      set spell             " Turn on spell checker
      set relativenumber    " Display line numbers relative to current line

      set gdefault          " applies substitutions globally on lines by default

      set showmatch         
      set hlsearch

      set iskeyword-=.      " '.' is an end-of-word designator
      set iskeyword-=-      " '-' is an end-of-word designator
      set iskeyword-=_      " '_' is an end-of-word designator



      " Clear search highlighting with <leader><space>
      nnoremap <leader><space> :noh<cr> 

      " Select recently pasted text
      nnoremap <leader>v V`]

      " Open scratch pad
      nnoremap <leader><tab> :Sscratch<cr>

      " Open NERDTree
      nnoremap <leader>t :NERDTree<cr>
      let NERDTreeQuitOnOpen=1

      "Make Vim use standard RegEx 
      nnoremap / /\v
      vnoremap / /\v

      " copy to Clipboard
      nnoremap <leader>Y ggVG"+yu<c-r>zz

      " Insert liquid tag
      nnoremap <leader>{ i{{ }}<Esc>2hi 
      nnoremap <leader>[ a{{ }}<Esc>2hi 
      nnoremap <leader>} i{% %}<Esc>2hi 
      nnoremap <leader>] a{% %}<Esc>2hi 


      syntax on
      "set comments=sl:/**,mb:\ *,exl:\ */,sr:/*,mb:*,exl:*/,://
      
      " When starting to edit a file:
      "   For Java, C, and C++ files set formatting of comments and set 
      "   C-indenting on.   For other files switch it off.
      "   Don't change the sequence, it's important that the line with * comes first.
      autocmd BufRead * set formatoptions=tcql nocindent comments&
      autocmd BufRead *.java,*.c,*.h,*.cc set formatoptions=ctroq cindent comments=sr:/**,mb:*,elx:*/,sr:/*,mb:*,elx:*/,://

      set clipboard=unnamed
