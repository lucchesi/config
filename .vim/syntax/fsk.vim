" Vim syntax file
" Language:	Faiska Assembly
" Maintainer:	Fernando Lucchesi B Jurema <fernandolbastos@gmail.com>
" Last Change:	20 April 2010
" Faiska Home:	http://www.ic.unicamp.br/~ranido/mc404/

" Based on the FASM syntax file, by Ron Aaron

" Faiska is a fictitious processor, developed for academic use by 
" Prof Ricardo Anido of IC-Unicamp(State University of Campinas).
" This is the syntax file for its assembly language.


if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

setlocal iskeyword=a-z,A-Z,48-57,.,_
setlocal isident=a-z,A-Z,48-57,.,_
syn case ignore

" Instructions
syn keyword	faiskaInstr		org sys hlt
syn keyword	faiskaInstr		mov set
syn keyword	faiskaInstr		ld ldb st stb
syn keyword	faiskaInstr		add sub
syn keyword	faiskaInstr		cmp
syn keyword	faiskaInstr		and or xor test
syn keyword	faiskaInstr		shr shl sar ror rol rcr rcl
syn keyword	faiskaInstr		push pop

" Memory reservation
syn keyword	faiskaMem		ds db dw proc

" Jumps
syn keyword	faiskaJump contained	jmp jsr
syn keyword	faiskaJump contained	jc jnc ja
syn keyword	faiskaJump contained	jl jle jg jge
syn keyword	faiskaJump contained	jz jnz jo jno js jns
syn keyword	faiskaCall contained	call
syn keyword	faiskaCall		ret

" Registers
syn match	faiskaRegister		"\<r\d*\>"
syn keyword	faiskaRegister		sp ip

" Operators
syn match	faiskaOperator		"[+-/*]"
syn match	faiskaOperator		"[\(|\)]"

" Labels
syn match	faiskaLabel		"\w\+:"
syn match	faiskaLabel		"^\s*j..\s*\<\w*" contains=faiskaJump
syn match	faiskaLabel		"^\s*call\s*\<\w*" contains=faiskaCall

" Numbers
syn match	faiskaBinaryNumber	"\<[01]\+b\>"
syn match	faiskaHexNumber		"\<\d\x*h\>"
syn match 	faiskaNumber		"\<\d\+\>"

" Directive
syn match	faiskaDirective		"^\s*\w*\s*equ\s*\w*\>"

" Strings
syn region	faiskaString		start="\"" end="\""
syn region	faiskaString		start="'" end="'"

" Comments
syn region	faiskaComment		start=";" end="$"


" Linking different kinds together
hi def link	faiskaBinaryNumber	faiskaNumber
hi def link	faiskaHexNumber		faiskaNumber

hi def link	faiskaMem		faiskaInstr


" Link to standard syn groups so the 'colorschemes' work:
hi def link	faiskaComment		Comment

hi def link	faiskaDirective		PreProc

hi def link	faiskaNumber		Number
hi def link	faiskaString		String

hi def link	faiskaInstr		Keyword
hi def link	faiskaOperator		Operator

hi def link	faiskaLabel		Function
hi def link	faiskaCall		Function

hi def link	faiskaJump		Special
hi def link	faiskaRegister		StorageClass

let b:current_syntax = "faiska"
" vim: ts=8 sw=8 :
