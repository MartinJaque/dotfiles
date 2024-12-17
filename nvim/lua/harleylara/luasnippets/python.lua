local ls = require('luasnip')

return {
  ls.snippet(
    {
      trig="python",
      dscr="Testing snippets",
    },
    {
      ls.text_node("Hello, world!"),
    }
  ),
}
