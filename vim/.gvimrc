" -------------------------------------------------
" MacVim GUI-only settings (.gvimrc / mvimrc)
" -------------------------------------------------

set background=dark

" Prefer truecolor in modern Vim/MacVim; keep 256 colors as fallback
if has('termguicolors')
  set termguicolors
endif

" Colorscheme (only if installed)
silent! colorscheme base16-tomorrow

" Make hidden chars less noisy in GUI
highlight NonText guifg=#888888
highlight SpecialKey guifg=#888888

" Font (Powerline)
set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h14

set antialias
set visualbell

" UI clean
set guioptions-=T   " toolbar
set guioptions-=m   " menubar
set guioptions-=r   " right scrollbar
set guioptions-=L   " left scrollbar

" Fullscreen takes up entire screen
set fuoptions=maxhorz,maxvert


" -------------------------------------------------
" NERDTree helpers (only if NERDTree is installed)
" -------------------------------------------------

if exists(':NERDTreeToggle')

  " Keep NERDTree in sync when MacVim regains focus
  augroup mvim_nerdtree
    autocmd!
    autocmd FocusGained * call <SID>UpdateNERDTree(1)
  augroup END

  function! s:UpdateNERDTree(stay) abort
    " Refresh NERDTree if its buffer exists in a window
    if exists('t:NERDTreeBufName')
      let l:nr = bufwinnr(t:NERDTreeBufName)
      if l:nr != -1
        execute l:nr . 'wincmd w'
        " NERDTree maps 'R' to refresh; call it if present
        if mapcheck('R', 'n') !=# ''
          execute substitute(mapcheck('R', 'n'), '<CR>', '', '')
        endif
        if !a:stay
          wincmd p
        endif
      endif
    endif
  endfunction

endif


" -------------------------------------------------
" Airline (only if installed)
" -------------------------------------------------
let g:airline_theme='base16'