" vim-airline theme for Tomorrow-Night-Bright.
" Colors taken directly from colors/Tomorrow-Night-Bright.vim so the
" statusline and the editor body share one palette.
"
" No has('nvim') handling needed here: Neovim's automatic statusline
" reverse-video (leaking from StatusLine/StatusLineNC's own default
" cterm=reverse) is cleared in config/plugins.vim instead, once, for every
" theme - not per color here, which would also break derived colors like
" separators (computed by reading back already-applied group colors, so
" per-array compensation here would double-apply).

let s:black      = ['#000000', '16']
let s:foreground = ['#eaeaea', '254']
let s:selection  = ['#424242', '237']
let s:line       = ['#2a2a2a', '234']
let s:comment    = ['#969896', '245']
let s:red        = ['#d54e53', '167']
let s:orange     = ['#e78c45', '172']
let s:green      = ['#b9ca4a', '148']
let s:blue       = ['#7aa6da', '110']
let s:purple     = ['#c397d8', '176']

let g:airline#themes#tomorrow_bright#palette = {}

let g:airline#themes#tomorrow_bright#palette.accents = {
      \ 'red': [ s:red[0], '', s:red[1], '' ]
      \ }

let s:N1 = [ s:black[0], s:green[0], s:black[1], s:green[1] ]
let s:N2 = [ s:foreground[0], s:selection[0], s:foreground[1], s:selection[1] ]
let s:N3 = [ s:green[0], s:black[0], s:green[1], s:black[1] ]
let g:airline#themes#tomorrow_bright#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let s:I1 = [ s:black[0], s:blue[0], s:black[1], s:blue[1] ]
let s:I2 = s:N2
let s:I3 = [ s:blue[0], s:black[0], s:blue[1], s:black[1] ]
let g:airline#themes#tomorrow_bright#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)

let s:V1 = [ s:black[0], s:purple[0], s:black[1], s:purple[1] ]
let s:V2 = s:N2
let s:V3 = [ s:purple[0], s:black[0], s:purple[1], s:black[1] ]
let g:airline#themes#tomorrow_bright#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)

let s:R1 = [ s:black[0], s:red[0], s:black[1], s:red[1] ]
let s:R2 = s:N2
let s:R3 = [ s:red[0], s:black[0], s:red[1], s:black[1] ]
let g:airline#themes#tomorrow_bright#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)

" airline has no dedicated palette convention for this mode beyond falling
" back to Normal, so give it a real color instead of losing the mode-color
" distinction (matches sonokai's approach). Orange, not Replace's red -
" red felt too alarming for something as routine as typing a : command.
let s:C1 = [ s:black[0], s:orange[0], s:black[1], s:orange[1] ]
let s:C2 = s:N2
let s:C3 = [ s:orange[0], s:black[0], s:orange[1], s:black[1] ]
let g:airline#themes#tomorrow_bright#palette.commandline = airline#themes#generate_color_map(s:C1, s:C2, s:C3)

let s:IA1 = [ s:comment[0], s:line[0], s:comment[1], s:line[1] ]
let g:airline#themes#tomorrow_bright#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA1, s:IA1)

unlet s:black s:foreground s:selection s:line s:comment s:red s:orange s:green s:blue s:purple
unlet s:N1 s:N2 s:N3 s:I1 s:I2 s:I3 s:V1 s:V2 s:V3 s:R1 s:R2 s:R3 s:C1 s:C2 s:C3 s:IA1
