" => General

filetype plugin on
filetype indent on

set ffs=unix,dos,mac
set fencs=utf-8,cp1251,koi8-r,ucs-2,cp866

" Set to auto read when a file is changed from the outside
set autoread

" Default encoding
set encoding=utf8

" Show line numbers

"set number


" => Interface

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
set pastetoggle=<F2>
"set cursorline

" Height of the command bar
"set cmdheight=1

" Enable text paste with formatting save
set paste


" => Search

" Ignore case when searching
set ignorecase
set smartcase

" Highlight search results
set hlsearch
set incsearch
set showmatch


" => Colors & Fonts

" Enable syntax highlight
syntax enable
colorscheme desert
set background=dark

set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40


" => Tab settings

" Smarttabs
set smarttab

" 1 tab == 4 spaces
set tabstop=4
set shiftwidth=4

set et " Auto replase
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

set listchars=tab:··
set list


" => Helpers

" Show trailing whitespace:
highlight ExtraWhitespace ctermbg=red guibg=darkred
match ExtraWhitespace /\s\+$/

set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
set guifont=Monospace\ 12


" => Status line

set laststatus=2
set statusline=
set statusline+=%7*\[%n]                                  "buffernr
set statusline+=%1*\ %<%F\                                "File+path
set statusline+=%2*\ %y\                                  "FileType
set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      "Encoding
set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2
set statusline+=%4*\ %{&ff}\                              "FileFormat (dos/unix..)
set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\             "Rownumber/total (%)
set statusline+=%9*\ col:%03c\                            "Colnr
set statusline+=%0*\ \ %m%r%w\ %P\ \                      "Modified? Readonly? Top/bot.

function! HighlightSearch()
  if &hls
    return 'H'
  else
    return ''
  endif
endfunction

hi User1 guifg=#ffdad8  guibg=#880c0e
hi User2 guifg=#000000  guibg=#F4905C
hi User3 guifg=#292b00  guibg=#f4f597
hi User4 guifg=#112605  guibg=#aefe7B
hi User7 guifg=#ffffff  guibg=#880c0e gui=bold
hi User8 guifg=#ffffff  guibg=#5b7fbb
hi User9 guifg=#ffffff  guibg=#810085
hi User0 guifg=#ffffff  guibg=#094afe

hi User1 ctermfg=black ctermbg=DarkRed
hi User2 ctermfg=black ctermbg=darkCyan
hi User3 ctermfg=black ctermbg=Yellow
hi User4 ctermfg=black ctermbg=Green
hi User7 ctermfg=black ctermbg=DarkRed gui=bold
hi User8 ctermfg=black ctermbg=Blue
hi User9 ctermfg=black ctermbg=Magenta
hi User0 ctermfg=black ctermbg=DarkRed

"*cterm-colors*
"
"NR-16   NR-8    COLOR NAME
"0       0       Black
"1       4       DarkBlue
"2       2       DarkGreen
"3       6       DarkCyan
"4       1       DarkRed
"5       5       DarkMagenta
"6       3       Brown, DarkYellow
"7       7       LightGray, LightGrey, Gray, Grey
"8       0*      DarkGray, DarkGrey
"9       4*      Blue, LightBlue
"10      2*      Green, LightGreen
"11      6*      Cyan, LightCyan
"12      1*      Red, LightRed
"13      5*      Magenta, LightMagenta
"14      3*      Yellow, LightYellow
"15      7*      White



