" 現在行をコメントアウトする
function! g:commenter#Comment()
    let l:line = getline('.')
    call setline('.', '# ' . l:line)
endfunction

nnoremap gc :call g:commenter#Comment()<cr>
