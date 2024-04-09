"
" From a fresh install, you’ll need to run the following commands in
" order to get the most out of these configuration files.
"
" :PlugInstall
"
" :CocInstall coc-elixir
" :CocInstall coc-tsserver
" :CocInstall coc-prettier
" :CocInstall coc-tailwindcss
" :CocInstall coc-css
" :CocInstall coc-stylelint
" :CocInstall coc-ember
"

call plug#begin('~/.config/nvim/plugged')
  " Plugins
  Plug 'github/copilot.vim'
  Plug 'EvanDotPro/nerdtree-chmod'
  Plug 'jiangmiao/auto-pairs'
  Plug 'kien/ctrlp.vim'
  Plug 'mhinz/vim-signify'
  Plug 'mileszs/ack.vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'scrooloose/nerdtree'
  Plug 'sheerun/vim-polyglot'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-endwise', { 'for': ['ruby', 'elixir'] }
  Plug 'tyrannicaltoucan/vim-deep-space'
  Plug 'vim-scripts/camelcasemotion'
  Plug 'zivyangll/git-blame.vim'
  Plug 'elixir-editors/vim-elixir'
call plug#end()

" Config
source $HOME/.config/nvim/config/settings.vim
source $HOME/.config/nvim/config/mappings.vim
source $HOME/.config/nvim/config/filetypes.vim
source $HOME/.config/nvim/config/plugins.vim
