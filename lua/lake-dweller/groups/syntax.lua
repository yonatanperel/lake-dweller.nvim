return function(t, config)
    local italic = config.italics or false
    local comment_style = { fg = t.comment, italic = italic }

    return {
        -- Base vim groups
        Comment = comment_style,
        String = { fg = t.string },
        Character = { fg = t.string },
        Number = { fg = t.constant },
        Boolean = { fg = t.constant },
        Float = { fg = t.constant },
        Identifier = { fg = t.fg },
        Function = { fg = t.func },
        Keyword = { fg = t.keyword },
        Statement = { fg = t.keyword },
        Conditional = { fg = t.keyword },
        Repeat = { fg = t.keyword },
        Label = { fg = t.keyword },
        Operator = { fg = t.fg },
        Exception = { fg = t.keyword },
        PreProc = { fg = t.keyword },
        Include = { fg = t.keyword },
        Define = { fg = t.keyword },
        Macro = { fg = t.func },
        PreCondit = { fg = t.keyword },
        Type = { fg = t.type },
        StorageClass = { fg = t.keyword },
        Structure = { fg = t.type },
        Typedef = { fg = t.type },
        Constant = { fg = t.constant },
        SpecialChar = { fg = t.constant },
        Tag = { fg = t.keyword },
        Delimiter = { fg = t.fg },
        SpecialComment = comment_style,
        Debug = { fg = t.warn },

        -- Treesitter comments
        ["@comment"] = comment_style,

        -- Keywords
        ["@keyword"] = { fg = t.keyword },
        ["@keyword.function"] = { fg = t.keyword },
        ["@keyword.return"] = { fg = t.keyword },
        ["@conditional"] = { fg = t.keyword },
        ["@repeat"] = { fg = t.keyword },
        ["@operator"] = { fg = t.fg },

        -- Functions
        ["@function"] = { fg = t.func },
        ["@method"] = { fg = t.func },
        ["@function.call"] = { fg = t.func },
        ["@method.call"] = { fg = t.func },
        ["@constructor"] = { fg = t.type },
        ["@function.builtin"] = { fg = t.func },

        -- Variables
        ["@variable"] = { fg = t.fg },
        ["@variable.parameter"] = { fg = t.fg },
        ["@variable.member"] = { fg = t.fg },
        ["@field"] = { fg = t.fg },
        ["@property"] = { fg = t.fg },

        -- Types
        ["@type"] = { fg = t.type },
        ["@type.builtin"] = { fg = t.type },
        ["@namespace"] = { fg = t.type },

        -- Modules
        ["@namespace.import"] = { fg = t.fg },
        ["@module"] = { fg = t.fg },

        -- Strings
        ["@string"] = { fg = t.string },
        ["@string.special"] = { fg = t.string },
        ["@character"] = { fg = t.string },

        -- Constants
        ["@boolean"] = { fg = t.constant },
        ["@number"] = { fg = t.constant },
        ["@constant"] = { fg = t.constant },
        ["@constant.builtin"] = { fg = t.constant },
        ["@symbol"] = { fg = t.constant },

        -- Punctuation
        ["@punctuation"] = { fg = t.fg },
        ["@punctuation.bracket"] = { fg = t.fg },
        ["@punctuation.delimiter"] = { fg = t.fg },
        ["@punctuation.special"] = { fg = t.fg },

        -- Attributes and macros
        ["@attribute"] = { fg = t.keyword },
        ["@attribute.builtin"] = { fg = t.keyword },
        ["@constant.macro"] = { fg = t.constant },
        ["@function.macro"] = { fg = t.func },

        -- LSP semantic tokens
        ["@lsp.type.variable"] = { link = "@variable" },
        ["@lsp.type.parameter"] = { link = "@variable.parameter" },
        ["@lsp.type.property"] = { link = "@property" },
        ["@lsp.type.field"] = { link = "@field" },
        ["@lsp.type.function"] = { link = "@function" },
        ["@lsp.type.method"] = { link = "@method.call" },
        ["@lsp.type.type"] = { link = "@type" },
        ["@lsp.type.class"] = { link = "@type" },
        ["@lsp.type.struct"] = { link = "@type" },
        ["@lsp.type.interface"] = { link = "@type" },
        ["@lsp.type.enum"] = { link = "@type" },
        ["@lsp.type.enumMember"] = { link = "@constant" },
        ["@lsp.type.typeParameter"] = { link = "@type" },
        ["@lsp.type.namespace"] = { link = "@namespace" },
        ["@lsp.type.keyword"] = { link = "@keyword" },
        ["@lsp.type.operator"] = { link = "@operator" },
        ["@lsp.type.string"] = { link = "@string" },
        ["@lsp.type.number"] = { link = "@number" },
        ["@lsp.type.boolean"] = { link = "@boolean" },
        ["@lsp.type.comment"] = { link = "@comment" },
        ["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
        ["@lsp.typemod.variable.readonly"] = { link = "@constant" },

        -- Rust
        ["@type.qualifier"] = { fg = t.keyword },
        ["@keyword.modifier"] = { fg = t.keyword },
        ["@label"] = { fg = t.constant },
        ["@storageclass"] = { fg = t.keyword },
        ["@lsp.type.macro.rust"] = { link = "@function.macro" },
        ["@lsp.type.lifetime.rust"] = { link = "@label" },
        ["@lsp.type.builtinType.rust"] = { link = "@type.builtin" },
        ["@lsp.type.selfKeyword.rust"] = { link = "@keyword" },
        ["@lsp.type.selfTypeKeyword.rust"] = { link = "@type" },
        ["@lsp.type.derive.rust"] = { link = "@attribute" },
        ["@lsp.type.decorator.rust"] = { link = "@attribute" },
        ["@lsp.typemod.function.declaration.rust"] = { link = "@function" },
        ["@lsp.typemod.method.declaration.rust"] = { link = "@function" },

        -- TypeScript/JavaScript
        ["@keyword.import"] = { fg = t.keyword },
        ["@keyword.export"] = { fg = t.keyword },
        ["@keyword.coroutine"] = { fg = t.keyword },
        ["@keyword.operator"] = { fg = t.keyword },
        ["@type.definition"] = { fg = t.type },
        ["@tag"] = { fg = t.keyword },
        ["@tag.attribute"] = { fg = t.fg },
        ["@tag.delimiter"] = { fg = t.fg },
        ["@lsp.type.type.typescript"] = { link = "@type" },
        ["@lsp.type.type.typescriptreact"] = { link = "@type" },
        ["@lsp.type.interface.typescript"] = { link = "@type" },
        ["@lsp.type.interface.typescriptreact"] = { link = "@type" },
        ["@lsp.typemod.variable.readonly.typescript"] = { link = "@variable" },
        ["@lsp.typemod.variable.readonly.typescriptreact"] = { link = "@variable" },
        typescriptIdentifier = { fg = t.keyword },
        typescriptHeadersMethod = { fg = t.func },
        typescriptProp = { fg = t.fg },
        ["@lsp.type.member.typescript"] = { fg = t.func },
        ["@lsp.type.member.typescriptreact"] = { fg = t.func },
        ["@lsp.typemod.member.defaultLibrary.typescript"] = { fg = t.func },
        ["@lsp.typemod.member.defaultLibrary.typescriptreact"] = { fg = t.func },

        -- Python
        ["@variable.builtin"] = { fg = t.keyword },
        ["@keyword.exception"] = { fg = t.keyword },
        ["@string.documentation"] = comment_style,
        ["@lsp.type.class.python"] = { link = "@type" },
        ["@lsp.type.decorator.python"] = { link = "@function" },
        ["@lsp.type.function.python"] = { link = "@function" },
        ["@lsp.type.method.python"] = { link = "@function" },
        ["@lsp.type.parameter.python"] = { link = "@variable.parameter" },
        ["@lsp.type.variable.python"] = { link = "@variable" },
        ["@lsp.type.selfParameter.python"] = { link = "@variable.builtin" },
        ["@lsp.type.clsParameter.python"] = { link = "@variable.builtin" },

        -- SQL
        ["@keyword.conditional"] = { fg = t.keyword },

        -- C/C++
        ["@keyword.directive"] = { fg = t.keyword },
        ["@keyword.directive.define"] = { fg = t.keyword },
        ["@string.special.path"] = { fg = t.string },
        ["@variable.member.cpp"] = { fg = t.fg },
        ["@lsp.type.macro.c"] = { link = "@constant.macro" },
        ["@lsp.type.macro.cpp"] = { link = "@constant.macro" },
        ["@lsp.type.typeParameter.cpp"] = { link = "@type" },
        ["@lsp.typemod.variable.fileScope.c"] = { link = "@variable" },
        ["@lsp.typemod.variable.fileScope.cpp"] = { link = "@variable" },
        ["@lsp.typemod.variable.globalScope.c"] = { link = "@variable" },
        ["@lsp.typemod.variable.globalScope.cpp"] = { link = "@variable" },
    }
end
