# 用語・記述の言い換え案（スライド作成時のメモ / 論文校正案）

基準: 論文 v5（`FO3COR_STOC__1022v5_ (2).pdf`）。手元の `../main.tex`, `../sections/` は v5 より古く、
fold / notice / prediction などの語はまだ無い。括弧内の数字は v5 本文での出現回数。

方針: 新しい名前を増やさない。名前を付けるなら初出で 1 文の定義を添え、
記号や色・図で言える場合はそちらを優先する（正確さは保つ）。

## 1. 用語

| v5 の用語 | スライドでの書き方 | 論文への提案 |
|---|---|---|
| read edge (24) / witness edge (17) / accepts (15) | 辺 $xy$ / 辺 $xz$。受理は色で直接: 「$xy$ の色が $\mu$ なら、$G_k(x,y)$ は色 $\mu^c$ の辺 $xz$ があるとき成り立つ」 | 3 語とも削れる候補。$G_k$ の定義直後に「各 $i$ で $xy$, $xz$ の一方が $P_i$、他方が $Q_i$」と書き、以降は色の言葉（$\chi(x,z) = \chi(x,y)^c$）で済ませる |
| witness (125), outside witness (20), endpoint witness (4) | middle vertex $z$ | 合成 $\exists z$ の $z$ なので "middle vertex" で足りる。outside / endpoint は「$z \notin \{u, v\}$ / $z \in \{u, v\}$」と式で書く |
| two-witness property (17) | 題「Every color pattern has two middle vertices」 | 名前を残すなら "two-midpoint property" など中身が分かる名前に。または名前なしで性質を直接引用 |
| reference structure (39) | 単に $\mathcal M_0$ | 名前を外して $\mathcal M_0$ だけでも読める。残すなら初出で 1 文定義 |
| hub (52) | **hub のまま**（初出で "one vertex $\hbar$, the hub" と定義） | 現状維持。初出の定義を 1 文で明示 |
| anchor (32) | スライドには出さない | 本文で必要な箇所に限定できないか要確認 |
| fold (147) / folded structure | recoloring $\lambda$ / recolored structure $\mathcal M_\lambda$ | "fold" は意味が推測しにくい。"recoloring (at the hub)" を提案。定義:「$\hbar$ に接する色 $\lambda$ の辺を $\lambda^c$ に塗り替える」 |
| notice (109) | detect | "detect" の方が通じやすい。定義:「そのゲートで初めて、$\mathcal M_0$ から期待される値とずれる」 |
| prediction (53) / predicts | expected value / expected from $\mathcal M_0$ | "the value expected from $\mathcal M_0$" |
| color table (35) | スライドでは削除 | 「$\mathcal M_0$ 上で計算される関係は、値が辺の色だけで決まる」と性質で述べ、名前は補助的に |
| test (92) | スライドには出さない | "test for $\lambda$" は fold と組で使われる。fold を言い換えるなら合わせて再検討 |
| $\Delta_g$, $(\star)$, $S_X$, $X^{(\lambda)}$ | スライドでは削除 | 概観（§1.3）では記号を減らし、本文の証明節で導入する案 |
| relational circuit (36), join breadth (9) | 前者は "CoR term or circuit"、後者は注記で定義 | 初出で 1 文定義があるか確認 |

## 2. 主張・記述

- **主定理は合成の個数で述べる**（スライド p.3–4 の書き方）。
  "For each $k$, there is an FO³ formula of size $O(k)$ such that every equivalent CoR term needs $\ge 2^{k-1}$ compositions, even with complement, converse, and shared subterms."
  サイズの下界（Thm 1.2, $\Theta(k2^k)$）より合成数の下界が主であることを冒頭から明確に。
- **問いの形**: 文献で未解決とされていた形のまま "Can we prove that there is no polynomial-size translation from FO³ to CoR?"（答えは合成数の指数下界でより強く与える）
  部分的な既知結果として「$\Sigma_1$CoR（存在型、拡張で保存）では既知 [Nak20, Nak22]」を問いの直後に置く。
- **翻訳の出典**: 翻訳自体は Tarski（1940 年代）、具体的な構成は [TG87]。スライドでは "[Tar41, JSL; TG87]"。
- **DNF の中間段**: $\exists z \bigwedge_i (P_i(x,z) \lor Q_i(z,y))$ → DNF → $\bigcup_A (\bigcap_{i \in A} P_i) ; (\bigcap_{i \notin A} Q_i)$ の 3 段を見せると、合成 $2^k$ 個の出どころが一目で分かる。
- **FO³ vs FO² の先行研究**: [VS24] は $\mathrm{FO}^k$ vs $\mathrm{FO}^{k-1}$ ($k \ge 4$) の指数差（高アリティの関係を使う）。
  [GS05] は線形順序上で FO³ → FO² が**多項式**（差なし）、指数差は FO⁴ vs FO³。
  「FO³ vs FO² over linear orders [GS05]」とだけ書くと差が既知だったように読めるので注意。二項関係だけで差を出す点が新しい。
  [VS24] は論文の `bib.bib` に無い（スライドの `references.bib` には v5 の参考文献欄から作成して追加済み）。
- **[BGV19] と [BGV22]**: 問いが載っているのは arXiv 版 [BGV19, p. 9]。雑誌版 [BGV22] にも問いがあるかは未確認。スライドは両方を引用。
- **合成が高々 2 つしか検出しない理由**（§1.3.4）を言葉で: 「変化しうるのは hub を含む点対だけで、それも $X$ か $Y$ が色 $\lambda$ を特定する場合に限る」。
  正確には 3 条件（$S_X = \{\lambda\}$, $S_Y = \{\lambda\}$, $S_X \cap S_Y = \{\lambda\}$）。概観ではこの言い方、本文で 3 条件、という分担を提案。
