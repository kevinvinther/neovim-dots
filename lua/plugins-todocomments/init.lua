require("todo-comments").setup {
    signs = true,
    keywords = {
        -- FIX:
        FIX = {
            color = Colors.base08,
            alt = { "FIXME", "BUG", "FIXIT", "FIX", "ISSUE", "FEJL", "PROBLEM" }
        },
        -- TODO:
        TODO = {
            color = Colors.base0D
        },
        -- HACK:
        HACK = {
            color = Colors.base0A
        },
        -- WARN:
        WARN = {
            color = Colors.base0A,
            alt = { "WARNING", "XXX" }
        },
        -- PERF:
        PERF = {
            color = Colors.base09,
            alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE", "PERFECT", "PERFEKT" }
        },
        -- NOTE:
        NOTE = {
            color = Colors.base0C,
            alt = { "INFO" }
        },
    },
}
