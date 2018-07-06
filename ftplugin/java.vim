set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
retab

" manipulating vimrc
nnoremap <localleader>ev :vsplit /home/$USER/.vim/ftplugin/java.vim<cr>
nnoremap <localleader>sv :source /home/$USER/.vim/ftplugin/java.vim<cr>

" verbose functions
iabbrev println System.out.println();<Esc>hh
