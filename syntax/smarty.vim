" Vim syntax file
" Language:	Smarty Template
" Maintainer:	Fantasyczl <czilong0618@gmail.com>
" Last Change:	2018 Apri 15
" Remark:	


if exists("b:current_syntax") && b:current_syntax == 'smarty'
    finish
endif

runtime! syntax/html.vim
silent! unlet b:current_syntax

setlocal iskeyword+={%
setlocal iskeyword+=%}
setlocal iskeyword+=/if
setlocal iskeyword+=/for
setlocal iskeyword+=/foreach

syntax keyword smartyDelim {% %}
syntax keyword smartyStatement if elseif else /if foreach /foreach for /for

highlight link smartyDelim type
highlight link smartyStatement Statement


"syn region bladeUnescapedEcho matchgroup=bladeEchoDelim start=/@\@<!\s*{!!/ end=/!!}\s*/ oneline contains=@phpClTop containedin=ALLBUT,bladeComment
"syn region bladeEscapedEcho matchgroup=bladeEchoDelim start=/@\@<!\s*{{{\@!/ end=/}}\s*/ oneline contains=@phpClTop containedin=ALLBUT,bladeComment
"syn region bladeEscapedEcho matchgroup=bladeEchoDelim start=/@\@<!\s*{{{{\@!/ end=/}}}/ oneline contains=@phpClTop containedin=ALLBUT,bladeComment
"
"syn match bladeStructure /\s*@\(else\|empty\|endfor\|endforeach\|endforelse\|endif\|endpush\|endsection\|endunless\|endwhile\|overwrite\|show\|stop\)\>/
"
"syn match bladeStructure /\s*@\(append\|choice\|each\|elseif\|extends\|for\|foreach\|forelse\|if\|include\|lang\|push\|section\|stack\|unless\|while\|yield\|\)\>\s*/ nextgroup=bladeParens
"
"syn region bladeParens matchgroup=bladeParen start=/(/ end=/)/ contained contains=@bladeAll,@phpClTop
"
"syn region bladeComments start=/\s*{{--/ end=/--}}/ contains=bladeComment keepend
"syn match bladeComment /.*/ contained containedin=bladeComments
"
"syn cluster bladeAll contains=bladeStructure,bladeParens
"
"hi def link bladeComment        Comment
"hi def link bladeEchoDelim      Delimiter
"hi def link bladeParen          Delimiter
"hi def link bladeStructure      Keyword


if !exists('b:current_syntax')
    let b:current_syntax = 'smarty'
endif
