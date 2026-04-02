local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node

return {
  -- LOWERCASE
  s({trig="ga", snippetType="autosnippet"}, t("\\alpha")),
  s({trig="gb", snippetType="autosnippet"}, t("\\beta")),
  s({trig="gg", snippetType="autosnippet"}, t("\\gamma")),
  s({trig="gd", snippetType="autosnippet"}, t("\\delta")),
  s({trig="ge", snippetType="autosnippet"}, t("\\epsilon")),
  s({trig="gve", snippetType="autosnippet"}, t("\\varepsilon")),
  s({trig="gz", snippetType="autosnippet"}, t("\\zeta")),
  s({trig="gh", snippetType="autosnippet"}, t("\\eta")),
  s({trig="gq", snippetType="autosnippet"}, t("\\theta")),
  s({trig="gvq", snippetType="autosnippet"}, t("\\vartheta")),
  s({trig="gi", snippetType="autosnippet"}, t("\\iota")),
  s({trig="gk", snippetType="autosnippet"}, t("\\kappa")),
  s({trig="gl", snippetType="autosnippet"}, t("\\lambda")),
  s({trig="gm", snippetType="autosnippet"}, t("\\mu")),
  s({trig="gn", snippetType="autosnippet"}, t("\\nu")),
  s({trig="gx", snippetType="autosnippet"}, t("\\xi")),
  s({trig="gp", snippetType="autosnippet"}, t("\\pi")),
  s({trig="gr", snippetType="autosnippet"}, t("\\rho")),
  s({trig="gvr", snippetType="autosnippet"}, t("\\varrho")),
  s({trig="gs", snippetType="autosnippet"}, t("\\sigma")),
  s({trig="gt", snippetType="autosnippet"}, t("\\tau")),
  s({trig="gu", snippetType="autosnippet"}, t("\\upsilon")),
  s({trig="gf", snippetType="autosnippet"}, t("\\phi")),
  s({trig="gvf", snippetType="autosnippet"}, t("\\varphi")),
  s({trig="gc", snippetType="autosnippet"}, t("\\chi")),
  s({trig="gy", snippetType="autosnippet"}, t("\\psi")),
  s({trig="go", snippetType="autosnippet"}, t("\\omega")),

  -- UPPERCASE
  s({trig="gG", snippetType="autosnippet"}, t("\\Gamma")),
  s({trig="gD", snippetType="autosnippet"}, t("\\Delta")),
  s({trig="gQ", snippetType="autosnippet"}, t("\\Theta")),
  s({trig="gL", snippetType="autosnippet"}, t("\\Lambda")),
  s({trig="gX", snippetType="autosnippet"}, t("\\Xi")),
  s({trig="gP", snippetType="autosnippet"}, t("\\Pi")),
  s({trig="gS", snippetType="autosnippet"}, t("\\Sigma")),
  s({trig="gU", snippetType="autosnippet"}, t("\\Upsilon")),
  s({trig="gF", snippetType="autosnippet"}, t("\\Phi")),
  s({trig="gY", snippetType="autosnippet"}, t("\\Psi")),
  s({trig="gO", snippetType="autosnippet"}, t("\\Omega")),
}