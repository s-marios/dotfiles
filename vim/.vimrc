":set mouse=r
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

let g:ale_completion_enabled = 1
let g:ale_linters = {'rust': ['analyzer', 'cargo']}

"go to definition
nmap gd :ALEGoToDefinition<CR>
"find references
nmap gr :ALEFindReferences<CR>
"hover
let g:ale_set_balloons=1
nmap K :ALEHover<CR>
"completion
let g:ale_completion_enabled=1
set omnifunc=ale#completion#OmniFunc

"previews close on insert
let g:ale_close_preview_on_insert=1

"integrate with airline
let g:airline#extensions#ale#enabled = 1

"""airline stuff
"""getting it
""" git clone https://github.com/vim-airline/vim-airline ~/.vim/pack/dist/start/vim-airline
let g:airline#extensions#tabline#enabled = 1

packloadall
silent! helptags ALL
