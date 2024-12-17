local ls = require('luasnip')

return {
    ls.snippet(
        { trig = "hi" },
        { ls.text_node("Hello world") }
    )
}
