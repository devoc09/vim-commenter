let s:comment_string = '# '

" 現在行をコメントアウトする
function! g:ToggleComment()
    let l:i = indent('.') " スペースの数
    let l:line = getline('.')
    let l:cur_row = getcurpos()[1]
    let l:cur_col = getcurpos()[2]
    if l:line[l:i:l:i + len(s:comment_string) - 1] == s:comment_string
        call setline('.', l:line[:l:i - 1] .
                    \ l:line[l:i + len(s:comment_string):])
        let l:cur_offset = -len(s:comment_string)
    else
        call setline('.', l:line[:l:i - 1] . s:comment_string . l:line[l:i:])
        let l:cur_offset = len(s:comment_string)
    endif
    call cursor(l:cur_row, l:cur_col + l:cur_offset)
endfunction

nnoremap gc :call g:ToggleComment()<cr>
