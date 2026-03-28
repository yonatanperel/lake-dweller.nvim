local config = require("lake-dweller").config
local t = require("lake-dweller.theme")(config)
local variant = config.variant or "lake-dweller"
local palette = require("lake-dweller.variants." .. variant)
local bg = palette.float_bg

return {
    normal = {
        a = { fg = t.keyword, bg = bg, gui = "bold" },
        b = { fg = t.keyword, bg = t.bg_alt },
        c = { fg = t.fg, bg = bg },
    },
    insert = {
        a = { fg = t.added, bg = bg, gui = "bold" },
        b = { fg = t.keyword, bg = t.bg_alt },
        c = { fg = t.fg, bg = bg },
    },
    visual = {
        a = { fg = t.string, bg = bg, gui = "bold" },
        b = { fg = t.keyword, bg = t.bg_alt },
        c = { fg = t.fg, bg = bg },
    },
    replace = {
        a = { fg = t.error, bg = bg, gui = "bold" },
        b = { fg = t.keyword, bg = t.bg_alt },
        c = { fg = t.fg, bg = bg },
    },
    command = {
        a = { fg = t.warn, bg = bg, gui = "bold" },
        b = { fg = t.keyword, bg = t.bg_alt },
        c = { fg = t.fg, bg = bg },
    },
    inactive = {
        a = { fg = t.fg_dim, bg = bg },
        b = { fg = t.fg_dim, bg = t.fg_inverse },
        c = { fg = t.fg_dim, bg = t.fg_inverse },
    },
}
