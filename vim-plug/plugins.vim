" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Themes onedark
    Plug 'joshdick/onedark.vim'
    " Intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Pops up a menu with hotkeys
    Plug 'folke/which-key.nvim'
    " Start screen
    Plug 'mhinz/vim-startify'
    " Fuzzy find
    Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    " Status bar / tab line
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Gruvbox themes
    " Plug 'rktjmp/lush.nvim'
     "Plug 'ellisonleao/gruvbox.nvim'
    " Gruvbox real themes
    Plug 'morhetz/gruvbox'
    " Git integration
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'    
    " Quickscope: To jump through the line using f or F
    Plug 'unblevable/quick-scope'    
    " Floaterm
    Plug 'voldikss/vim-floaterm'
    " If you don't have nodejs and yarn
    " use pre build, add 'vim-plug' to the filetype list so vim-plug can update this plugin
    " see: https://github.com/iamcco/markdown-preview.nvim/issues/50
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}



    call plug#end()

" Automatically install missing plugins on startup
