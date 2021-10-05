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

"completion, rust & python linters/fixers
let g:ale_completion_enabled=1
let g:ale_linters = {
\	'rust': ['analyzer', 'cargo'],
\	'python': ['pyls', 'mypy', 'flake8']
\}
let g:ale_fixers = {
\	'rust': ['rustfmt'],
\	'python': ['isort', 'autopep8'],
\	'*': ['trim_whitespace', 'remove_trailing_lines']
\}
let g:ale_rust_cargo_use_clippy = 1

"python yapf executable
let g:ale_python_yapf_executable = 'yapf3'

"python prefer hang indentation
let g:ale_python_flake8_options = '--hang-closing'
let g:ale_python_autopep8_options = '--hang-closing'

"keep highlights from messing up code visibility, but still have gutter indicators
let g:ale_set_highlights = 0

"WIP get possible code actions
nmap gA :ALECodeAction<Return>

"call rustfmt as fixer/formatter
nmap gF <Plug>(ale_fix)

"go to definition
nmap gd <Plug>(ale_go_to_definition)

"find references
nmap gr <Plug>(ale_find_references)

"auto hover
let g:ale_hover_cursor = 1
"..after 1 sec
set updatetime=1000

"completion
let g:ale_completion_enabled=1
set omnifunc=ale#completion#OmniFunc

"don't show details on cursor
let g:ale_cursor_detail=0
"instead, use K to show details on the preview window
"(press q when you're done with it to go back to your buffer)
nmap K <Plug>(ale_detail)

"previews close on insert
let g:ale_close_preview_on_insert=1

"integrate with airline
let g:airline#extensions#ale#enabled = 1
"
"moving to prev/next errors with wrapping
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

"do linting on save
let g:ale_fix_on_save = 1


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
