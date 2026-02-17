return function(config)
    local variant = config.variant or "lake-dweller"
    local ok, t = pcall(require, "lake-dweller.variants." .. variant)
    if not ok then
        t = require("lake-dweller.variants.lake-dweller")
    end

    t = vim.tbl_deep_extend("force", {}, t)

    if config.transparent then
        t.bg = "NONE"
    end
    if not config.float_background then
        t.float_bg = t.bg
    end

    return t
end
