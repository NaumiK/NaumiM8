local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local extras = require("luasnip.extras")
local rep = extras.rep
local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("cpp", {
  s("iter_hh", fmt([[
    using iterator_category = {};
    using difference_type = {};
    using value_type = {};
    using reference = {}&;
    using pointer = {}*;
  ]], {
    i(1), i(2, "ptrdiff_t"), i(3, "T"), rep(3), rep(3)
  })),
  s("hh_guard", fmt([[
  #ifndef {}
  #define {}
  {}
  #endif // {}
  ]], {
    i(1), rep(1), i(0), rep(1)
  }))
})

ls.add_snippets("c", {
  s("hh_guard", fmt([[
  #ifndef {}
  #define {}
  {}
  #endif // {}
  ]], {
    i(1), rep(1), i(0), rep(1)
  }))
})


