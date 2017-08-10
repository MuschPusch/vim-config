execute 'source' fnamemodify(expand('<sfile>'), ':h').'/config/vimrc'

let g:neomake_php_phpcs_args_standard = 'Drupal'

" Allow saving of files as sudo when I forgot to start vim using sudo.
" cmap w!! w !sudo tee > /dev/null %

"run Neomake on php files on save
 function! RunAutoPHP()
   if &filetype == 'php'
     Neomake
   endif
 endfunction

autocmd! BufWritePost * call RunAutoPHP()
