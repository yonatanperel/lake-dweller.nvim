return function(config)
    local t = vim.tbl_deep_extend("force", {}, require("lake-dweller.variants.lake-dweller"))

    if config.transparent then
        t.bg = "NONE"
    end
    if not config.float_background then
        t.float_bg = t.bg
    end

    return t
end
