return function(t, _config)
    return {
        DiagnosticError = { fg = t.error },
        DiagnosticWarn = { fg = t.warn },
        DiagnosticHint = { fg = t.hint },
        DiagnosticInfo = { fg = t.info },

        DiagnosticVirtualTextError = { fg = t.error },
        DiagnosticVirtualTextWarn = { fg = t.warn },
        DiagnosticVirtualTextHint = { fg = t.hint },
        DiagnosticVirtualTextInfo = { fg = t.info },

        DiagnosticUnderlineError = { undercurl = true, sp = t.error },
        DiagnosticUnderlineWarn = { undercurl = true, sp = t.warn },
        DiagnosticUnderlineHint = { undercurl = true, sp = t.hint },
        DiagnosticUnderlineInfo = { undercurl = true, sp = t.info },

        DiagnosticUnnecessary = { fg = t.fg_dim },
    }
end
