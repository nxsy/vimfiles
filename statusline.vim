"statusline setup
set statusline=%f       "tail of the filename

"Git
"set statusline+=[%{GitBranch()}]

"display a warning if fileformat isnt unix
set statusline+=%#warningmsg#
set statusline+=%{&ff!='unix'?'['.&ff.']':''}
set statusline+=%*

"Display a warning if file encoding isnt utf-8
set statusline+=%#warningmsg#
set statusline+=%{(&fenc!='utf-8'&&&fenc!='')?'['.&fenc.']':''}
set statusline+=%*

"set statusline+=%h      "help file flag
set statusline+=%y      "filetype
"set statusline+=%r      "read only flag
"set statusline+=%m      "modified flag

"display a warning if &et is wrong, or we have mixed-indenting
"set statusline+=%#error#
"set statusline+=%{StatuslineTabWarning()}
"set statusline+=%*
"
"set statusline+=%{StatuslineTrailingSpaceWarning()}
"
"set statusline+=%{StatuslineLongLineWarning()}
"
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"display a warning if &paste is set
set statusline+=%#error#
set statusline+=%{&paste?'[paste]':''}
set statusline+=%*

set statusline+=%=      "left/right separator

"set statusline+=%{StatuslineCurrentHighlight()}\ \ "current highlight

set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
set laststatus=2
