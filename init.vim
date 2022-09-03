let mapleader = ","
"Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-s> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

let g:loaded_node_provider = 0
let g:loaded_python3_provider = 0

" Specioy a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/AppData/Local/nvim/plugged')
    Plug 'morhetz/gruvbox'                              " Temas
    Plug 'easymotion/vim-easymotion'                    " Easymotion
    Plug 'preservim/nerdtree'                           " Nerdtree
    Plug 'Xuyuanp/nerdtree-git-plugin'                  " Nerdtree git
    Plug 'christoomey/vim-tmux-navigator'               " vim-tmux-navigator ctrl + h | j | k | l to jump
    Plug 'vim-airline/vim-airline'                      " vim-airline
    Plug 'vim-airline/vim-airline-themes'               " vim-airline themes
    Plug 'pangloss/vim-javascript'                      " JavaScript support
    Plug 'leafgarland/typescript-vim'                   " TypeScript syntax
    Plug 'maxmellon/vim-jsx-pretty'                     " JS and JSX syntax
    Plug 'neoclide/coc.nvim' , { 'branch' : 'release' } " Coc plugin
    Plug 'mattn/emmet-vim'                              " emmet
    Plug 'jiangmiao/auto-pairs'                         " Auto pairs
    Plug 'tpope/vim-fugitive'                           " vim-fugitive
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " fzf.vim
    Plug 'junegunn/fzf.vim'                             " fzf.vim
    "if has('nvim') || has('patch-8.0.902')
    "  Plug 'mhinz/vim-signify'
    "else
    "  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
    "endif
    "Plug 'rodrigore/coc-tailwind-intellisense', {'do': 'npm install'}
    Plug 'joshdick/onedark.vim'				" One Dark Theme
    Plug 'ryanoasis/vim-devicons'                       " Require Caskadia Cove Nerd Font in nerdfonts.com
    Plug 'preservim/nerdcommenter'                      " For commend lines
    Plug 'AndrewRadev/tagalong.vim'   			" Rename autotag
call plug#end()

" Commands
command! Config execute ":e $HOME\\AppData\\Local\\nvim\\init.vim"
command! Source execute ":source $HOME\\AppData\\Local\\nvim\\init.vim"
command! JavaImportFormat execute ":CocCommand java.action.organizeImports"
command! JavaUpdateProject execute ":CocCommand java.projectConfiguration.update"

imap ii <Esc>

"Mapping to reload config
nmap <leader>so :source $HOME\AppData\Local\nvim\init.vim<CR>
nmap <leader>w :w <CR>
"nmap <leader>q :q <CR>
nmap <C-w> :bd<CR>

"quick semi
nnoremap <Leader>; $a;<Esc>
nnoremap <Leader>> 10<C-w>>
nnoremap <Leader>< 10<C-w><

" Tab navigation like Firefox.
nnoremap <S-Tab> :bprevious<CR>
nnoremap <Tab> :bnext<CR>

" NERDTree command
nmap <C-n> :NERDTree<CR>
nmap <Leader>nt :NERDTreeFind<CR>

" Command to find to characters
nmap <Leader>s <Plug>(easymotion-s2)
" Ident config
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4 textwidth=80
autocmd Filetype java setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4 textwidth=80
autocmd Filetype json setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2 textwidth=80
autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2 textwidth=80
autocmd Filetype typescript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2 textwidth=80
autocmd Filetype typescriptreact setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2 textwidth=80
autocmd Filetype c setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4 textwidth=80
autocmd Filetype css setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2 textwidth=80
autocmd Filetype html setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2 textwidth=80
autocmd Filetype xml setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4 textwidth=80

syntax on
set nolist
set number
set mouse=a
set clipboard=unnamed
set showcmd
set ruler
set showmatch
set sw=4
set relativenumber
set laststatus=2
set backspace=2
set belloff=all
"set tabstop=2
"set shiftwidth=2
"set softtabstop=2
"set expandtab
"set statusline=%{FugitiveStatusline()}
"set showtabline=2
set noshowmode
set autoread
set pyxversion=3
set t_Co=256

filetype plugin on
set omnifunc=syntaxcomplete#Complete

" Python .dll
"g:python3_host_prog=$HOME\AppData\Local\Programs\Python\Python39
"set pythonthreehome=$HOME\AppData\Local\Programs\Python\Python39
"set pythonthreedll=$HOME\AppData\Local\Programs\Python\Python39\python39.dll

"COC.VIM variables
let g:coc_global_extensions = [ 'coc-tsserver', 'coc-json' ]
"GRUVBOX variables
let g:gruvbox_contrast_dark = "hard"
"NERDTree variables
let NERDTreeShowHidden = 1
let NERDTreeIgnore = ['\.git$', '\.idea$', '\.vscode$', '\.history$', '\.swp$', '\.rar$', '^node_modules$']
"airline variables
let g:airline_theme = 'onedark'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline#extensions#tabline#right_sep = ''
"let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline#extensions#tabline#formatter = 'unique_tail'

"if !exists('g:airline_symbols')
"    let g:airline_symbols = {}
"endif

" unicode symbols
"let g:airline_left_sep = ''
"let g:airline_left_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_sep = ''
"let g:airline_symbols.colnr = 'Ln:'
"let g:airline_symbols.linenr = ' ¶ '
"let g:airline_symbols.maxlinenr = ' '
"let g:airline_symbols.branch = 'ᚠ'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.whitespace = 'Ξ'

"NERDTree git
let g:NERDTreeGitStatusUntrackedFilesMode = 'all'
" Airline variables
" let g:airline_extensions = ['branch']
" vim-gitgutter variables
"let g:gitgutter_git_executable = 'C:\Program Files\Git\bin\git.exe'
"let g:gitgutter_terminal_reports_focus = 0

"FZF variables
"" This is the default option:
"   - Preview window on the right with 50% width
"   - CTRL-/ will toggle preview window.
" - Note that this array is passed as arguments to fzf#vim#with_preview function.
" - To learn more about preview window options, see `--preview-window` section of `man fzf`.
"let g:fzf_preview_window = ['right:50%', 'ctrl-/']

map <leader><C-f> :Files<CR>
silent! nmap <C-P> :GFiles<CR>
map <leader>b :Buffers<CR>
nnoremap <leader>g :Rg<CR>
nnoremap <leader>t :Tags<CR>
nnoremap <leader>m :Marks<CR>

" Preview window on the upper side of the window with 40% height,
" hidden by default, ctrl-/ to toggle
"let g:fzf_preview_window = ['up:40%:hidden', 'ctrl-/']

" Empty value to disable preview window altogether
"let g:fzf_preview_window = []

"let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
"let $FZF_DEFAULT_COMMAND="rg --files --hidden"

" Border color
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

"COC config
" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
"set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=1

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=400

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  "" Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
			      \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader><S-F6> <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  "" Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  "" Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>e <Plug>(coc-codeaction-selected)
nmap <leader>e  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

"autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE

colorscheme onedark
