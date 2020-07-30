" 現在行をコメントアウトする
function! g:commenter#Comment()
    let l:i = indent('.') " スペースの数
    let l:line = getline('.')
    call setline('.', l:line[:l:i - 1] . '# ' . l:line[l:i:])
endfunction

nnoremap gc :call g:commenter#Comment()<cr>
