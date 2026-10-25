# スライドと論文 v5 の差分（校正案）

## 用語
- fold → **flip**
- notice → **(newly) distinguish**。定義を明示：同じ色の辺で真偽が食い違う（＝ $(\star)$ の破れ）
  - 理由：notice は「気づいてどうなるか」（そのゲートで初めて区別が生まれる）が伝わらない
  - 論文での定義案："g newly distinguishes $\mathcal M_\lambda$ if g, applied to the predicted values of its operands, does not give its predicted value."
- reference structure → **$\mathcal M_0$**（the randomly colored structure）
- read / witness edge → **$x$-$y$ / $x$-$z$ 辺**
- witness の頂点 $z$ → **$w$**（変数 $z$ と区別）
- test, prediction, color table, anchor, $\Delta_g$, $D_g$, $S_X$ は概観では使わない

## 構成・主張
- 主定理は**合成数**で述べる：$|\varphi_k| = O(k)$ で合成 $\ge 2^{k-1}$（補・逆・共有を許しても）
- Key Lemma：「$d$ 個の $\mathcal M_\lambda$ を見分ける項は合成 $\ge d/2$」の形で先に示す
- 「合成以外は pair by pair なので見分けない」を 1 文で明示
- Lemma 1.4：点対の位置で分ける。$\hbar \notin \{u,v\}$ は witness の取り直し、$u = \hbar$ は $t$ が $\lambda$-edges だけのときのみ変わる
- [GS05] は線形順序上で FO³→FO² が多項式（差なし）。差が既知と読めないよう注意

## スライドで省略（see the paper）
- $(\hbar,\hbar)$、端点 witness、circuit・項サイズ・領域サイズ、各応用の具体的な数
