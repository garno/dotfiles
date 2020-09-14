" NERDTree
let NERDTreeShowHidden = 1
let NERDTreeShowLineNumbers = 1
let NERDTreeIgnore = ['\.DS_Store$', '\.swo$', '\.swp$', '\.git$', '\.bower-*', 'bower_components', 'node_modules', 'deps', '_build$']
let NERDTreeMapActivateNode='l'
let NERDTreeDirArrowExpandable='›'
let NERDTreeDirArrowCollapsible='-'
map .. :NERDTreeToggle .<CR>

" CamelCaseMotion
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e


" supertab
let g:SuperTabDefaultCompletionType = "<c-n>" " scroll down the list
let g:SuperTabCrMapping = 1 " prevent new line on enter

" ctrlp.vim
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|\.git\|bower_components\|tmp\|target\|_build$\|deps'
map <Leader>, :CtrlP<CR>
map <Leader>b :CtrlPBuffer<CR>
map <Leader>o :CtrlP %:p:h<CR>

" dash.vim
map <Leader>d :Dash<CR>

" ack.vim
command! -nargs=* -complete=file Ag Ack <args>
let g:ackprg = 'rg --no-heading --color=never --column --line-number'

" coc.vim
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c

nmap <Leader>gd <Plug>(coc-definition)
nmap <Leader>gh <Plug>(coc-type-definition)
nmap <Leader>gr <Plug>(coc-references)
