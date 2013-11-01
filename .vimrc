" set tab and indent related prefs and turn on line numbers
set expandtab
set tabstop=4
set shiftwidth=4
set nu

" function to insert C++ class template quickly from file 
function! Class()
    " ~/vim/cpp/new-class.txt is the path to the template file
    r~/.vim/vim/cpp/new-class.txt
endfunction

" function to insert html5 page template quickly from file 
function! Webpage()
    r~/.vim/vim/html5/new-page.txt
endfunction

" function to insert malloc statement template quickly from file 
function! Malloc()
    r~/.vim/vim/c/malloc-char-buffer.txt
endfunction

" function to insert doxygen function or class comment template quickly from file 
function! Doxygen()
    r~/.vim/vim/generel/doxygen-comment.txt
endfunction

" function to insert C for loop template quickly from file 
function! Forloop()
    r~/.vim/vim/c/for-loop.txt
endfunction

" map the previously defined functions to function keys
nmap <F2> :call Class()<CR>
nmap <F3> :call Webpage()<CR>
nmap <F4> :call Malloc()<CR>
nmap <F5> :call Doxygen()<CR>
nmap <F6> :call Forloop()<CR>

" map 'o' key and esc to <CR> i.e. Enter key, so that a new line
" is inserted under current line when hitting enter when not in
" command or edit mode.
nmap <CR> o<Esc>
