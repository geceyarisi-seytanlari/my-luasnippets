local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmta = require("luasnip.extras.fmt").fmta

return {
  -- Theorem with a label for easy referencing
  s(
    "lthm",
    fmta(
      [[
  \begin{theorem} \label{thm:<>}
      <>
  \end{theorem}
  ]],
      { i(1), i(2) }
    )
  ),

  -- Lemma with a label
  s(
    "llem",
    fmta(
      [[
  \begin{lemma} \label{lem:<>}
      <>
  \end{lemma}
  ]],
      { i(1), i(2) }
    )
  ),

  -- Corollary with a label
  s(
    "lcor",
    fmta(
      [[
  \begin{corollary} \label{cor:<>}
      <>
  \end{corollary}
  ]],
      { i(1), i(2) }
    )
  ),

  -- Proposition with a label
  s(
    "lprop",
    fmta(
      [[
  \begin{proposition} \label{prop:<>}
      <>
  \end{proposition}
  ]],
      { i(1), i(2) }
    )
  ),

  -- Definition with a label
  s(
    "ldef",
    fmta(
      [[
  \begin{definition} \label{def:<>}
      <>
  \end{definition}
  ]],
      { i(1), i(2) }
    )
  ),

  -- Theorem
  s(
    { trig = "begthm", dscr = "" },
    fmta(
      [[
  \begin{theorem}
      <>
  \end{theorem}
  ]],
      { i(1) }
    )
  ),

  -- Proof
  s(
    "begproof",
    fmta(
      [[
  \begin{proof}
      <>
  \end{proof}
  ]],
      { i(1) }
    )
  ),

  -- Single Equation (Numbered and Labeled)
  s(
    "leq",
    fmta(
      [[
  \begin{equation} \label{eq:<>}
      <>
  \end{equation}
  ]],
      { i(1), i(2) }
    )
  ),

  -- Multiple Aligned Equations
  s(
    "lali",
    fmta(
      [[
  \begin{align} \label{eq:<>}
      <> &= <> \\
      <> &= <>
  \end{align}
  ]],
      { i(1), i(2), i(3), i(4), i(5) }
    )
  ),

  -- Unnumbered Align (for scratch work)
  s(
    "ali",
    fmta(
      [[
  \begin{align*}
      <> &= <> \\
      <> &= <>
  \end{align*}
  ]],
      { i(1), i(2), i(3), i(4) }
    )
  ),

  -- Type 'mk' (math knot) to get $ $ and put cursor in middle
  s({ trig = "mk", snippetType = "autosnippet" }, fmta([[$<>$]], { i(1) })),

  -- Type 'dm' (display math) to get \[ \] on new lines
  s(
    { trig = "dm", snippetType = "autosnippet" },
    fmta(
      [[
  \[
      <>
  \]
  ]],
      { i(1) }
    )
  ),

  -- Custom Enumerate (Fixed)
  s(
    "cnum",
    fmta(
      [[
  \begin{enumerate}[label=<>]
      \item <>
  \end{enumerate}
  ]],
      { i(1, "(\\roman*)"), i(2) }
    )
  ),

  -- Quick item for lists
  s("it", fmta([[ \item <> ]], { i(1) })),

  -- Case-based definition (Piecewise)
  s(
    "case",
    fmta(
      [[
    \begin{cases}
      <> & \text{if } <> \\
      <> & \text{if } <>
    \end{cases}
  ]],
      {
        i(1, "0"),
        i(2, "i = j"),
        i(3, "1"),
        i(4, "i \\neq j"),
      }
    )
  ),

  -- Side-by-side: Text on left, Math/Diagram on right
  s(
    "side",
    fmta(
      [[
  \noindent
  \begin{minipage}[c]{0.5\textwidth}
      <>
  \end{minipage}
  \hfill
  \begin{minipage}[c]{0.45\textwidth}
      <>
  \end{minipage}
  ]],
      { i(1, "text"), i(2, "diagram") }
    )
  ),

  -- Wrap figure for diagrams
  s(
    "wrap",
    fmta(
      [[
  \begin{wrapfigure}{r}{0.4\textwidth}
      \centering
      <>
  \end{wrapfigure}
  ]],
      { i(1, "diagram") }
    )
  ),
}

