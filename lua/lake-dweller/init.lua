local M = {}

M.config = {
    transparent = false,
    italics = true,
    float_background = false,
}

function M.setup(opts)
    M.config = vim.tbl_deep_extend("force", M.config, opts or {})
    if vim.g.colors_name == "lake-dweller" then
        M.load()
    end
end

function M.load()
    if vim.g.colors_name then
        vim.cmd("hi clear")
    end
    vim.o.termguicolors = true
    vim.g.colors_name = "lake-dweller"

    local theme = require("lake-dweller.theme")(M.config)

    local groups = {}
    for _, group_fn in ipairs({
        require("lake-dweller.groups.base"),
        require("lake-dweller.groups.syntax"),
        require("lake-dweller.groups.diagnostics"),
        require("lake-dweller.groups.plugins"),
    }) do
        for name, hl in pairs(group_fn(theme, M.config)) do
            groups[name] = hl
        end
    end

    for name, hl in pairs(groups) do
        vim.api.nvim_set_hl(0, name, hl)
    end
end

return M
