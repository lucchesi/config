set nocompatible
" source $VIMRUNTIME/vimrc_example.vim
 source $VIMRUNTIME/mswin.vim
behave mswin
set backspace=indent,eol,start

" if has('gui_running')
" 	set guifont=Courier_New:h10
" endif


" Syntax highlighting do faiska
au BufRead,BufNewFile *.fsk set filetype=faiska
syntax on
au! Syntax faiska source $HOME/vimfiles/syntax/fsk.vim

"Muda o esquema de cor
colorscheme darkblue

"Numeros das linhas
set number
set numberwidth=7

"Largura do tab
set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab

"mantem as linhas vazias identadas
inoremap <CR> <CR><Space><BS>
nnoremap o o<Space><BS>
nnoremap O O<Space><BS>

"autocompletar \o/
filetype plugin on

"set fileformats=dos,unix  " Vim's default on DOS/WIN/OS2
set fileformats=unix,dos  " Vim's default on UNX, also use it on DOS

"desabilitando os beeps
"set noerrorbells
"set visualbell
"set t_vb=

" taglist
"TlistToggle

"Mudar automaticamente pra pasta do arquivo
set autochdir

" Navegação visual, sem encher o saco com linhas longas \o/
nnoremap k gk
nnoremap j gj
nnoremap gk k
nnoremap gj j

" Seta o encoding
set bomb 
 
" Linhas longas
match ErrorMsg '\%>80v.\+'
 
		


" Marca de vermelho espaço sobrando ao final da linha
"  highlight ExtraWhitespace ctermbg=red guibg=red
"         autocmd InsertEnter * match ExtraWhitespace /\%(.\)\@>\s\+\%#\@<!$/
"         autocmd InsertLeave * match ExtraWhitespace /\%(.\)\@>\s\+$/

