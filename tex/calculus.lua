local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
-- The fix is the "s" at the end of extras
local fmta = require("luasnip.extras.fmt").fmta

return {
  -- --- Fractions & Roots ---
  s(
    "frac",
    fmta("\\frac{<>}{<>}<>", {
      i(1, "num"),
      i(2, "den"),
      i(0),
    })
  ),

  s(
    "sqrt",
    fmta("\\sqrt{<>}<>", {
      i(1),
      i(0),
    })
  ),

  -- --- Limits & Sums ---
  s(
    "lim",
    fmta("\\lim_{<> \\to <>}<>", {
      i(1, "n"),
      i(2, "\\infty"),
      i(0),
    })
  ),

  s(
    "sum",
    fmta("\\sum_{<>}^{<>}<>", {
      i(1, "i=1"),
      i(2, "n"),
      i(0),
    })
  ),

  s(
    "int",
    fmta("\\int_{<>}^{<>} <> \\, d<>", {
      i(1, "a"),
      i(2, "b"),
      i(3, "f(x)"),
      i(4, "x"),
    })
  ),

  -- Subscript: _{}
  s(
    "__",
    fmta("_{<>}<>", {
      i(1),
      i(0),
    })
  ),

  -- Superscript: ^{}
  s(
    "^^",
    fmta("^{<>}<>", {
      i(1),
      i(0),
    })
  ),

  -- Combined Sub/Sup (Very common for indexed operators)
  s(
    "subp",
    fmta("_{<>}^{<>}<>", {
      i(1, "i"),
      i(2, "n"),
      i(0),
    })
  ),
}
