execute pathogen#infect()
syntax on
filetype plugin indent on

" set tab and indent related prefs and turn on line numbers
set expandtab
set tabstop=4
set shiftwidth=4
set nu
 
" fix up the backspace
set backspace=2 " make backspace work normal (non-vi style)
set whichwrap+=<,>,h,l  " backspace and cursor keys wrap to next/prev lines

" permanent status line
set laststatus=2
set statusline=%<%f%=\ [%1*%M%*%n%R]\ y\ %-19(%3l,%02c%03V%)

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

function! Puppetpackage()
    r~/.vim/vim/puppet/package.txt
endfunction

function! Puppetfile()
    r~/.vim/vim/puppet/file.txt
endfunction

function! Puppetservice()
    r~/.vim/vim/puppet/service.txt
endfunction

" map the previously defined functions to function keys
nmap <F2> :call Class()<CR>
nmap <F3> :call Webpage()<CR>
nmap <F4> :call Malloc()<CR>
nmap <F5> :call Doxygen()<CR>
nmap <F6> :call Forloop()<CR>

" nmap <F8> <Esc>g~iwea<Esc>
nmap <F8> <Esc>g~w<Esc>
nmap <F9> <Esc>d$<Esc>

" N.B! you cannot easily map anything to shift- or ctrl- with function keys!

" the puppet trifecta
nmap <C-1> :call Puppetpackage()<CR>
nmap <C-2> :call Puppetfile()<CR>
nmap <C-3> :call Puppetservice()<CR>

" map 'o' key and esc to <CR> i.e. Enter key, so that a new line
" is inserted under current line when hitting enter when not in
" command or edit mode.
nmap <CR> o<Esc>
