"VUNDLE CONFIGURATIONS
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" my plugins list
Plugin 'vim-scripts/Colour-Sampler-Pack'
Plugin 'tomtom/tcomment_vim'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'godlygeek/tabular'
Plugin 'Raimondi/delimitMate'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
Plugin 'terryma/vim-multiple-cursors' "Be careful, slightly buggy, may crash
" Plugin 'tpope/vim-surround'
" Plugin 'Shougo/unite.vim'
" Plugin 'godlygeek/csapprox'
" Plugin 'jlanzarotta/bufexplorer'
" Plugin 'scrooloose/nerdcommenter'
" Plugin 'ervandew/supertab'
" Plugin 'scrooloose/nerdtree'
" Plugin 'Rip-Rip/clang_complete'
" Plugin 'file:///home/milkysunshine91/.vim/repos/taglist'

"" The following are examples of different formats supported.
"" Keep Plugin commands between vundle#begin/end.
"" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
"" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
"" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
"" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
"" The sparkup vim script is in a subdirectory of this repo called vim.
"" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



"MY CONFIGURATIONS
syntax on "Enabling syntax highlighting
"filetype plugin indent on "Changing indentation behavior by file type
runtime macros/matchit.vim "Configure % to match more than just single characters
let mapleader="," "set the leader key
set autoread "Automatically reload the file if changes are detected
set autochdir "Automatically change the working directory
set laststatus=2 "Always enable the status line, fix vim-airline bug
set mouse=a "Use the mouse in vim
set history=1000 "Maximum command history
set backupdir=~/.vim/backup,/tmp "Set the backup dir
set directory=~/.vim/swap,/tmp "Set the swap dir
set timeout timeoutlen=500 "Timeout for key sequence
set updatetime=1000 "Swap file writing interval (idle time before commit)
set cursorline "Highlight the current line
set number numberwidth=1 "Enable line number column and set the width
set showmatch matchtime=3 "Briefly jump to the matching brace
set tabstop=4 shiftwidth=4 "Configure the tabstop and shiftwidth
set linebreak "Break on a long line
"set lines=40 columns=120 "Set initial vim or gvim size
set guioptions-=m "Remove menu bar
set guioptions-=T "Remove tool bar
set noeb novb t_vb= "Turn off flash and bell for signal error
setlocal incsearch hlsearch nowrapscan ignorecase smartcase "Search options, local only
"set pastetoggle=<F2> "Fix pasting text into a terminal with automatic indentation
"set scrolloff=8 "Keep the cursor at the middle of the screen

set wildignore+=*.mkv,*.mp4,*.avi,*.mp3,*.pdf,*.djvu,*.torrent


"External command shortcuts
nnoremap <leader>ss <esc>:!sync_wpro<cr>


noremap <leader>f <Esc>:CtrlP ~/Documents<CR>
noremap <leader>r <Esc>:CtrlPMRU<CR>
noremap <leader>b <Esc>:CtrlPBuffer<CR>
noremap <leader>l <Esc>:CtrlPTag<CR>
let g:ctrlp_show_hidden         = 1
let g:ctrlp_max_files           = 0
let g:ctrlp_working_path_mode   = 'ra'
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_prompt_mappings     = {
	\ 'PrtBS()':              ['<c-h>', '<bs>', '<c-]>'],
	\ 'PrtCurLeft()':         ['<left>'],
	\ 'PrtCurRight()':        ['<right>'],
	\ }

let g:session_autoload = 0
let g:session_autosave = 1

" let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_add_preview_to_completeopt = 1
let g:EclimCompletionMethod = 'omnifunc'

let delimitMate_expand_cr    = 1
let delimitMate_expand_space = 1
imap <leader>g <Plug>delimitMateS-Tab

let g:multi_cursor_exit_from_visual_mode = 0
let g:multi_cursor_exit_from_insert_mode = 0

let g:airline#extensions#tabline#enabled      = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#left_sep     = '▶'
let g:airline#extensions#tabline#left_alt_sep = '>'
let g:airline_left_sep                        = '▶'
let g:airline_right_sep                       = '◀'

let g:tcommentMapLeaderOp1 = '<leader>c'

let g:tagbar_left = 1 "Open tagbar on the left
let g:tagbar_sort = 0 "Sort tagbar by occurence

"Populate and call the recently files list
" :command! Browse new +setl\ buftype=nofile | 0put =v:oldfiles | nnoremap <buffer> <CR> :e <C-r>=getline('.')<CR><CR><C-w>j:hide<CR> | nnoremap <buffer> <Esc> :bd<CR> | set number | normal gg
" noremap <leader>re <Esc>:Browse<CR>

"Java eclim commands
"Execute the current Java class
noremap <leader>jn <esc>:JavaRename 
noremap <leader>jr <esc>:Java %<cr>
noremap <leader>jf <esc>:%JavaFormat<cr>
noremap <leader>jd <esc>:JavaDocPreview<cr>
noremap <leader>jc <esc>:JavaCorrect<cr>
noremap <leader>jio <esc>:JavaImportOrganize<cr>
noremap <leader>jt <esc>:'<,'>JavaConstructor<cr>
noremap <leader>jgs <esc>:JavaGetSet<cr>
noremap <leader>jg <esc>:JavaGet<cr>
noremap <leader>js <esc>:JavaSet<cr>
noremap <leader>jim <esc>:JavaImpl<cr>
noremap <leader>jl <esc>:JavaDelegate<cr>

"Execute the current Python file
noremap <leader>pr <esc>:!python %<cr>

"Esckey is now jk
inoremap jk <Esc>
inoremap JK <Esc>
"Move down one display line with j
nnoremap j gj
"Move up one display line with k
nnoremap k gk

