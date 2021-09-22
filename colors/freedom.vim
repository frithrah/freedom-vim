" Freedom colour scheme by frithrah

hi clear
syntax reset

let g:colors_name = 'freedom'

" Colours - Material Design system
let s:grey50    = "#fafafa"
let s:grey100   = "#f5f5f5"
let s:grey200   = "#eeeeee"
let s:grey300   = "#e0e0e0"
let s:grey400   = "#bdbdbd"
let s:grey500   = "#9e9e9e"
let s:grey600   = "#757575"
let s:grey700   = "#616161"
let s:grey800   = "#424242"
let s:grey900   = "#212121"

let s:bgrey50   = "#eceff1"
let s:bgrey100  = "#cfd8dc"
let s:bgrey200  = "#b0bec5"
let s:bgrey300  = "#90a4ae"
let s:bgrey400  = "#78909c"
let s:bgrey500  = "#607d8b"
let s:bgrey600  = "#546e7a"
let s:bgrey700  = "#455a64"
let s:bgrey800  = "#37474f"
let s:bgrey900  = "#263238"

let s:red500    = "#f44336"
let s:green300  = "#81c784"
let s:green600  = "#43a047"
let s:blue100   = "#bbdefb"
let s:blue400   = "#42a5f5"
let s:blue900   = "#0d47a1"
let s:yellow500 = "#ffeb3b"
let s:yellow800 = "#f9a825"

" Styles
if &background == "light"
	let s:bg           = s:grey50
	let s:fg           = s:grey900
	let s:soft_bg      = s:grey200
	let s:soft_fg      = s:grey700
	let s:softer_bg    = s:grey100
	let s:softer_fg    = s:grey400
	let s:hard_bg      = s:grey300
	let s:hard_fg      = s:grey800
	let s:visual       = s:blue400
	let s:visual_fg    = s:bg
	let s:highlight    = s:yellow500
	let s:highlight_fg = s:fg
	let s:comment      = s:green600
	let s:constant     = s:blue900
	let s:alert        = s:red500

elseif &background == "dark"
	let s:bg           = s:bgrey900
	let s:fg           = s:bgrey50
	let s:soft_bg      = s:bgrey700
	let s:soft_fg      = s:bgrey200
	let s:softer_bg    = s:bgrey800
	let s:softer_fg    = s:bgrey500
	let s:hard_bg      = s:bgrey600
	let s:hard_fg      = s:bgrey100
	let s:visual       = s:blue400
	let s:visual_fg    = s:fg
	let s:highlight    = s:yellow800
	let s:highlight_fg = s:bg
	let s:comment      = s:green300
	let s:constant     = s:blue100
	let s:alert        = s:yellow800
endif


function! s:hi(group, bg, fg, ...)
	let style = get(a:, 1, "none")
	execute "highlight" a:group "guibg=" a:bg "guifg=" a:fg "gui=" style
endfunction


" UI
call s:hi("Normal", s:bg, s:fg)
call s:hi("Cursor", s:hard_fg, s:hard_bg)
call s:hi("MatchParen", s:bg, s:fg, "boldunderline")

call s:hi("Visual", s:visual, s:visual_fg)
hi! link VisualNOS Visual

call s:hi("Search", s:highlight, s:highlight_fg)
call s:hi("IncSearch", s:highlight, s:highlight_fg, "bold")

call s:hi("Pmenu", s:hard_bg, s:fg)
call s:hi("PmenuSel", s:highlight, s:highlight_fg)

call s:hi("LineNr", s:bg, s:softer_fg)
call s:hi("CursorLineNr", s:visual, s:visual_fg)
hi! link FoldColumn LineNr
hi! link SignColumn LineNr

call s:hi("TabLine", s:hard_bg, s:hard_fg)
call s:hi("TabLineSel", s:bg, s:fg)
hi! link TabLineFill TabLine
hi! link BufTabLineActive TabLine

call s:hi("StatusLine", s:soft_bg, s:soft_fg)
call s:hi("StatusLineNC", s:soft_bg, s:softer_fg)
hi! link ModeMsg Normal

call s:hi("NonText", s:bg, s:softer_fg)
call s:hi("EndOfBuffer", s:bg, s:soft_fg)
call s:hi("VertSplit", s:softer_bg, s:bg)

call s:hi("CursorLine", s:softer_bg, s:fg)
hi! link ColorColumn CursorLine

call s:hi("Folded", s:soft_bg, s:soft_fg)

" Syntax
call s:hi("Comment", s:bg, s:comment)
call s:hi("String", s:bg, s:constant)
call s:hi("Constant", s:bg, s:constant)
call s:hi("Todo", s:bg, s:comment, "boldunderline")
call s:hi("Title", s:bg, s:fg, "boldunderline")
call s:hi("Emphasis", s:bg, s:fg, "bold")
call s:hi("Error", s:bg, s:alert, "bold")
call s:hi("SpellBad", s:bg, s:fg, "undercurl")

hi! link Identifier Normal
hi! link Function Normal
hi! link Statement Normal
hi! link Conditional Normal
hi! link PreProc Normal
hi! link Type Normal
hi! link Special Normal
hi! link Delimiter Normal
hi! link ErrorMsg Error
hi! link SpellLocal SpellBad
hi! link SpellRare Normal
hi! link SpellCap Normal

hi! link Directory Normal

" Filetype
hi! link qfFileName Title
hi! link qfLineNr Normal
