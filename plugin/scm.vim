
"
" SCM vim
" =======
"
" Author: Henrik Kjelsberg <hkjels@me.com> (http://take.no/)
" Version: 0.0.1
"

if exists('g:loaded_scm')
  finish
else
  let g:loaded_scm = 1
endif


" Git ------------------------------------------------------------------ {{{

  NeoBundle 'tpope/vim-fugitive'      " Git UI
  NeoBundle 'gregsexton/gitv'         " Repository viewer
  NeoBundle 'kablamo/vim-git-log'     " For browsing git logs

  " Gitv
  let g:Gitv_TruncateCommitSubjects=1

  cabbrev gb Gblame
  cabbrev gc Gcommit
  cabbrev gd Gdiff
  cabbrev gl Gitv
  cabbrev gp Git push
  cabbrev gs Gstatus

" }}}


" Shared --------------------------------------------------------------- {{{

  NeoBundle 'sjl/splice.vim'          " Simplify three-way merge
  NeoBundle 'mhinz/vim-signify'       " Display changes in a gutter

  " Move between changes in diff-mode using arrow-keys
  au BufEnter * if &diff | call s:DiffMappings()
  fun! s:DiffMappings()
    map <up> [c<cr>
    map <down> ]c<cr>
  endfun

" }}}

