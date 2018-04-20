" Vim syntax file
" Language:	Smarty Template
" Maintainer:	Fantasyczl <czilong0618@gmail.com>
" Last Change:	2018 Apri 15
" Remark:	


if exists("b:current_syntax") && b:current_syntax == 'smarty'
    finish
endif

runtime! syntax/php.vim

syntax region smartyEcho matchgroup=smartyDelim start=/\s*{%\s*/ end=/%}\s*/ oneline contains=@phpClTop
syntax match smartyStructure /{%\s*\(if\|elseif\|else\|for\|foreach\|assign\|var\|value\|extends\|include\)[^%}]*%}/ms=s+1

hi def link smartyDelim Delimiter
hi def link smartyStructure Keyword

if !exists('b:current_syntax')
    let b:current_syntax = 'smarty'
endif
