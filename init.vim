set nocompatible          
filetype off             

let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
map <silent> <C-n> :NERDTreeFocus<CR>
"set colorcolumn=80
"set relativenumber
"set numberwidth=4
set number
set autowrite
set laststatus=2
set noshowmode
set synmaxcol=200
set lazyredraw
set showcmd
set sw=2
set mouse=a
set nocursorcolumn
set nocursorline
set clipboard=unnamed
syntax enable
set showmatch
set modifiable
so ~/.config/nvim/configs/map.vim
so ~/.config/nvim/configs/plugins.vim

" Kite
"let g:kite_supported_languages = ['javascript', 'python']

" Coc
autocmd FileType python let b:coc_suggest_disable = 1
autocmd FileType javascript let b:coc_suggest_disable = 0
autocmd FileType java let b:coc_suggest_disable = 0
autocmd FileType scss setl iskeyword+=@-@ 


" Setting basic config git airline
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
let g:airline_powerline_fonts = 1
let g:airline_exclude_preview = 0

" Tab
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"

" Go syntax highlighting
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1

" Desabling standard plugins
let g:loaded_matchparen        = 1
let g:loaded_matchit           = 1
let g:loaded_logiPat           = 1
let g:loaded_rrhelper          = 1
let g:loaded_tarPlugin         = 1
" let g:loaded_man               = 1
let g:loaded_gzip              = 1
let g:loaded_zipPlugin         = 1
let g:loaded_2html_plugin      = 1
let g:loaded_shada_plugin      = 1
let g:loaded_spellfile_plugin  = 1
let g:loaded_netrw             = 1
let g:loaded_netrwPlugin       = 1
let g:loaded_tutor_mode_plugin = 1
let g:loaded_remote_plugins    = 1


" Use <Tab> and <S-Tab> to navigate through the completion menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Configs relative to UI colors
set nocompatible
if (has("termguicolors"))
  set termguicolors
  let &t_8f = "\<Esc>[38;2;%lu;$lu:%lum"
  let &t_8b = "\<Esc>[48;2;%lu;$lu:%lum"
endif

syntax enable
colorscheme anderson
"colorscheme gruvbox

let g:completion_enable_snippet = 'UltiSnips'

"let g:completion_enable_auto_popup = 0
"set completeopt=menuone,noinsert,noselect
"let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

"lua require'lspconfig'.tsserver.setup{ on_attach=require'completion'.on_attach }
"lua require'lspconfig'.pyright.setup{ on_attach=require'completion'.on_attach }


" Disable auto-popup completion
let g:completion_enable_auto_popup = 0

" Set complete options
set completeopt=menuone,noinsert,noselect

" Set completion matching strategy
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']


let g:coc_node_args = ['--max-old-space-size=4096']

" Define the on_attach function
function! OnAttachCompletion()
    " Set up completion-nvim
    require'completion'.on_attach()

    " Add additional configuration for each language server as needed
    " ...
endfunction

lua << EOF
require'lspconfig'.pyright.setup{
    on_attach = function(client)
        vim.call('OnAttachCompletion')
    end
}
EOF

lua << EOF
require('lspconfig').jdtls.setup{
  cmd = { vim.fn.stdpath('data').."/lsp_servers/jdtls/launch.sh" },
  root_dir = require('lspconfig/util').root_pattern('pom.xml', 'build.gradle', '.git'),
  filetypes = {'java'},
}
EOF

lua << EOF
local cmp = require('cmp')
cmp.setup {
  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' },
  }
}
EOF

lua << EOF
require'lspconfig'.tsserver.setup{
    on_attach = function(client)
        vim.call('OnAttachCompletion')
    end
}
EOF
