"
" From a fresh install, you’ll need to run the following commands in
" order to get the most out of these configuration files.
"
" :PlugInstall
"
" :CocInstall coc-elixir
" :CocInstall coc-tsserver
" :CocInstall coc-prettier
"

call plug#begin('~/.config/nvim/plugged')
  " Filetype-specific plugins
  Plug 'tpope/vim-rails', { 'for': ['ruby', 'eruby'] }
  Plug 'hail2u/vim-css3-syntax', { 'for': ['css', 'scss'] }
  Plug 'elixir-lang/vim-elixir', { 'for': ['elixir', 'eelixir'] }
  Plug 'plasticboy/vim-markdown', { 'for': ['markdown'] }
  Plug 'mustache/vim-mustache-handlebars', { 'for': ['html.handlebars'] }
  Plug 'othree/html5.vim', { 'for': ['html', 'eruby', 'html.handlebars', 'handlebars'] }
  Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx', 'typescript'] }
  Plug 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] }
  Plug 'leafgarland/typescript-vim', { 'for': ['typescript']}
  Plug 'ianks/vim-tsx', { 'for': ['typescript.tsx'] }

  " Plugins
  Plug 'tyrannicaltoucan/vim-deep-space'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'vim-scripts/camelcasemotion'
  Plug 'scrooloose/nerdtree'
  Plug 'EvanDotPro/nerdtree-chmod'
  Plug 'tpope/vim-surround'
  Plug 'ervandew/supertab'
  Plug 'kien/ctrlp.vim'
  Plug 'rizzatti/dash.vim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'tpope/vim-commentary'
  Plug 'mileszs/ack.vim'
  Plug 'zivyangll/git-blame.vim'
  Plug 'tpope/vim-endwise', { 'for': ['ruby', 'elixir'] }
  Plug 'ruanyl/vim-sort-imports'
call plug#end()

" Config
source $HOME/.config/nvim/config/settings.vim
source $HOME/.config/nvim/config/mappings.vim
source $HOME/.config/nvim/config/filetypes.vim
source $HOME/.config/nvim/config/plugins.vim
