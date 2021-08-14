local gmc = require("themes.gmc")

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
theme.dir = os.getenv("HOME") .. "/.config/awesome/themes/powerarrow"
theme.wallpaper = theme.dir .. "/wally.jpg"

theme.font          = "Terminus 11" -- "Tamsyn 10" -- "Sans 8"
theme.taglist_font  = "Noto Sans Regular 14"

theme.bg_normal = "#222222"
theme.bg_focus = "#1E2320"
theme.bg_urgent = "#3F3F3F"
theme.bg_minimize   = gmc.color['grey500']   .. "cc"
theme.bg_systray    = gmc.color['grey100']   .. "cc"

theme.fg_normal = "#FEFEFE"
theme.fg_focus = "#7b88d3"
theme.fg_urgent = "#b74822"
theme.fg_minimize   = gmc.color['white']

theme.useless_gap   = dpi(4)
theme.border_width  = dpi(2)

theme.border_normal = "#3F3F3F"
theme.border_focus = "#6F6F6F"
theme.border_marked = "#CC9393"

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- Example:

theme.taglist_fg_focus = "#7b88d3"
--theme.taglist_bg_focus = "png:" .. theme_path .. "misc/copycat-holo/taglist_bg_focus.png"
theme.taglist_fg_focus = gmc.color['white']


theme.tasklist_bg_normal = gmc.color['white']    .. "88"
--theme.tasklist_bg_normal = "png:" .. theme_path .. "misc/copycat-holo/bg_focus.png"
theme.tasklist_bg_focus = "#222222"
--theme.tasklist_bg_focus  = "png:" .. theme_path .. "misc/copycat-holo/bg_focus_noline.png"
theme.tasklist_fg_focus = "#7b88d3"

theme.tasklist_plain_task_name = true
theme.tasklist_disable_icon = true

theme.titlebar_bg_focus = theme.bg_focus
theme.titlebar_bg_normal = theme.bg_normal
theme.titlebar_fg_focus = theme.fg_focus

-- Generate taglist squares:
local taglist_square_size = dpi(4)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
    taglist_square_size, gmc.color['black']
)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
    taglist_square_size, gmc.color['white']
)

-- Display the taglist squares

-- override
theme.taglist_squares_sel = theme.dir .. "/icons/square_sel.png"
theme.taglist_squares_unsel = theme.dir .. "/icons/square_unsel.png"

-- alternate override
-- theme.taglist_squares_sel   = theme_path .. "taglist/copycat-blackburn/square_sel.png"
-- theme.taglist_squares_unsel = theme_path .. "taglist/copycat-blackburn/square_unsel.png"
-- theme.taglist_squares_sel   = theme_path .. "taglist/copycat-zenburn/squarefz.png"
-- theme.taglist_squares_unsel = theme_path .. "taglist/copycat-zenburn/squareza.png"


-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = theme.dir .. "/icons/submenu.png"

theme.menu_height = dpi(20)
theme.menu_width = dpi(140)
--theme.menu_context_height = 20

theme.menu_bg_normal = gmc.color['white']  .. "cc"
theme.menu_bg_focus  = gmc.color['red300'] .. "cc"
theme.menu_fg_focus  = gmc.color['black']

theme.menu_border_color = gmc.color['blue500'] .. "cc"
theme.menu_border_width = 1

theme.awesome_icon = theme.dir .. "/icons/awesome.png"

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"
