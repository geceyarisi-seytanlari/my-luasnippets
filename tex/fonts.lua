local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmta = require("luasnip.extras.fmt").fmta

return {
  -- General Math Blackboard Bold: \mathbb{ }
  s("mbb", fmta([[\mathbb{<>}<>]], { i(1), i(0) })),

  -- General Math Calligraphic: \mathcal{ }
  s("mcal", fmta([[\mathcal{<>}<>]], { i(1), i(0) })),

  -- General Math Script (good for sheaves/categories): \mathscr{ }
  s("mscr", fmta([[\mathscr{<>}<>]], { i(1), i(0) })),

  -- General Fraktur (Lie algebras): \mathfrak{ }
  s("mfr", fmta([[\mathfrak{<>}<>]], { i(1), i(0) })),

  -- mathrm
  s("mrm", fmta([[\mathrm{St}(<>)]], { i(1) })),

}