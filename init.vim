language en_US

packadd minpac
call minpac#init()

" PLUGIN LIST START
call minpac#add('w0rp/ale')
" PLUGIN LIST END

" ale configuration

" ale signs
" let g:ale_sign_error = "✘✘"
" let g:ale_sign_warning = '▶▶'

" ale highlights
highlight link AleError SpellBad
highlight link AleStyleError SpellBad
highlight AleWarning cterm=undercurl ctermbg=11
highlight AleStyleWarning cterm=undercurl ctermbg=11

