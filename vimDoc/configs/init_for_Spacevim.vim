" Dark powered mode of SpaceVim, generated by SpaceVim automatically."{{{
let g:spacevim_enable_debug = 1
let g:spacevim_realtime_leader_guide = 1

"let g:neosnippet#snippets_directory="/home/vi/Documents/MyNeoSnippets"

let g:spacevim_disabled_plugins = [
\ [''],
\ ]

let g:spacevim_colorscheme = 'jellybeans'
call SpaceVim#layers#load('default')

call SpaceVim#layers#load('colorscheme')
call SpaceVim#layers#load('autocomplete')
call SpaceVim#layers#load('chinese')

call SpaceVim#layers#load('incsearch')
call SpaceVim#layers#load('lang#c')
call SpaceVim#layers#load('lang#elixir')
call SpaceVim#layers#load('lang#go')
call SpaceVim#layers#load('lang#haskell')
call SpaceVim#layers#load('lang#java')
call SpaceVim#layers#load('lang#javascript')
call SpaceVim#layers#load('lang#lua')
call SpaceVim#layers#load('lang#perl')
call SpaceVim#layers#load('lang#php')
call SpaceVim#layers#load('lang#python')
call SpaceVim#layers#load('lang#rust')
call SpaceVim#layers#load('lang#swig')
call SpaceVim#layers#load('lang#tmux')
call SpaceVim#layers#load('lang#vim')
call SpaceVim#layers#load('lang#xml')
call SpaceVim#layers#load('shell')   
call SpaceVim#layers#load('tools#screensaver')
let g:spacevim_enable_vimfiler_welcome = 1
let g:spacevim_enable_debug = 1
let g:deoplete#auto_complete_delay = 150
let g:spacevim_enable_tabline_filetype_icon = 1
let g:spacevim_enable_os_fileformat_icon = 1
let g:spacevim_buffer_index_type = 1
let g:neomake_vim_enabled_makers = []
if executable('vimlint')
    call add(g:neomake_vim_enabled_makers, 'vimlint') 
endif
if executable('vint')
    call add(g:neomake_vim_enabled_makers, 'vint') 
endif
if has('python3')
    let g:ctrlp_map = ''
    nnoremap <silent> <C-p> :Denite file_rec<CR>
endif
let g:clang2_placeholder_next = ''
let g:clang2_placeholder_prev = ''"}}}
"-------------------- losacii's Settings------------------------
"Basic settings:"{{{
    set path+=**
    syntax on
    set autoindent
    set smartindent
    set tabstop=4
    set softtabstop=4
    set shiftwidth=4
    set shiftround
    set expandtab
    set pastetoggle=<F12>
    set ic
"}}}
" mouse select past not infected"{{{
    if has('mouse')
        set mouse-=a 
    endif
"}}}
"mapleader things"{{{

    "Set mapleader
        let mapleader=','
        nnoremap ; :
"}}}
    "Save file"{{{
        nnoremap <leader>fw <esc>:up<cr>
        inoremap <leader>fw <esc>:up<cr>
"}}}
    "Quit all"{{{
        nnoremap <leader>fe <esc>:q!<cr>
        nnoremap <leader>fe <esc>:q!<cr>
"}}}
    "Run python code"{{{
        inoremap <leader>x <esc>:! python %<cr>
        nnoremap <leader>x <esc>:! python %<cr>
"}}}
    "Easily jump to begin of end of line"{{{
        nnoremap ;a 0
        nnoremap ;f $
        inoremap <M-h> <Left>
        inoremap <M-j> <Down>
        inoremap <M-k> <Up>
        inoremap <M-l> <Right>

        inoremap <M-i> <esc>Bi
        inoremap <M-o> <esc>Ea
        inoremap <M-u> <Home>
        inoremap <M-p> <End>
"}}}
    " Add Empty Lines"{{{
        inoremap <M-,> <esc>xi
        inoremap <M-.> <delete>
        inoremap <c-j> <esc>o<esc>kA
        inoremap <c-k> <esc>O<esc>jA
"}}}
    " Tab operations:"{{{
        nnoremap <leader>to :tabnew<space>
        nnoremap <leader>t, :tabNext<cr>
        nnoremap <leader>t. :tabnext<cr>
        nnoremap <leader>tt :tabonly<cr>
        nnoremap <leader>ta :tabfirst<cr>
        nnoremap <leader>tf :tablast<cr
"}}}
    "Github Update"{{{
        nnoremap ;ga <esc>:! git add .<cr>
        nnoremap ;gc <esc>:! git commit -m ''<Left>
        nnoremap ;gp <esc>:! git push<cr>
        nnoremap ;gs <esc>:! git config --global user.name 'losacii' && git config --global user.email 'losacii5@gmail.com'
        nnoremap ;sv <esc>:! cp % ~/doc/myAppSample/spaceVimrc_INIT
"}}}
    "UPPER / lower"{{{
        inoremap ;U <esc>viw~ea
        nnoremap ;U <esc>viw~ea
        inoremap ;u <esc>viw~
        nnoremap ;u <esc>viw~
    "}}}
    
    " Jump Splits"{{{
    nnoremap <c-s-l> <c-w>l
    nnoremap <c-s-h> <c-w>h
    nnoremap <c-s-j> <c-w>j
    nnoremap <c-s-k> <c-w>k
    "}}}

    " Auto load and save folds"{{{
    au BufWinLeave * mkview
    au BufWinEnter * silent loadview
    "}}}

" Snippets
nnoremap <leader>pymn :read ~/Documents/MyNeoSnippets/main.py<cr>







" ------------------ endline ------------------
