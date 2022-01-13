" enable gtags module
let g:gutentags_modules = ['ctags', 'gtags_cscope']
" let g:gutentags_trace = 1

" config project root markers.
let g:gutentags_project_root = ['.root', '.git']

" generate datebases in my cache directory, prevent gtags files polluting my
" project
let g:gutentags_cache_dir = expand('~/.cache/tags')

" forbid gutentags adding gtags databases
" let g:gutentags_auto_add_gtags_cscope = 0
let g:gutentags_plus_switch = 1

let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
let g:gutentags_ctags_extra_args += ['--links=no']

let g:gutentags_plus_nomap = 1
noremap <silent> <space>cs :GscopeFind s <C-R><C-W><cr>
noremap <silent> <space>cg :GscopeFind g <C-R><C-W><cr>
noremap <silent> <space>cc :GscopeFind c <C-R><C-W><cr>
noremap <silent> <space>ct :GscopeFind t <C-R><C-W><cr>
noremap <silent> <space>ce :GscopeFind e <C-R><C-W><cr>
noremap <silent> <space>cf :GscopeFind f <C-R>=expand("<cfile>")<cr><cr>
noremap <silent> <space>ci :GscopeFind i <C-R>=expand("<cfile>")<cr><cr>
noremap <silent> <space>cd :GscopeFind d <C-R><C-W><cr>
noremap <silent> <space>ca :GscopeFind a <C-R><C-W><cr>
noremap <silent> <space>ck :GscopeKill<cr>
