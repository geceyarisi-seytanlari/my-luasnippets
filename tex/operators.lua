local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local t = ls.text_node
local fmta = require("luasnip.extras.fmt").fmta

return {
  -- --- Core Dimensions & Rank ---
  -- Dimension: \mathrm{dim}(V)
  s("dim", fmta("\\mathrm{dim}_{<>}(<>)<>", { i(1, "\\mathbb{C}"), i(2), i(0) })),

  -- Codimension: \mathrm{codim}
  s("codim", fmta("\\mathrm{codim}(<>)<>", { i(1), i(0) })),

  -- Rank: \mathrm{rk}
  s("rk", fmta("\\mathrm{rk}(<>)<>", { i(1), i(0) })),

  -- --- Algebraic & Complex Geometry ---
  -- Spec(A)
  s("spec", fmta("\\mathrm{Spec}(<>)<>", { i(1), i(0) })),

  -- Hom(V, W)
  s("hom", fmta("\\mathrm{Hom}_{<>}(<>, <>)<>", { i(1, "\\mathcal{O}_X"), i(2), i(3), i(0) })),

  -- Structure Sheaf: \mathcal{O}_X
  s("ox", fmta("\\mathcal{O}_{<>}<>", { i(1, "X"), i(0) })),

  -- Picard Group: Pic(X)
  s("pic", fmta("\\mathrm{Pic}(<>)<>", { i(1), i(0) })),

  -- --- Mappings & Kernel ---
  -- Kernel and Image (Simple Text Nodes)
  s("ker", t("\\mathrm{ker}")),
  s("im", t("\\mathrm{im}")),

  -- Degree: deg(D)
  s("deg", fmta("\\mathrm{deg}(<>)<>", { i(1), i(0) })),

  -- --- Groups ---
  -- Symplectic Group: Sp(2n, R)
  s("sp", fmta("\\mathrm{Sp}(<>, <>)<>", { i(1, "2n"), i(2, "\\mathbb{R}"), i(0) })),

  -- Holomorphic sections: H^0(X, L)
  s("h0", fmta("H^0(<>, <>)<>", { i(1, "X"), i(2, "\\mathcal{L}"), i(0) })),
}
