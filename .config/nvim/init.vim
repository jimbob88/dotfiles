call plug#begin()
	" Theme
    Plug 'dracula/vim'

    " Auto Completion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}


    " Snippets
    " Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    " Plug 'Shougo/deoplete.nvim', {'do': 'UpdateRemotePlugins'}
    " Plug 'Shougo/neosnippet.vim'
    " Plug 'Shougo/neosnippet-snippets'
    
    " File Explorer
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'kyazdani42/nvim-tree.lua'

    " Bracket pairs
    Plug 'jiangmiao/auto-pairs'
    Plug 'vim-syntastic/syntastic'
call plug#end()

" Snippets
" let g:deoplete#enable_at_startup = 1

" color schemes
  if (has("termguicolors"))
    set termguicolors
  endif
  syntax enable
  colorscheme dracula

" Setup Defaults
  set mouse=v
  set tabstop=4
  set expandtab
  set shiftwidth=4
  set autoindent
  set number
  set wildmode=longest,list
  set cc=80
  syntax on
  set cursorline

" Default Encoding
  set encoding=utf-8
  
" Nice Height
  set cmdheight=2

" Nice Timing
  set updatetime=300


" Configure coc
  inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)


" Snippets
" imap <C-l> <Plug>(coc-snippets-expand)
" vmap <C-j> <Plug>(coc-snippets-select)

" let g:coc_snppet_next = 'c-j'
" let g:coc_snippet_prev = 'c-k'
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'
"let g:UltiSnipsExpandTrigger = '<tab>'


" Prettier
command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument

" Add spell check
:setlocal spell spelllang=en_gb

" File Explorer
:lua require'nvim-tree'.setup()
nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>

" Tab switch
nnoremap <C-Left> :tabprevious<CR>                                                                            
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-j> :tabprevious<CR>                                                                            
nnoremap <C-k> :tabnext<CR>

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_html_checkers = ['validator', 'w3']
g:syntastic_python_checkers = ['flake8']

" show characters
:set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣



nnoremap <F5> :set invlist<CR>
nnoremap <F6> :w !diff % -<CR>
