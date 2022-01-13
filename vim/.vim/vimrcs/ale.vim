let g:ale_c_parse_compile_commands = 1
let g:ale_linters_explicit = 1
let g:ale_linters = {
  \   'csh': ['shell'],
  \   'zsh': ['shell'],
  \   'go': ['gofmt', 'golint'],
  \   'python': ['flake8', 'mypy', 'pylint'],
  \   'c': ['gcc'],
  \   'cpp': ['gcc'],
  \   'text': [],
  \}
let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:airline#extensions#ale#enabled = 1

let g:ale_c_gcc_options = '-Wall -O0 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O0 -std=c++14'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''
