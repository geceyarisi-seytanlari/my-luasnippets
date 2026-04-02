local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node

return {
  -- Common Number Sets (Auto-expanding)
  s({trig="RR", snippetType="autosnippet"}, t("\\mathbb{R}")),
  s({trig="CC", snippetType="autosnippet"}, t("\\mathbb{C}")),
  s({trig="QQ", snippetType="autosnippet"}, t("\\mathbb{Q}")),
  s({trig="ZZ", snippetType="autosnippet"}, t("\\mathbb{Z}")),
  s({trig="NN", snippetType="autosnippet"}, t("\\mathbb{N}")),
  s({trig="HH", snippetType="autosnippet"}, t("\\mathbb{H}")),
  s({trig="PP", snippetType="autosnippet"}, t("\\mathbb{P}")), -- Projective space

  -- Often used for the unit disk or sphere in Floer theory
  s({trig="DD", snippetType="autosnippet"}, t("\\mathbb{D}")),
  s({trig="SS", snippetType="autosnippet"}, t("\\mathbb{S}")),
}