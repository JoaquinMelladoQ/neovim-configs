call plug#begin('~/.config/nvim/plugged')
" syntax
Plug 'sheerun/vim-polyglot'

" elm
"Plug 'andys8/vim-elm-syntax'

" Golang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Graphql
Plug 'jparise/vim-graphql'

" Themes
Plug 'gilgigilgil/anderson.vim'
"Plug 'morhetz/gruvbox'

" Tree
Plug 'scrooloose/nerdtree'

" Java
"Plug 'danyshaanan/vim-java-run'
Plug 'williamboman/nvim-lsp-installer'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'

"" Copilot
"Plug 'github/copilot.vim'



" Treesitter
Plug 'nvim-treesitter/nvim-treesitter'

" typing
"Plug 'jiangmiao/auto-pairs'
"Plug 'alvan/vim-closetag'
"Plug 'tpope/vim-surround'

" tmux
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'

" autocomplete
Plug 'sirver/ultisnips'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Snippets
Plug 'honza/vim-snippets'

" Comments
Plug 'preservim/nerdcommenter'

" test
Plug 'tyewang/vimux-jest-test'
Plug 'janko-m/vim-test'

" IDE
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'easymotion/vim-easymotion'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdcommenter'

" git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Move code
Plug 'tpope/vim-unimpaired'

" Rails Let Vundle manage
Plug 'gmarik/Vundle.vim'

Plug 'tpope/vim-rails'
Plug 'tpope/vim-endwise'
Plug 'thoughtbot/vim-rspec'


""""""LSP""""""

" LSP native config
Plug 'neovim/nvim-lspconfig'

" LSP Saga
Plug 'tami5/lspsaga.nvim'

" LSP completion
Plug 'nvim-lua/completion-nvim'
"Plug 'hrsh7th/nvim-cmp'

" LSP Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

""""""NVIM CMP"""""
"Plug 'hrsh7th/cmp-nvim-lsp'
"Plug 'hrsh7th/cmp-buffer'
"Plug 'hrsh7th/cmp-path'
"Plug 'hrsh7th/cmp-cmdline'
"Plug 'hrsh7th/nvim-cmp'

"" For vsnip users.
"Plug 'hrsh7th/cmp-vsnip'
"Plug 'hrsh7th/vim-vsnip'

"if has('nvim')
  "Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"else
  "Plug 'Shougo/deoplete.nvim'
  "Plug 'roxma/nvim-yarp'
  "Plug 'roxma/vim-hug-neovim-rpc'
"endif


"let g:deoplete#enable_at_startup = 1

call plug#end()
