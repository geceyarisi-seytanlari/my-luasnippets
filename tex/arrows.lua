local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local t = ls.text_node
local fmta = require("luasnip.extras.fmt").fmta

return {
  -- Standard arrows (Auto-expanding)
  s({trig="->", snippetType="autosnippet"}, t("\\to ")),
  s({trig="!>", snippetType="autosnippet"}, t("\\mapsto ")),
  s({trig="=>", snippetType="autosnippet"}, t("\\implies ")),
  
  -- Long arrows
  s({trig="l->", snippetType="autosnippet"}, t("\\longrightarrow ")),
  s({trig="l!>", snippetType="autosnippet"}, t("\\longmapsto ")),

  -- Extensible arrows (The ones you can write text over)
  -- Type 'xra' + Tab, then the text for the arrow
  s("xra", fmta([[\xrightarrow{<>}]], { i(1) })),
  
  -- Extensible arrow with both top and bottom text
  s("xrab", fmta([[\xrightarrow[<>]{<>}]], { i(2, "below"), i(1, "above") })),

  -- Injective/Surjective arrows
  s("inj", t("\\hookrightarrow ")),
  s("sur", t("\\twoheadrightarrow ")),
}