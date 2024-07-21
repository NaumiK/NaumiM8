local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local extras = require("luasnip.extras")
local rep = extras.rep
local fmt = require("luasnip.extras.fmt").fmt
local t = ls.text_node
local c = ls.choice_node

local keyword = function(name)
  return s(name, t(name))
end

local cmake_text_decorators = {
  t "NOTICE", t "STATUS",
  t "WARNING", t "AUTHOR_WARNING", t "ERROR", t "FATAL_ERROR", t "DEPRECATION",
  t "VERBOSE", t "DEBUG", t "TRACE"
}

local cmake_scope_keywords = {
  t "INTERFACE",
  t "PUBLIC",
  t "PRIVATE"
}

local cmake_scope_block = function(name)
  return s({ trig = name }, fmt([[
    {}({})
      {}
    end{}()
  ]], {
    t(name), i(1), i(0), t(name)
  }))
end

ls.add_snippets("cmake", {
  s({
    trig = "scope",
    desc = [[
  The "scope" command.
  Common use with (if, for, function, macros, e.t.c)
  ]]
  }, fmt([[
  {}({})
    {}
  end{}()
  ]], {
    i(1), i(2), i(0), rep(1)
  })),
  cmake_scope_block "if",
  cmake_scope_block "function",
  cmake_scope_block "block",
  cmake_scope_block "macro",
  cmake_scope_block "while",
  cmake_scope_block "foreach",
  s("message", fmt([[
  message({} "{}"){}
  ]], {
    c(1, cmake_text_decorators), i(2), i(0)
  })),
  keyword "PARENT_SCOPE",
})
