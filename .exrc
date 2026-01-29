let s:cpo_save=&cpo
set cpo&vim
inoremap <Plug>(emmet-merge-lines) =emmet#util#closePopup()=emmet#mergeLines()
inoremap <Plug>(emmet-anchorize-summary) =emmet#util#closePopup()=emmet#anchorizeURL(1)
inoremap <Plug>(emmet-anchorize-url) =emmet#util#closePopup()=emmet#anchorizeURL(0)
inoremap <Plug>(emmet-remove-tag) =emmet#util#closePopup()=emmet#removeTag()
inoremap <Plug>(emmet-split-join-tag) :call emmet#splitJoinTag()
inoremap <Plug>(emmet-toggle-comment) =emmet#util#closePopup()=emmet#toggleComment()
inoremap <Plug>(emmet-image-encode) =emmet#util#closePopup()=emmet#imageEncode()
inoremap <Plug>(emmet-image-size) =emmet#util#closePopup()=emmet#imageSize()
inoremap <Plug>(emmet-move-prev-item) :call emmet#moveNextPrevItem(1)
inoremap <Plug>(emmet-move-next-item) :call emmet#moveNextPrevItem(0)
inoremap <Plug>(emmet-move-prev) =emmet#util#closePopup()=emmet#moveNextPrev(1)
inoremap <Plug>(emmet-move-next) =emmet#util#closePopup()=emmet#moveNextPrev(0)
inoremap <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-1)
inoremap <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(1)
inoremap <Plug>(emmet-update-tag) =emmet#util#closePopup()=emmet#updateTag()
inoremap <Plug>(emmet-expand-word) =emmet#util#closePopup()=emmet#expandAbbr(1,"")
inoremap <Plug>(emmet-expand-abbr) =emmet#util#closePopup()=emmet#expandAbbr(0,"")
inoremap <silent> <M-k> <Cmd>m .-2==gi
inoremap <silent> <M-j> <Cmd>m .+1==gi
inoremap <silent> <expr> <BS> v:lua.MiniPairs.bs()
cnoremap <expr> <BS> v:lua.MiniPairs.bs()
inoremap <silent> <C-S> <Cmd>w
inoremap <C-W> u
inoremap <C-U> u
nnoremap <silent>  h
nnoremap <silent> <NL> j
nnoremap <silent>  k
nnoremap <silent>  l
nnoremap <silent>  <Cmd>w
xnoremap <silent>  <Cmd>w
snoremap <silent>  <Cmd>w
nmap  d
nnoremap  cm <Cmd>Mason
nnoremap  xT <Cmd>Trouble todo toggle filter = {tag = {TODO,FIX,FIXME}}
nnoremap  xt <Cmd>Trouble todo toggle
nnoremap  sq <Cmd>FzfLua quickfix
nnoremap  sR <Cmd>FzfLua resume
nnoremap  sm <Cmd>FzfLua marks
nnoremap  sM <Cmd>FzfLua man_pages
nnoremap  sl <Cmd>FzfLua loclist
nnoremap  sk <Cmd>FzfLua keymaps
nnoremap  sj <Cmd>FzfLua jumps
nnoremap  sH <Cmd>FzfLua highlights
nnoremap  sh <Cmd>FzfLua help_tags
nnoremap  sD <Cmd>FzfLua diagnostics_document
nnoremap  sd <Cmd>FzfLua diagnostics_workspace
nnoremap  sC <Cmd>FzfLua commands
nnoremap  sc <Cmd>FzfLua command_history
nnoremap  sb <Cmd>FzfLua lines
nnoremap  sa <Cmd>FzfLua autocmds
nnoremap  s/ <Cmd>FzfLua search_history
nnoremap  s" <Cmd>FzfLua registers
nnoremap  gS <Cmd>FzfLua git_stash
nnoremap  gs <Cmd>FzfLua git_status
nnoremap  gl <Cmd>FzfLua git_commits
nnoremap  gd <Cmd>FzfLua git_diff
nnoremap  gc <Cmd>FzfLua git_commits
nnoremap  fr <Cmd>FzfLua oldfiles
nnoremap  fg <Cmd>FzfLua git_files
nnoremap  fB <Cmd>FzfLua buffers
nnoremap  fb <Cmd>FzfLua buffers sort_mru=true sort_lastused=true
nnoremap  : <Cmd>FzfLua command_history
nnoremap  , <Cmd>FzfLua buffers sort_mru=true sort_lastused=true
nnoremap <silent>  	[ <Cmd>tabprevious
nnoremap <silent>  	d <Cmd>tabclose
nnoremap <silent>  	] <Cmd>tabnext
nnoremap <silent>  		 <Cmd>tabnew
nnoremap <silent>  	f <Cmd>tabfirst
nnoremap <silent>  	o <Cmd>tabonly
nnoremap <silent>  	l <Cmd>tablast
nnoremap <silent>  wd c
nnoremap <silent>  | v
nnoremap <silent>  - s
nnoremap <silent>  qq <Cmd>qa
nnoremap <silent>  fn <Cmd>enew
nnoremap <silent>  l <Cmd>Lazy
nnoremap <silent>  K <Cmd>norm! K
nnoremap <silent>  ur <Cmd>nohlsearch|diffupdate|normal! 
nnoremap <silent>  bD <Cmd>:bd
nnoremap <silent>  ` <Cmd>e #
nnoremap <silent>  bb <Cmd>e #
nnoremap  bl <Cmd>BufferLineCloseLeft
nnoremap  br <Cmd>BufferLineCloseRight
nnoremap  bP <Cmd>BufferLineGroupClose ungrouped
nnoremap  bp <Cmd>BufferLineTogglePin
nnoremap  xQ <Cmd>Trouble qflist toggle
nnoremap  xL <Cmd>Trouble loclist toggle
nnoremap  cS <Cmd>Trouble lsp toggle
nnoremap  cs <Cmd>Trouble symbols toggle
nnoremap  xX <Cmd>Trouble diagnostics toggle filter.buf=0
nnoremap  xx <Cmd>Trouble diagnostics toggle
nnoremap  sn <Nop>
nmap  E  fE
nmap  e  fe
omap <silent> % <Plug>(MatchitOperationForward)
xmap <silent> % <Plug>(MatchitVisualForward)
nmap <silent> % <Plug>(MatchitNormalForward)
nnoremap & :&&
vmap <silent> ,c <Plug>(emmet-code-pretty)
nmap <silent> ,m <Plug>(emmet-merge-lines)
nmap <silent> ,A <Plug>(emmet-anchorize-summary)
nmap <silent> ,a <Plug>(emmet-anchorize-url)
nmap <silent> ,k <Plug>(emmet-remove-tag)
nmap <silent> ,j <Plug>(emmet-split-join-tag)
nmap <silent> ,/ <Plug>(emmet-toggle-comment)
nmap <silent> ,I <Plug>(emmet-image-encode)
nmap <silent> ,i <Plug>(emmet-image-size)
nmap <silent> ,N <Plug>(emmet-move-prev)
nmap <silent> ,n <Plug>(emmet-move-next)
vmap <silent> ,D <Plug>(emmet-balance-tag-outword)
nmap <silent> ,D <Plug>(emmet-balance-tag-outword)
vmap <silent> ,d <Plug>(emmet-balance-tag-inward)
nmap <silent> ,d <Plug>(emmet-balance-tag-inward)
nmap <silent> ,u <Plug>(emmet-update-tag)
nmap <silent> ,; <Plug>(emmet-expand-word)
vmap <silent> ,, <Plug>(emmet-expand-abbr)
nmap <silent> ,, <Plug>(emmet-expand-abbr)
vnoremap <silent> ,w <Plug>(emmet-wrap-with-abbreviation)
xnoremap <silent> < <gv
xnoremap <silent> > >gv
xnoremap <silent> <expr> @ mode() ==# 'V' ? ':normal! @'.getcharstr().'' : '@'
nnoremap H <Cmd>BufferLineCyclePrev
nnoremap L <Cmd>BufferLineCycleNext
onoremap <silent> <expr> N 'nN'[v:searchforward]
xnoremap <silent> <expr> N 'nN'[v:searchforward]
nnoremap <silent> <expr> N 'nN'[v:searchforward].'zv'
xnoremap <silent> <expr> Q mode() ==# 'V' ? ':normal! @=reg_recorded()' : 'Q'
nnoremap Y y$
nnoremap [B <Cmd>BufferLineMovePrev
nnoremap [b <Cmd>BufferLineCyclePrev
omap <silent> [% <Plug>(MatchitOperationMultiBackward)
xmap <silent> [% <Plug>(MatchitVisualMultiBackward)
nmap <silent> [% <Plug>(MatchitNormalMultiBackward)
nnoremap ]b <Cmd>BufferLineCycleNext
nnoremap ]B <Cmd>BufferLineMoveNext
omap <silent> ]% <Plug>(MatchitOperationMultiForward)
xmap <silent> ]% <Plug>(MatchitVisualMultiForward)
nmap <silent> ]% <Plug>(MatchitNormalMultiForward)
xmap a% <Plug>(MatchitVisualTextObject)
nnoremap <silent> gcO OVcx<Cmd>normal gccfxa<BS>
nnoremap <silent> gco oVcx<Cmd>normal gccfxa<BS>
omap <silent> g% <Plug>(MatchitOperationBackward)
xmap <silent> g% <Plug>(MatchitVisualBackward)
nmap <silent> g% <Plug>(MatchitNormalBackward)
onoremap <silent> gc <Cmd>lua MiniComment.textobject()
xnoremap <silent> <expr> j v:count == 0 ? 'gj' : 'j'
nnoremap <silent> <expr> j v:count == 0 ? 'gj' : 'j'
xnoremap <silent> <expr> k v:count == 0 ? 'gk' : 'k'
nnoremap <silent> <expr> k v:count == 0 ? 'gk' : 'k'
onoremap <silent> <expr> n 'Nn'[v:searchforward]
xnoremap <silent> <expr> n 'Nn'[v:searchforward]
nnoremap <silent> <expr> n 'Nn'[v:searchforward].'zv'
vnoremap <Plug>(emmet-code-pretty) :call emmet#codePretty()
nnoremap <Plug>(emmet-merge-lines) :call emmet#mergeLines()
nnoremap <Plug>(emmet-anchorize-summary) :call emmet#anchorizeURL(1)
nnoremap <Plug>(emmet-anchorize-url) :call emmet#anchorizeURL(0)
nnoremap <Plug>(emmet-remove-tag) :call emmet#removeTag()
nnoremap <Plug>(emmet-split-join-tag) :call emmet#splitJoinTag()
nnoremap <Plug>(emmet-toggle-comment) :call emmet#toggleComment()
nnoremap <Plug>(emmet-image-encode) :call emmet#imageEncode()
nnoremap <Plug>(emmet-image-size) :call emmet#imageSize()
nnoremap <Plug>(emmet-move-prev-item) :call emmet#moveNextPrevItem(1)
nnoremap <Plug>(emmet-move-next-item) :call emmet#moveNextPrevItem(0)
nnoremap <Plug>(emmet-move-prev) :call emmet#moveNextPrev(1)
nnoremap <Plug>(emmet-move-next) :call emmet#moveNextPrev(0)
vnoremap <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-1)
nnoremap <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-1)
vnoremap <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(1)
nnoremap <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(1)
nnoremap <Plug>(emmet-update-tag) :call emmet#updateTag()
nnoremap <Plug>(emmet-expand-word) :call emmet#expandAbbr(1,"")
vnoremap <Plug>(emmet-expand-abbr) :call emmet#expandAbbr(2,"")
nnoremap <Plug>(emmet-expand-abbr) :call emmet#expandAbbr(3,"")
nnoremap <silent> <C-S> <Cmd>w
xnoremap <silent> <C-S> <Cmd>w
vnoremap <silent> <M-k> :execute "'<,'>move '<-" . (v:count1 + 1)gv=gv
vnoremap <silent> <M-j> :execute "'<,'>move '>+" . v:count1gv=gv
nnoremap <silent> <M-k> <Cmd>execute 'move .-' . (v:count1 + 1)==
nnoremap <silent> <M-j> <Cmd>execute 'move .+' . v:count1==
nnoremap <silent> <C-Right> <Cmd>vertical resize +2
nnoremap <silent> <C-Left> <Cmd>vertical resize -2
nnoremap <silent> <C-Down> <Cmd>resize -2
nnoremap <silent> <C-Up> <Cmd>resize +2
nnoremap <silent> <C-K> k
nnoremap <silent> <C-J> j
nnoremap <silent> <C-H> h
xnoremap <silent> <expr> <Up> v:count == 0 ? 'gk' : 'k'
nnoremap <silent> <expr> <Up> v:count == 0 ? 'gk' : 'k'
xnoremap <silent> <expr> <Down> v:count == 0 ? 'gj' : 'j'
nnoremap <silent> <expr> <Down> v:count == 0 ? 'gj' : 'j'
nnoremap <Plug>PlenaryTestFile :lua require('plenary.test_harness').test_file(vim.fn.expand("%:p"))
xmap <silent> <Plug>(MatchitVisualTextObject) <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)
onoremap <silent> <Plug>(MatchitOperationMultiForward) :call matchit#MultiMatch("W",  "o")
onoremap <silent> <Plug>(MatchitOperationMultiBackward) :call matchit#MultiMatch("bW", "o")
xnoremap <silent> <Plug>(MatchitVisualMultiForward) :call matchit#MultiMatch("W",  "n")m'gv``
xnoremap <silent> <Plug>(MatchitVisualMultiBackward) :call matchit#MultiMatch("bW", "n")m'gv``
nnoremap <silent> <Plug>(MatchitNormalMultiForward) :call matchit#MultiMatch("W",  "n")
nnoremap <silent> <Plug>(MatchitNormalMultiBackward) :call matchit#MultiMatch("bW", "n")
onoremap <silent> <Plug>(MatchitOperationBackward) :call matchit#Match_wrapper('',0,'o')
onoremap <silent> <Plug>(MatchitOperationForward) :call matchit#Match_wrapper('',1,'o')
xnoremap <silent> <Plug>(MatchitVisualBackward) :call matchit#Match_wrapper('',0,'v')m'gv``
xnoremap <silent> <Plug>(MatchitVisualForward) :call matchit#Match_wrapper('',1,'v'):if col("''") != col("$") | exe ":normal! m'" | endifgv``
nnoremap <silent> <Plug>(MatchitNormalBackward) :call matchit#Match_wrapper('',0,'n')
nnoremap <silent> <Plug>(MatchitNormalForward) :call matchit#Match_wrapper('',1,'n')
nmap <C-W><C-D> d
snoremap <silent> <C-S> <Cmd>w
nnoremap <silent> <C-L> l
inoremap <silent> <expr>  v:lua.MiniPairs.cr()
inoremap <silent>  <Cmd>w
inoremap  u
inoremap  u
inoremap <expr> " v:lua.MiniPairs.closeopen('""', "[^\\].")
cnoremap <expr> " v:lua.MiniPairs.closeopen('""', "[^\\].")
inoremap <expr> ' v:lua.MiniPairs.closeopen("''", "[^%a\\].")
cnoremap <expr> ' v:lua.MiniPairs.closeopen("''", "[^%a\\].")
inoremap <expr> ( v:lua.MiniPairs.open("()", "[^\\].")
cnoremap <expr> ( v:lua.MiniPairs.open("()", "[^\\].")
inoremap <expr> ) v:lua.MiniPairs.close("()", "[^\\].")
cnoremap <expr> ) v:lua.MiniPairs.close("()", "[^\\].")
imap <silent> ,m <Plug>(emmet-merge-lines)
imap <silent> ,A <Plug>(emmet-anchorize-summary)
imap <silent> ,a <Plug>(emmet-anchorize-url)
imap <silent> ,k <Plug>(emmet-remove-tag)
imap <silent> ,j <Plug>(emmet-split-join-tag)
imap <silent> ,/ <Plug>(emmet-toggle-comment)
imap <silent> ,I <Plug>(emmet-image-encode)
imap <silent> ,i <Plug>(emmet-image-size)
imap <silent> ,N <Plug>(emmet-move-prev)
imap <silent> ,n <Plug>(emmet-move-next)
imap <silent> ,D <Plug>(emmet-balance-tag-outword)
imap <silent> ,d <Plug>(emmet-balance-tag-inward)
imap <silent> ,u <Plug>(emmet-update-tag)
imap <silent> ,; <Plug>(emmet-expand-word)
imap <silent> ,, <Plug>(emmet-expand-abbr)
inoremap <silent> , ,u
inoremap <silent> . .u
inoremap <silent> ; ;u
inoremap <expr> [ v:lua.MiniPairs.open("[]", "[^\\].")
cnoremap <expr> [ v:lua.MiniPairs.open("[]", "[^\\].")
inoremap <expr> ] v:lua.MiniPairs.close("[]", "[^\\].")
cnoremap <expr> ] v:lua.MiniPairs.close("[]", "[^\\].")
inoremap <expr> ` v:lua.MiniPairs.closeopen("``", "[^\\].")
cnoremap <expr> ` v:lua.MiniPairs.closeopen("``", "[^\\].")
inoremap <expr> { v:lua.MiniPairs.open("{}", "[^\\].")
cnoremap <expr> { v:lua.MiniPairs.open("{}", "[^\\].")
inoremap <expr> } v:lua.MiniPairs.close("{}", "[^\\].")
cnoremap <expr> } v:lua.MiniPairs.close("{}", "[^\\].")
let &cpo=s:cpo_save
unlet s:cpo_save
set autowrite
set clipboard=unnamedplus
set cmdheight=0
set completeopt=menu,menuone,noselect
set confirm
set expandtab
set fillchars=diff:╱,eob:\ ,fold:\ ,foldclose:,foldopen:,foldsep:\ 
set formatexpr=v:lua.LazyVim.format.formatexpr()
set formatoptions=jcroqlnt
set grepformat=%f:%l:%c:%m
set grepprg=rg\ --vimgrep
set helplang=en
set ignorecase
set jumpoptions=view
set laststatus=3
set noloadplugins
set mouse=a
set packpath=/usr/local/Cellar/neovim/0.11.5_1/share/nvim/runtime
set pumblend=10
set pumheight=10
set noruler
set runtimepath=~/.config/nvim,~/.local/share/nvim/site,~/.local/share/nvim/lazy/lazy.nvim,~/.local/share/nvim/lazy/conform.nvim,~/.local/share/nvim/lazy/friendly-snippets,~/.local/share/nvim/lazy/blink.cmp,~/.local/share/nvim/lazy/emmet-vim,~/.local/share/nvim/lazy/nvim-lint,~/.local/share/nvim/lazy/mason-lspconfig.nvim,~/.local/share/nvim/lazy/mason.nvim,~/.local/share/nvim/lazy/nvim-lspconfig,~/.local/share/nvim/lazy/todo-comments.nvim,~/.local/share/nvim/lazy/gitsigns.nvim,~/.local/share/nvim/lazy/nvim-ts-autotag,~/.local/share/nvim/lazy/persistence.nvim,~/.local/share/nvim/lazy/fzf-lua,~/.local/share/nvim/lazy/mini.icons,~/.local/share/nvim/lazy/mini.ai,~/.local/share/nvim/lazy/mini.pairs,~/.local/share/nvim/lazy/bufferline.nvim,~/.local/share/nvim/lazy/which-key.nvim,~/.local/share/nvim/lazy/trouble.nvim,~/.local/share/nvim/lazy/lualine.nvim,~/.local/share/nvim/lazy/flash.nvim,~/.local/share/nvim/lazy/noice.nvim,~/.local/share/nvim/lazy/nvim-treesitter,~/.local/share/nvim/lazy/mini.comment,~/.local/share/nvim/lazy/nvim-treesitter-textobjects,~/.local/share/nvim/lazy/ts-comments.nvim,~/.local/share/nvim/lazy/plenary.nvim,~/.local/share/nvim/lazy/nui.nvim,~/.local/share/nvim/lazy/neo-tree.nvim,~/.local/share/nvim/lazy/blink.compat,~/.local/share/nvim/lazy/cmp-tabnine,~/.local/share/nvim/lazy/snacks.nvim,~/.local/share/nvim/lazy/tokyonight.nvim,~/.local/share/nvim/lazy/LazyVim,/usr/local/Cellar/neovim/0.11.5_1/share/nvim/runtime,/usr/local/Cellar/neovim/0.11.5_1/share/nvim/runtime/pack/dist/opt/netrw,/usr/local/Cellar/neovim/0.11.5_1/share/nvim/runtime/pack/dist/opt/matchit,/usr/local/Cellar/neovim/0.11.5_1/lib/nvim,~/.local/state/nvim/lazy/readme,~/.local/share/nvim/lazy/mason-lspconfig.nvim/after,~/.local/share/nvim/lazy/cmp-tabnine/after
set scrolloff=4
set sessionoptions=buffers,curdir,tabpages,winsize,help,globals,skiprtp,folds
set shiftround
set shiftwidth=2
set shortmess=lWTtOcFIoC
set noshowmode
set showtabline=2
set sidescrolloff=8
set smartcase
set smartindent
set splitbelow
set splitkeep=screen
set splitright
set statusline=%#lualine_transparent#
set tabline=%!v:lua.nvim_bufferline()
set tabstop=2
set termguicolors
set timeoutlen=300
set undofile
set undolevels=10000
set updatetime=200
set virtualedit=block
set wildmode=longest:full,full
set window=69
set winminwidth=5
" vim: set ft=vim :
