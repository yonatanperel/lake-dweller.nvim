return function(t, _config)
    return {
        Normal = { fg = t.fg, bg = t.bg },
        Cursor = { fg = t.fg_inverse, bg = t.func },
        lCursor = { fg = t.fg_inverse, bg = t.func },
        CursorIM = { fg = t.fg_inverse, bg = t.func },
        NormalNC = { fg = t.fg, bg = t.bg },
        NormalFloat = { fg = t.fg, bg = t.float_bg },
        FloatBorder = { fg = t.fg, bg = t.bg },
        FloatTitle = { fg = t.fg, bg = t.float_bg, bold = true },

        SignColumn = { fg = t.fg, bg = t.bg },
        LineNr = { fg = t.fg_dim, bg = t.bg },
        CursorLineNr = { fg = t.fg, bg = t.bg },
        WinSeparator = { fg = t.fg_dim, bg = t.bg },

        Visual = { fg = t.fg, bg = t.selection },
        Search = { fg = t.fg, bg = t.search, bold = true },
        IncSearch = { fg = t.fg_inverse, bg = t.search_inc, bold = true },
        CurSearch = { fg = t.fg_inverse, bg = t.search_current, bold = true },

        MatchParen = { fg = t.error, underline = true },
        QuickFixLine = { fg = t.fg_inverse, bg = t.warn },

        Pmenu = { fg = t.fg, bg = t.float_bg },
        PmenuSel = { fg = t.fg, bg = t.selection },
        PmenuSbar = { fg = t.fg, bg = t.float_bg },
        PmenuThumb = { bg = t.keyword },

        StatusLine = { fg = t.fg, bg = t.float_bg },
        StatusLineNC = { fg = t.fg_dim, bg = t.float_bg },

        Directory = { fg = t.type, bg = t.bg, bold = true },
        Special = { fg = t.keyword },

        DiffAdd = { bg = t.selection_added },
        DiffChange = { bg = t.selection },
        DiffDelete = { bg = t.selection_deleted },
        DiffText = { bg = t.selection, underline = true },

        Added = { bg = t.selection_added },
        Changed = { bg = t.selection },
        Removed = { bg = t.selection_deleted },

        Underlined = { fg = t.func, underline = true },
        MoreMsg = { fg = t.func },
    }
end
