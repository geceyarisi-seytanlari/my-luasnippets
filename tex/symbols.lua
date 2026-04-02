local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmta = require("luasnip.extras.fmt").fmta

-- In LuaSnip/tex/symbols.lua
return {
  -- :=
  s({trig="::", snippetType="autosnippet"}, t("\\coloneqq ")),

  -- Standard Norm: || x ||
  s("norm", fmta([[\left\| <> \right\|]], { i(1) })),

  -- Indiced Norm: || x ||_{p}
  s("pnorm", fmta([[\left\| <> \right\|_{<>}]], { i(1), i(2) })),

  -- Inner Product: < x, y >
  s("ip", fmta([[\left\langle <>, <> \right\rangle]], { i(1), i(2) })),

  -- Indiced Inner Product: < x, y >_{L^2}
  s("pip", fmta([[\left\langle <>, <> \right\rangle_{<>}]], { i(1), i(2), i(3) })),

  -- Absolute Value: | x |
  s("abs", fmta([[\left| <> \right|]], { i(1) })),

  -- Simple Nabla (Auto-expanding)
  -- Type 'nb' for \nabla
  s({trig="nb", snippetType="autosnippet"}, t("\\nabla")),

  -- Covariant Derivative with indices
  -- Type 'nab' + Tab for \nabla_{X} Y
  s("nab", fmta([[\nabla_{<>} <>]], { i(1, "X"), i(2, "Y") })),

  -- The definition you are working on: Nabla along a curve
  -- Type 'naba' + Tab for \nabla_{\dot{\gamma}}
  s("naba", fmta([[\nabla_{\dot{<>}} <>]], { i(1, "\\gamma"), i(2, "V") })),

  -- Just the Fraktur X symbol if you want to specify a different manifold
  s({trig="fX", snippetType="autosnippet"}, t("\\mathfrak{X}(<>)"), { i(1, "M") }),

  -- Summation with indices
  s("sum", fmta([[\sum_{<>}^{<>} <>]], { i(1, "i=1"), i(2, "n"), i(3) })),

  -- Product with indices
  s("prod", fmta([[\prod_{<>}^{<>} <>]], { i(1, "i=1"), i(2, "n"), i(3) })),

  -- Simple versions (just the symbols)
  s("ssum", t("\\sum ")),
  s("sprod", t("\\prod ")),

}