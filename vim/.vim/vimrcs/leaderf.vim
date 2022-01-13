let g:Lf_ShortcutF = '<c-p>'
let g:Lf_ShortcutB = '<m-n>'
noremap <c-n> :LeaderfMru<cr>
noremap <space>p :LeaderfFunction!<cr>
noremap <space>n :LeaderfBuffer<cr>
" noremap <m-p> :LeaderfFunction!<cr>
" noremap <m-n> :LeaderfBuffer<cr>
noremap <c-t> :LeaderfTag<cr>
let g:Lf_StlSeparator = { 'left': '', 'right': '', 'font': '' }

let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git/']
let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_RecurseSubmodules = 1
let g:Lf_WindowHeight = 0.30
" let g:Lf_CacheDirectory = expand('~/.vim/cache')
let g:Lf_ShowRelativePath = 0
let g:Lf_HideHelp = 1
let g:Lf_StlColorscheme = 'powerline'
let g:Lf_PreviewResult = {'Function':0, 'BufTag':0}
let g:Lf_WildIgnore = {
            \ 'dir': ['.svn','.git','.hg', '.ccls-cache'],
            \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
            \}
" let g:Lf_ExternalCommand = 'rg "%s" --no-messages --files -L --no-ignore'
