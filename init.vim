filetype plugin on
" set omnifunc=syntaxcomplete#Complete
set number
set mouse=a
set hidden
set ignorecase
syntax on


call plug#begin('~/.local/share/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline-themes'
Plug 'justmao945/vim-clang'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-syntastic/syntastic'
Plug 'dyng/ctrlsf.vim'
Plug 'vim-scripts/a.vim'
Plug 'preservim/nerdcommenter'
call plug#end()
set clipboard +=unnamedplus



let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
" let g:airline_powerline_fonts = 1
colorscheme dracula
" let g:clang_debug = 2
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


let g:syntastic_c_compiler = 'gcc'
let g:syntastic_c_config_file = '.clang'


" vim-clang settings
" let g:clang_c_completeopt = 'longest,menuone,preview'
" let g:clang_check_syntax_auto = 1
inoremap <expr> <C-Space> "\<C-x>\<C-u>"
"fix C-Space in terminal
imap <C-@> <C-Space>
let g:clang_verbose_pmenu = 1
let g:clang_c_completeopt = 'longest,menuone,preview'

nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>

" NerdCommenter Settings
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCompactSexyComs = 1
let g:NERDCommentEmptyLines = 1
let g:NERDToggleCheckAllLines = 1

nnoremap <leader>d "_d
xnoremap <leader>d "_d

