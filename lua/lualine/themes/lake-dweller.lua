local config = require("lake-dweller").config
local t = require("lake-dweller.theme")(config)

return {
    normal = {
        a = { fg = t.keyword, bg = t.float_bg, gui = "bold" },
        b = { fg = t.keyword, bg = t.bg_alt },
        c = { fg = t.fg, bg = t.float_bg },
    },
    insert = {
        a = { fg = t.added, bg = t.float_bg, gui = "bold" },
        b = { fg = t.keyword, bg = t.bg_alt },
        c = { fg = t.fg, bg = t.float_bg },
    },
    visual = {
        a = { fg = t.string, bg = t.float_bg, gui = "bold" },
        b = { fg = t.keyword, bg = t.bg_alt },
        c = { fg = t.fg, bg = t.float_bg },
    },
    replace = {
        a = { fg = t.error, bg = t.float_bg, gui = "bold" },
        b = { fg = t.keyword, bg = t.bg_alt },
        c = { fg = t.fg, bg = t.float_bg },
    },
    command = {
        a = { fg = t.warn, bg = t.float_bg, gui = "bold" },
        b = { fg = t.keyword, bg = t.bg_alt },
        c = { fg = t.fg, bg = t.float_bg },
    },
    inactive = {
        a = { fg = t.fg_dim, bg = t.float_bg },
        b = { fg = t.fg_dim, bg = t.fg_inverse },
        c = { fg = t.fg_dim, bg = t.fg_inverse },
    },
}
