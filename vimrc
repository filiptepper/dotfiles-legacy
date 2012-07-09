call pathogen#infect()

syntax enable
colorscheme railscasts
set guifont=DejaVu\ Sans\ Mono:h12

set number
set hls is
set ts=2 sts=2 sw=2 expandtab

set list
set listchars=tab:▸\ ,eol:¬

set guioptions-=T

function! Preserve(command)
  let _s=@/
  let l = line(".")
  let c = col(".")

  execute a:command

  let @/=_s
  call cursor(l, c)
endfunction

autocmd BufWritePre * :call Preserve("%s/\\s\\+$//e")

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

set nocompatible
filetype on
filetype indent on
filetype plugin on

nmap <C-u> :NERDTreeToggle<CR>
nnoremap <leader>a :Ack!<space>
