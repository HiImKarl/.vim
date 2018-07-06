set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
retab

" manipulating vimrc
nnoremap <localleader>ev :vsplit /home/$USER/.vim/ftplugin/cc.vim<cr>
nnoremap <localleader>sv :source /home/$USER/.vim/ftplugin/cc.vim<cr>

" window size
augroup Window
  autocmd!
augroup END

let g:clang_format#style_options = {
    \ "AccessModifierOffset" : -4,
    \ "AllowShortIfStatementsOnASingleLine" : "true",
    \ "Standard" : "C++11",
    \ "BreakBeforeBraces" : "Custom",
    \ "BraceWrapping" : "{ AfterControlStatement : false, AfterFunction : true}",
    \ "CompactNamespaces" : "true"}

" STL
nnoremap <localleader>std viwo<Esc>istd::<Esc>e

" Common STL containers
nnoremap <localleader>up viwo<Esc>iunique_ptr<<Esc>ea><Esc>e
nnoremap <localleader>sp viwo<Esc>ishared_ptr<<Esc>ea><Esc>e
nnoremap <localleader>mu viwo<Esc>imake_unique<<Esc>ea>()<Esc>
nnoremap <localleader>mo viwo<Esc>imove(<Esc>ea)<Esc>

" Comments
nnoremap <localleader>cl I// <Esc>
nnoremap <localleader>Cl 03x

" !Abbreviations
" preprocessor
iabbrev #i #include
iabbrev #d #define

" includes
iabbrev io@ #include <iostream>
iabbrev str@ #include <string>
iabbrev vec@ #include <vector>
iabbrev lis@ #include <list>
iabbrev mem@ #include <memory>
iabbrev umap@ #include <unordered_map>
iabbrev map@ #include <map>
iabbrev stack@ #include <stack>

" using
iabbrev std@@ using namespace std;
iabbrev boost@@ using namespace boost;
iabbrev vec@@ using std::vector;
iabbrev lis@@ using std::list;
iabbrev str@@ using std::string;
iabbrev umap@@ using std::unordered_map;
iabbrev uptr@@ using std::unique_ptr;
iabbrev sptr@@ using std::shared_ptr;
iabbrev map@@ using std::map;
iabbrev stack@@ using std::stack;

" misc
iabbrev uptr unique_ptr<><Esc><BS>
iabbrev sptr shared_ptr<><Esc><BS>
iabbrev muq make_unique<><Esc><BS>
iabbrev main() int main(int argc, char **argv)<CR>{<CR>return 0;<CR>}<ESC>2k<BS>
