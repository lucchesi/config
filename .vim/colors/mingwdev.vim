" Vim color file
" Maintainer: Fernando Lucchesi Bastos Jurema
" Last Change:	2009

" This scheme is designed to mimic the look-and-feel of MinGW Developer Studio

" Set 'background' back to the default.  The value can't always be estimated
" and is then guessed.
hi clear Normal
set bg&

" Remove all existing highlighting and set the defaults.
hi clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
  syntax reset
endif

let colors_name = "mingwdev"

" Colors for syntax highlighting
hi Comment 		term=bold 	ctermfg=4 	gui=italic 	guifg=ForestGreen
hi Constant 	term=underline 	ctermfg=1 			guifg=DarkOrchid "DarkCyan "#c00058
hi Number 		term=underline 	ctermfg=1 			guifg=Navy
hi Special 		term=bold 	ctermfg=5	 			guifg=#9932cc "DarkOrchid "SlateBlue
hi Identifier 	term=underline 	ctermfg=6 			guifg=DarkCyan
hi Statement 	term=bold 	ctermfg=3 	gui=bold 	guifg=Navy
hi PreProc 		term=underline 	ctermfg=5 			guifg=#9f9f5f "Khaki
hi Type 		term=underline 	ctermfg=2 	gui=bold 	guifg=Navy
hi Ignore 		cterm=bold 	ctermfg=7 			guifg=bg
hi Error 		term=reverse 	ctermfg=7  	gui=bold	guifg=White cterm=bold ctermbg=1
"hi Error 		term=reverse 	ctermfg=7  	gui=bold	guifg=White guibg=Red cterm=bold ctermbg=1
"hi Todo 		term=standout 	ctermfg=0 ctermbg=3 guifg=Blue guibg=Yellow

hi LineNr 	term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=Black guibg=Grey
