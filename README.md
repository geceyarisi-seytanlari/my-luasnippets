# 📝 LaTeX LuaSnips for Neovim

A collection of custom snippets for **LuaSnip** designed for rapid mathematical note-taking in Algebraic Geometry and Topology.

---

## 🔡 Mathematical Fonts
These snippets use the `\mathbb` command for standard number sets and projective spaces.

| Trigger | Result | Lua Snippet Example |
| :--- | :--- | :--- |
| `RR` | $\mathbb{R}$ | `s("RR", t("\\mathbb{R}"))` |
| `CC` | $\mathbb{C}$ | `s("CC", t("\\mathbb{C}"))` |
| `QQ` | $\mathbb{Q}$ | `s("QQ", t("\\mathbb{Q}"))` |
| `ZZ` | $\mathbb{Z}$ | `s("ZZ", t("\\mathbb{Z}"))` |
| `PP` | $\mathbb{P}$ | `s("PP", t("\\mathbb{P}"))` |

---

## 🏛️ Environments
These snippets use `fmta` with `<>` delimiters. Use `<Tab>` to jump into the body of the environment.

| Trigger | Environment | Result |
| :--- | :--- | :--- |
| `ldef` | Definition | `\begin{definition} ... \end{definition}` |
| `lthm` | Theorem | `\begin{theorem} ... \end{theorem}` |
| `llem` | Lemma | `\begin{lemma} ... \end{lemma}` |
| `begproof` | Proof | `\begin{proof} ... \end{proof}` |

**Typical Lua Structure:**
```lua
s("ldef", fmta([[
  \begin{definition}
    <>
  \end{definition}
]], { i(1) }))
