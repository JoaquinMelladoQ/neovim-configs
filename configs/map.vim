let mapleader= " "

nmap <leader>s <Plug>(easymotion-s2)
nmap <leader>nt :NERDTreeFind<CR>
nmap <leader>q :q<CR>
nmap <leader>w :w<CR>
nmap <leader>ex :ex.<CR>
nmap <leader>wq :wq<CR>
nmap <leader>a <C-d><CR>
nmap <leader>u <C-u><CR>
nmap <leader>; <C-C-S-^><CR>
"nnoremap <C-p> :GFiles<CR>

" Remap keys for gotos
"nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)

""LSP completion"
"inoremap <tab> <Plug>(Completion_trigger)

" Telescope
nnoremap <C-p> :Telescope find_files<CR>
nnoremap <leader> hh:Telescope command_history<CR>

" selects the current highlighted completion item by pressing Enter
inoremap <expr> <Enter> pumvisible() ? "\<C-y>" : "\<Enter>"

" Use <c-space> to trigger completion
if &filetype == "javascript" || &filetype == "python" || &filetype == "java"
  inoremap <C-space> <C-x><C-u><CR>
else
  inoremap <silent><expr> <c-space> coc#refresh()
endif

let g:python3_host_prog = '/usr/bin/python3' 

"" Use deoplete.
"let g:deoplete#enable_at_startup = 1

" Move single lines
nmap <C-k> [e
nmap <C-j> ]e

" Move multiple lines selected
vmap <C-k> [egv
vmap <C-j> ]egv
"


"vmap ak :<C-u>exec "normal! :move '<-2\<CR>gv"<CR>
"vmap aj :<C-u>exec "normal! :move '>+1\<CR>gv"<CR>

"xnoremap ak :move '<-2<CR>gv
"xnoremap aj :move '>+1<CR>gv

"
"xnoremap qh :move '<-2\<CR>gv"<CR>
"xnoremap qt :move '>+1\<CR>gv"<CR>

"vmap ak [egv
"vmap aj ]egv
"
"xmap <C-k> :move '<-2<CR>gv
"xmap <C-j> :move '>+1<CR>gv

" Moving text with indentation
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1<CR>==
inoremap <C-k> <esc>:m .-2<CR>==
nnoremap <leader>k :m .-2<CR>==
nnoremap <leader>j :m .+1<CR>==

nmap <leader>gs :G<CR>
nmap <leader>gl :Glog<CR>
nmap <leader>gc :Gcommit<CR>
nmap <leader>gn :G commit --amend --no-edit<CR>
nmap <leader>ga :G add .<CR>

" Navigation when merge conflic
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>

" LSP Saga
nnoremap <silent>gd <cmd>lua vim.lsp.buf.definition()<CR>

au filetype go inoremap <buffer> . .<C-x><C-o>


inoremap <expr> <CR> pumvisible() ? coc#_select_confirm() : "\<CR>"

" Tab trigger autocomplete
" Vim key mapping for the <TAB> key in insert mode 
" that integrates with the coc.nvim plugin 
" to provide autocompletion, snippet expansion, 
" and other advanced functionality while typing.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()


"This function checks if the cursor is at the beginning of the line 
"or right after a whitespace character. 
"It returns 1 (true) if the cursor is at the beginning 
"of the line or after a whitespace character, 
"and 0 (false) otherwise.
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

"let g:coc_snippet_next = '<tab>'
