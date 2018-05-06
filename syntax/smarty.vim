" Vim syntax file
" Language:	Smarty Template
" Maintainer:	Fantasyczl <czilong0618@gmail.com>
" Last Change:	2018 Apri 15
" Remark:	


if exists("b:current_syntax") && b:current_syntax == 'smarty'
    finish
endif

runtime! syntax/php.vim
unlet b:current_syntax

syntax region smartyEcho matchgroup=smartyDelim start=/\s*{%\s*/ end=/%}\s*/ oneline contains=ALL
syntax match smartyStructure /\(if\|elseif\|else\|for\|foreach\|assign\|var\|value\|extends\|include\|block\)/ containedin=smartyEcho,smartyDelim

hi def link smartyDelim Delimiter
hi def link smartyStructure Keyword

if !exists('b:current_syntax')
    let b:current_syntax = 'smarty'
endif
