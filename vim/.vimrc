":set mouse=r
:syntax on
:filetype on
:filetype plugin on
:filetype plugin indent on
:autocmd FileType go setlocal tabstop=4

"ale config
let g:ale_completion_enabled = 1
let g:ale_linters = {'rust': ['analyzer', 'cargo']}

"go to definition
nmap gd :ALEGoToDefinition -vsplit<CR>
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

packloadall
silent! helptags ALL
