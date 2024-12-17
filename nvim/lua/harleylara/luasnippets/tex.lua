local ls = require('luasnip')
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

return {
    ls.snippet(
        {
            trig="begin",
            dscr="Expand a new generic environment"
        },
        fmta(
            [[
            \begin{<>}
                <>
            \end{<>}
            ]],
            {
                ls.insert_node(1),
                ls.insert_node(2),
                rep(1)
            }
        )
    )
}
