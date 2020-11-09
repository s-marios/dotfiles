syntax on
filetype on
filetype plugin on
filetype plugin indent on
autocmd FileType go setlocal tabstop=4

"hide buffers for easier navigation
set hidden

""" ALE Lint & Autocompletion
""" getting it
""" mkdir -p ~/.vim/pack/git-plugins/start
""" git clone --depth 1 https://github.com/dense-analysis/ale.git ~/.vim/pack/git-plugins/start/ale

"completion and rust analyzer
let g:ale_completion_enabled=1
let g:ale_linters = {'rust': ['analyzer', 'cargo']}
let g:ale_rust_cargo_use_clippy = 1

"go to definition
nmap gd <Plug>(ale_go_to_definition)

"find references
nmap gr <Plug>(ale_find_references)
"hover
let g:ale_set_balloons=1
nnoremap K :ALEHover<CR>
"completion
let g:ale_completion_enabled=1
set omnifunc=ale#completion#OmniFunc


"curstor hint
let g:ale_cursor_detail=1

"previews close on insert
let g:ale_close_preview_on_insert=1

"integrate with airline
let g:airline#extensions#ale#enabled = 1
"
"moving to prev/next errors with wrapping
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)


"""airline stuff
"""getting it
""" git clone https://github.com/vim-airline/vim-airline ~/.vim/pack/dist/start/vim-airline
let g:airline#extensions#tabline#enabled = 1

""" fugitive for git branch
"mkdir -p ~/.vim/pack/tpope/start
"cd ~/.vim/pack/tpope/start
"git clone https://tpope.io/vim/fugitive.git
"vim -u NONE -c "helptags fugitive/doc" -c q


packloadall
silent! helptags ALL