"Speed up the move speed a bit
noremap <C-e> 3<C-e>
"Speed up the move speed a bit
noremap <C-y> 3<C-y>

"Turn on spellchecking
noremap <leader>doc <Esc>:setlocal nocursorline spell spelllang=en<CR>
"Turn off spellchecking
noremap <leader>nodoc <esc>:setlocal cursorline nospell<cr>
"Reload vimrc settings
noremap <leader>so <esc>:so $MYVIMRC<cr>
"Toggle the Tag list
noremap <leader>tl <esc>:TagbarToggle<cr>
"Activate NERDTree
" noremap <leader>f <esc>:NERDTree
"Save file
noremap <leader>w <esc>:w<cr>
"Save file as root
noremap <leader>st <esc>:w !sudo tee %<cr>
"Quit
noremap <leader>q <esc>:q<cr>
"Activate terminal command
noremap <leader>te <esc>:!
"Split vertically
noremap <leader>vs <esc>:vsplit<cr>
"Split horizontallly
noremap <leader>hs <esc>:split<cr>
"Hide all other buffers
noremap <leader>on <esc>:only<cr>
"Search and replace, go to beginning with <C-b>, add % to replace all
noremap <leader>sr :s//g<left><left>
"Remove all trailing whitespace
noremap <leader>sw :s/\s\+$//
"Turn off search highlighting
noremap <leader>sc <esc>:nohls<cr>
"Toggle GUI elements
" noremap <leader>guion <esc>:set guioptions+=m<cr>:set guioptions+=T<cr>
" noremap <leader>guiof <esc>:set guioptions-=m<cr>:set guioptions-=T<cr>
"Open vim help
noremap <leader>he <esc>:h 
"Interact with clipboard
noremap <leader>x "+
"Redo the last : command
noremap <leader>a @:
""Close the buffer
"noremap <leader>xx <esc>:bd<cr>

"Insert new line without leaving current line
" nmap <S-Enter> O<Esc>j
" nmap <CR> o<Esc>k

"Keyset to move between windows
noremap <C-j> <C-w>j
noremap <C-h> <C-w>h
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

"Move up and down within the console command
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>

"Environment specific set up
if has('gui_running')
	noremap <A-x> "+x
	noremap <A-c> "+y
	noremap <A-v> "+p
	inoremap <A-x> <esc>"+xa
	inoremap <A-c> <esc>"+ya
	inoremap <A-v> <esc>"+pa
	noremap <A-s> <esc>:w<cr>
	noremap <A-a> <esc>gg<S-v>G

	let g:UltiSnipsExpandTrigger       = "<A-q>"
	let g:UltiSnipsListSnippets        = "<A-s>"
	let g:UltiSnipsJumpForwardTrigger  = "<A-d>"
	let g:UltiSnipsJumpBackwardTrigger = "<A-a>"

	colorscheme wombat256mod
	nnoremap <A-j> :m .+1<CR>==
	nnoremap <A-k> :m .-2<CR>==
	inoremap <A-j> <Esc>:m .+1<CR>==gi
	inoremap <A-k> <Esc>:m .-2<CR>==gi
	vnoremap <A-j> :m '>+1<CR>gv=gv
	vnoremap <A-k> :m '<-2<CR>gv=gv
	noremap <A-e> <esc>:tabnew<cr>
	noremap <A-w> <esc>:tabclose<cr>
	noremap <A-o> <esc>:tabprevious<CR>
	noremap <A-p> <esc>:tabnext<CR>
	" noremap <C-A-e> <esc>:new<cr>
	" noremap <C-A-w> <esc>:bdelete<cr>
	" noremap <C-A-o> <esc>:bprevious<CR>
	" noremap <C-A-p> <esc>:bnext<CR>
	noremap <silent> <A-h> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
	noremap <silent> <A-l> :execute 'silent! tabmove ' . tabpagenr()<CR>
else
	" Change the cursor's shape for different modes
	let &t_SI = "\<Esc>]50;CursorShape=1\x7"
	let &t_EI = "\<Esc>]50;CursorShape=0\x7"
	"256 colors mode
	set t_Co=256
	"Customize highlighting color
	hi cursorline cterm=none ctermbg=black
	"Customize highlighting color (line number)
	hi cursorlinenr cterm=none ctermbg=black ctermfg=red
	"Customize text color (line number)
	hi linenr cterm=none ctermbg=black ctermfg=white

	noremap x "+x
	noremap c "+y
	noremap v "+p
	inoremap x <esc>"+xa
	inoremap c <esc>"+ya
	inoremap v <esc>"+pa
	noremap s <esc>:w<cr>
	noremap a <esc>gg<S-v>G

	let g:UltiSnipsExpandTrigger       = "q"
	let g:UltiSnipsListSnippets        = "s"
	let g:UltiSnipsJumpForwardTrigger  = "d"
	let g:UltiSnipsJumpBackwardTrigger = "a"

	colorscheme wombat256mod
	nnoremap j :m .+1<CR>==
	nnoremap k :m .-2<CR>==
	inoremap j <Esc>:m .+1<CR>==gi
	inoremap k <Esc>:m .-2<CR>==gi
	vnoremap j :m '>+1<CR>gv=gv
	vnoremap k :m '<-2<CR>gv=gv
	noremap e <esc>:tabnew<cr>
	noremap w <esc>:tabclose<cr>
	noremap o <esc>:tabprevious<CR>
	noremap p <esc>:tabnext<CR>
	" noremap e <esc>:new<cr>
	" noremap w <esc>:bdelete<cr>
	" noremap o <esc>:bprevious<CR>
	" noremap p <esc>:bnext<CR>
	noremap <silent> h :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
	noremap <silent> l :execute 'silent! tabmove ' . tabpagenr()<CR>
endif
