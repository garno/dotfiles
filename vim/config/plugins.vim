" NERDTree
let NERDTreeShowHidden = 1
let NERDTreeShowLineNumbers = 1
let NERDTreeIgnore = ['\.DS_Store$', '\.swo$', '\.swp$']
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

" ctrlp.vim
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|\.git\|tmp\|target\|^_build$\|deps'
map <Leader>, :CtrlP<CR>
map <Leader>b :CtrlPBuffer<CR>
map <Leader>o :CtrlP %:p:h<CR>

" ack.vim
command! -nargs=* -complete=file Ag Ack <args>
let g:ackprg = 'rg --no-heading --color=never --column --line-number'

" coc.vim
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c

" coc.vim quick navigation
nmap <Leader>gd <Plug>(coc-definition)
nmap <Leader>gh <Plug>(coc-type-definition)
nmap <Leader>gr <Plug>(coc-references)


function! s:check_back_space() abort
let col = col('.') - 1
return !col || getline('.')[col - 1]  =~ '\s'
endfunction

let g:coc_global_extensions = ['coc-solargraph']

" Insert <tab> when previous text is space, refresh completion if not.
inoremap <silent><expr> <TAB>
\ coc#pum#visible() ? coc#pum#next(1):
\ <SID>check_back_space() ? "\<Tab>" :
\ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

if has('nvim')
inoremap <silent><expr> <c-space> coc#refresh()
else
inoremap <silent><expr> <c-@> coc#refresh()
endif

inoremap <expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<CR>"

" prettier.vim
" let g:prettier#autoformat = 1

