set nocompatible
" source $VIMRUNTIME/vimrc_example.vim
 source $VIMRUNTIME/mswin.vim
behave mswin " I like ctrl-c
set backspace=indent,eol,start

if has('gui_running')
	set guifont=Courier_New:h10
	set guifontwide=MS_Gothic:h10
endif


" Syntax highlighting do faiska
au BufRead,BufNewFile *.fsk set filetype=faiska
syntax on
au! Syntax faiska source $HOME/vimfiles/syntax/fsk.vim

" Muda o esquema de cor
colorscheme darkblue

" Numeros das linhas
set number
set numberwidth=7

" Largura do tab
set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab

" mantem as linhas vazias identadas
inoremap <CR> <CR><Space><BS>
nnoremap o o<Space><BS>
nnoremap O O<Space><BS>

" autocompletar \o/
filetype plugin on

" set fileformats=dos,unix  " Vim's default on DOS/WIN/OS2
set fileformats=unix,dos  " Vim's default on UNX, also use it on DOS

" desabilitando os beeps
" set noerrorbells
" set visualbell
" set t_vb=

" taglist
" TlistToggle

" Mudar automaticamente pra pasta do arquivo
set autochdir

" Navegação visual, sem encher o saco com linhas longas \o/
nnoremap k gk
nnoremap j gj
nnoremap gk k
nnoremap gj j

" Também com as setas
nnoremap <up> gk
nnoremap <down> gj

" comandos funfando no IME
nnoremap ｘ x
nnoremap ｐ p
nnoremap お o
nnoremap ｙ y
nnoremap ｒ r

nnoremap ｈ h
nnoremap ｊ j
nnoremap ｋ k
nnoremap ｌ l


" Seta o encoding
" set bomb 
" set encoding=utf-8
" set enc=utf-8
" set fileencodings=utf-8,iso-8859-1,ansi
if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8 bomb
  set fileencodings=ucs-bom,utf-8,latin1
endif




" Marca de vermelho espaço sobrando ao final da linha
" highlight ExtraWhitespace ctermbg=red guibg=red
"        autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
"        autocmd InsertLeave * match ExtraWhitespace /\s\+$/
" (tb marca linhas vazias, que eu quero manter identadas)


" Marca linhas com mais de 80 chars
match ErrorMsg '\%>80v.\+'
