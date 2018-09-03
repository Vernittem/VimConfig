" ==================================================
" Theme Name: Violet
" Author: Vernittem
" URL: https://github.com/Vernittem/vim-theme-violet
" License: MIT
" Last Change: 29|08|2018
" Require:
"  pangloss/vim-javascript
" ==================================================


hi clear

if exists("syntax_on")
	syntax reset
endif

set background=dark
let g:colors_name = "violet"

function! s:guiFor(...)

	let l:guifg = a:[len(a:000)]
	let l:guibg = a:[len(a:000) - 1]

	let i = 1
	let max = len(a:000) - 2

	while i <= max
		let histring = 'hi ' . a:[i] . ' guibg=' . l:guibg . ' guifg=' . l:guifg
		execute histring
		let i += 1
	endwhile

endfunction


" <-- General --> "

call s:guiFor('Normal', '#4c004f', '#ffffff')
call s:guiFor('LineNr', 'NONE', '#ffffff')
call s:guiFor('Visual', '#ffffff', '#462554')
call s:guiFor('SpecialKey', 'NONE', '#be62d1')
call s:guiFor('ErrorMsg', '#ffffff', '#ff0000')
call s:guiFor('Error', 'NONE', '#ff0000')
call s:guiFor('EndOfBuffer', 'NONE', '#ffffff')
call s:guiFor('NonText', 'NONE', '#666666')
call s:guiFor('SpecialKey', 'NONE', '#666666')
call s:guiFor('Pmenu', '#eeeeee', '#000000')

	" -- Syntax -- "

call s:guiFor('Keyword', 'Type', 'NONE', '#54ceff')
call s:guiFor('Comment', 'NONE', '#cccccc')
call s:guiFor('Function', 'NONE', '#db00a4')

" <-- Syntax --> "

" <-- VimScript --> "

call s:guiFor('vimParenSep', 'NONE', '#ffffff')

" <-- JavaScript --> "

	" -- Keyword -- "

	call s:guiFor('jsNull', 'jsReturn', 'jsStatement', 'jsFunction', 'jsImport', 'jsExport', 'jsThis', 'jsModuleKeyword', 'jsExportDefaultGroup', 'jsModuleAs', 'jsFrom', 'jsStorageClass', 'jsRepeat', 'jsDo', 'jsConditional', 'jsLabel', 'NONE', '#54ceff')

	" -- Type -- "

call s:guiFor('jsString', 'NONE', '#76f2b4')
call s:guiFor('jsNumber', 'jsNan', 'NONE', '#e17b26')
call s:guiFor('jsBooleanTrue', 'jsBooleanFalse', 'NONE', '#e5ed00')
call s:guiFor('jsUndefined', 'NONE', '#ffffff')
call s:guiFor('jsRegexpCharClass', 'jsRegexpSpecial', 'jsTemplateExpression', 'jsRegexpGroup', 'jsRegexpString', 'SpecialChar', 'jsRegexpOr', 'Special', 'NONE', '#fc82ff')

	" -- Function -- "

call s:guiFor('jsFuncName', 'NONE', '#db00a4')

	" -- Operator -- "

call s:guiFor('jsDot', 'jsOperator', 'jsOperatorKeyword', 'NONE', '#f24f4f')

	" -- Comment -- "

call s:guiFor('jsComment', 'NONE', '#cccccc')
call s:guiFor('jsCommentTodo', 'NONE', '#ff0000')
