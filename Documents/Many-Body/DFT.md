# 密度泛函简介

密度泛函理论是处理多电子体系的一种重要方法。其核心思想是用基态电子密度分布代替多体波函数来表示基态信息，并且可以说明(Hohenberg-Kohn)一切物理量原则上可以表示为基态电子密度的泛函。利用哈密顿量对应的能量泛函，可以变分求解基态电子密度从而方便地求解基态性质。然而能量泛函的精确形式是难以得到的，然而对于电子关联不太强的体系，我们可以用单粒子轨道(Kohn-Sham)的结果作为能量泛函。我们最后会讨论，即便是这样的密度泛函求解仍然是超越单粒子近似的。

## 多电子系统的普遍形式
对于一般的量子多电子体系，我们可以将其哈密顿量写为：

$$
\hat{H}=\hat{T}+\hat{V}_{int}+\hat{V}_{ext}, 
$$

其中右边各项分别代表动能、相互作用项和外势场项。前两项的形式是固定的：

$$
\hat{T}=\int d\mathbf{r}c_{\mathbf{r}}^{\dagger}\frac{-\hbar^{2}\mathbf{\nabla}^{2}}{2m}c_{\mathbf{r}}, 
$$

$$
\hat{V}_{int}=\frac{1}{2}\int d\mathbf{r}_{1}d\mathbf{r}_{2}c_{\mathbf{r}_{2}}^{\dagger}c_{\mathbf{r}_{1}}^{\dagger}\frac{e^{2}}{\left|\mathbf{r}_{1}-\mathbf{r}_{2}\right|^{2}}c_{\mathbf{r}_{1}}c_{\mathbf{r}_{2}}. 
$$

而外势项依赖外场 $V_{ext}\left(\mathbf{r}\right)$ 的选取：

$$
\hat{V}_{ext}=\int d\mathbf{r}c_{\mathbf{r}}^{\dagger}V_{ext}\left(\mathbf{r}\right)c_{\mathbf{r}}, 
$$

即这种形式的哈密顿量完全由外场确定。实际上，对于实际的分子/材料而言，经过 Born-Oppenheimer 近似后，固定的原子实的分布决定了外场分布，也即确定的电子体系的哈密顿量。


## 集合间的映射关系
一般教材中常将 Hohenberg-Kohn 定理写为两个定理。其中第一定理就是我们所说的基态电子密度唯一性定理。

我们这里从集合的角度叙述这个定理。为此首先引入两个集合：

$$
 A:=\left\{ \hat{H}=\hat{T}+\hat{V}_{int}+\hat{V}_{ext}|\ \hat{H}\ \text{基态非简并}\right\},
$$

$$
B := \left\{ \rho\left(r\right)=\left\langle \psi_{0}\right|c_{r}^{\dagger}c_{r}\left|\psi_{0}\right\rangle |\ \hat{H}\left|\psi_{0}\right\rangle =E_{0}\left|\psi_{0}\right\rangle ,\hat{H}\in A\right\}.
$$

其中 $A$ 是具有以上形式的基态非简并哈密顿量的集合；$B$ 是 $A$ 中所有哈密顿量对应的基态电子密度。

集合 $A$ 到集合 $B$ 有一个自然的满射 $f$：

$$
f:A\rightarrow B,
$$

$$
\hat{H}\mapsto\rho\left(r\right)=\left\langle \psi_{0}\right|c_{r}^{\dagger}c_{r}\left|\psi_{0}\right\rangle.
$$

即 $f$ 将一个哈密顿量映射到它的基态电子密度分布。一个重要的问题就是，这个映射是否存在逆映射？或者说哈密顿量和基态电子密度分布是否是一一对应的。

密度泛函理论的核心 motivation 可以理解为：在求解基态问题时，不直接处理困难的多体哈密顿量或多体波函数，而是着眼于基态电子密度分布 $\rho\left(r\right)$ 这一实空间中的标量函数。这就对哈密顿量和基态电子密度分布之间的一一对应关系提出了要求。

Hohenberg-Kohn 定理叙述的就是这种一一对应关系：只要我们知道了基态密度分布，我们原则上就知道了此多体系统的全部信息，原则上可以由此得到基态能量、波函数，乃至激发态的性质！

对熟悉量子多体系统复杂性的人来说，这个结论似乎是十分惊人的。因为多体系统的基态波函数往往是高度纠缠的，基态电子密度分布似乎没有体现这一纠缠特性。另一方面，在精确对角化计算中，多体哈密顿量维度随粒子数成指数增长，而电子密度分布 $\rho\left(r\right)$ 似乎没有体现出这种复杂度的指数增长。这些考虑都使我们相信 $f$ 不是单射，或者说可能存在两个不同哈密顿量有相同的基态电子分布。我们会在定理的证明后再回到这个问题上来。


## 基态非简并的 Hohenberg-Kohn 定理证明
我们上节已经叙述了 Hohenberg-Kohn 定理。该定理的证明非常简单。我们可以用反证法证明之，假设定理不正确，即:

$$
\exists\hat{H},\hat{H}\in A,\ \hat{H}\ne\hat{H}',\ \rho\left(r\right)=\rho'\left(r\right). 
$$

对于这种特定形式的哈密顿量，也就意味着：

$$
V_{ext}\left(r\right)\ne V_{ext}'\left(r\right). 
$$

假设两哈密顿量基态波函数为 $\left|\psi_{0}\right\rangle ,\left|\psi_{0}'\right\rangle$ :

$$
\left\langle \psi_{0}\right|\hat{T}+\hat{V}_{int}+\hat{V}_{ext}\left|\psi_{0}\right\rangle =E_{0},
$$

$$
\left\langle \psi_{0}'\right|\hat{T}+\hat{V}_{int}+\hat{V}_{ext}'\left|\psi_{0}'\right\rangle =E_{0}'. 
$$

同时由于基态的唯一性：

$$
\left\langle \psi_{0}'\right|\hat{T}+\hat{V}_{int}+\hat{V}_{ext}\left|\psi_{0}'\right\rangle >E_{0},
$$

$$
\left\langle \psi_{0}\right|\hat{T}+\hat{V}_{int}+\hat{V}_{ext}'\left|\psi_{0}\right\rangle >E_{0}'. 
$$

两两相减有：

$$
\left\langle \psi_{0}\right|\hat{V}_{ext}'-\hat{V}_{ext}\left|\psi_{0}\right\rangle >E_{0}'-E_{0},
$$

$$
\left\langle \psi_{0}'\right|\hat{V}_{ext}-\hat{V}_{ext}'\left|\psi_{0}'\right\rangle >E_{0}-E_{0}'. 
$$

由于

$$
\left\langle \psi_{0}\right|\hat{V}_{ext}'-\hat{V}_{ext}\left|\psi_{0}\right\rangle =\int dr\rho\left(r\right)\left[V_{ext}'\left(r\right)-V_{ext}\left(r\right)\right],
$$

$$
\left\langle \psi_{0}'\right|\hat{V}_{ext}-\hat{V}_{ext}'\left|\psi_{0}'\right\rangle =\int dr\rho'\left(r\right)\left[V_{ext}\left(r\right)-V_{ext}'\left(r\right)\right]. 
$$

两式相加得到 $0>0$, 矛盾说明定理成立。

Hohenberg-Kohn 定理证明了 $f^{-1}$ 的存在性，即哈密顿量可以表示为基态电子密度的泛函。而哈密顿量本身可用于确定系统所有的物理量，因此原则上所有物理量都是基态电子密度的泛函。

我们多次强调“原则上”是因为我们并不能直接得到任意物理量关于密度的泛函。要利用密度泛函方法真正求解物理量还需要更多的考虑以及引入适当的近似。

回到原来留下的问题。我们看到集合 $A$ 中的哈密顿量实际为多体哈密顿量的一类特殊形式。能用电子密度分布表示系统的前提是我们仅在 $A$ 中求解哈密顿量基态问题。这又从一个角度说明了处理量子多体问题一个重要的思想：尽管多体哈密顿量十分复杂，许多时候我们关心的/有物理意义的系统哈密顿量只是整个哈密顿量的一个很小的子集。这样的子集选取就是所谓的试探解/ansatz.

Hohenberg-Kohn 第一定理本身是对密度泛函存在性的严格证明。而这种方法能被广泛应用的原因也在于大部分实际材料/分子体系哈密顿量具有上述分离的形式。


## 基态简并的讨论
为处理基态简并情况，我们引入 Levy-Lieb 泛函，定义为：

$$
E_{LL}\left[V_{ext}\left(r\right),\rho\left(r\right)\right]:=F_{LL}\left[\rho\left(r\right)\right]+\int drV_{ext}\left(r\right)\rho\left(r\right),
$$

$$
F_{LL}\left[\rho\left(r\right)\right]:=\min_{\psi\rightarrow\rho\left(r\right)}\left[\left\langle \psi\right|\hat{T}\left|\psi\right\rangle +\left\langle \psi\right|\hat{V}_{int}\left|\psi\right\rangle \right].
$$

其中 $\psi\rightarrow\rho\left(r\right)$ 代表满足密度分布 $\rho\left(r\right)$ 的所有多体波函数。

回忆我们之前对 $A, B$ 的定义，Hohenberg-Kohn 定理告诉我们 $f^{-1}$ 存在，因此我们可以据此定义一个关于集合 $B$ 中元素的泛函：

$$
E_{HK}\left[\rho\left(r\right)\right]:\ B\rightarrow\mathbb{R},
$$

$$
E_{HK}\left[\rho\left(r\right)\right]\ 取值为 f^{-1}\left(\rho\left(r\right)\right) 的基态能量.
$$

容易看到，对于一个取定的外势场 $V_{ext}\left(r\right)$, 以及对应的基态密度分布 $\rho_{0}\left(r\right)$, 有：

$$
E_{LL}\left[V_{ext}\left(r\right),\rho_{0}\left(r\right)\right]=E_{HK}\left[\rho\left(r\right)\right].
$$

Levy-Lieb 泛函的定义域包含 Hohenberg-Kohn 泛函定义域，而在交集上取值相同。因此可以认为 Levy-Lieb 泛函是 Hohenberg-Kohn 泛函的延拓。

我们首先考虑 Levy-Lieb 泛函的定义域。对 $V_{ext}\left(r\right)$ 的选取没有任何限制，对 $\rho\left(r\right)$ 仅有归一化限制：$\int dr\rho\left(r\right)=1$.

对于确定的外势 $V_{ext}\left(r\right)$, 定义映射 $g$:

$$
g:\ \left\{ V_{ext}\left(r\right)\right\} \rightarrow\left\{ \rho\left(r\right)\right\},
$$

作用是将外势映射到相应的基态电子密度分布上。注意此时映射 $g$ 定义域和值域分别为：

$$
A'=\left\{ \hat{H}|\hat{H}=\hat{T}+\hat{V}_{int}+\hat{V}_{ext}\right\},
$$

$$
B'=\left\{ \rho\left(r\right)|\rho=\left\langle \psi_{0}\right|c_{r}^{\dagger}c_{r}\left|\psi_{0}\right\rangle ,\hat{H}\left|\psi_{0}\right\rangle =E_{0}\left|\psi_{0}\right\rangle ,\hat{H}\in A'\right\}.
$$

$g$ 是原先定义的 $f$ 的延拓。我们证明 $g$ 是单射：

由 $g$ 定义，Levy-Lieb 泛函在 $\rho_{0}\left(r\right)=g\left[V_{ext}\left(r\right)\right]$ 处取极值，我们写出相应的变分方程：

$$
\frac{\delta E_{LL}}{\delta\rho}-\lambda=0,
$$

其中 $\lambda$ 是拉格朗日乘子。代入定义式

$$
\frac{\delta F_{LL}}{\delta\rho}+V_{ext}\left(r\right)-\lambda=0 
$$

$$
V_{ext}\left(r\right)=-\frac{\delta F_{LL}}{\delta\rho}+\lambda 
$$

$V_{ext}\left(r\right)$ 由在 $\rho_{0}\left(r\right)$ 附近的泛函导数完全确定(可相差一个常数)。这说明 $g$ 是单的。这个结果证明 Hohenberg-Kohn 第一定理在基态简并情况下的正确性。


## Hohenberg-Kohn 第二定理
Hohenberg-Kohn 定理说的是对于给定外势，存在定义在所有密度分布上能量泛函 ¥E\left[\cdot\right]$, 基态密度是能量泛函关于所有可能的密度分布的变分极值。

这个定理看起来是显然的。注意之前我们对 $f,g$ 的讨论中，密度分布只定义在 $B,B'$ 中，而并非所有密度分布函数集合 $\left\{ \rho\left(r\right)|\int dr\rho\left(r\right)=N\right\}$. 定理的证明同样可以借助 Levy-Lieb 泛函：

对于给定外势 $V_{ext}\left(r\right)$:

$$
E\left[\rho\left(r\right)\right]:=E_{LL}\left[V_{ext}\left(r\right),\rho\left(r\right)\right]=F_{LL}\left[\rho\left(r\right)\right]+\int drV_{ext}\left(r\right)\rho\left(r\right).
$$

此时定义域为所有密度分布函数集合。而根据定义，此时存在波函数 $\left|\psi\right\rangle$, 使得:

$$
\rho\left(r\right)=\left\langle \psi\right|\hat{\rho}_{r}\left|\psi\right\rangle,
$$

$$
E\left[\rho\left(r\right)\right]=\left\langle \psi\right|\hat{T}\left|\psi\right\rangle +\left\langle \psi\right|\hat{V}_{int}\left|\psi\right\rangle +\left\langle \psi\right|\hat{V}_{ext}\left|\psi\right\rangle =\left\langle \psi\right|\hat{H}\left|\psi\right\rangle.
$$

对全局取变分极值可得变分方程 $\frac{\delta E}{\delta\rho}-\lambda=0$, 两边乘上 $\frac{\delta\rho}{\delta\psi^{*}}=\psi$, 得到:

$$
\frac{\delta E}{\delta\rho}\frac{\delta\rho}{\delta\psi^{*}}-\lambda\frac{\delta\rho}{\delta\psi^{*}}=\hat{H}\left|\psi\right\rangle =\lambda\left|\psi\right\rangle.
$$

说明全局变分方程的解确实为基态，定理得证。

经过更严格的讨论后，我们看到密度泛函是一个很严格的理论。如果已知能量泛函 $E\left[\cdot\right]$, Hohenberg-Kohn 定理将求基态问题的波函数变分转化为了对密度的变分：

$$
\min_{\psi}\left\{ \left\langle \psi\right|\hat{H}\left|\psi\right\rangle \right\} \rightarrow\min_{\rho}\left\{ E\left[\rho\right]\right\}.
$$

而这大大降低的变分难度，我们只需要寻找满足变分方程

$$
\frac{\delta}{\delta\rho}E-\epsilon\frac{\delta}{\delta\rho}\left(\int dr'\rho\left(r'\right)-N\right)=0，
$$

即

$$
\frac{\delta E\left[\rho\left(r\right)\right]}{\delta\rho\left(r\right)}-\epsilon=0
$$

的密度分布 $\rho_{0}\left(r\right)$ 就能反过来确定基态能量。

但在上述处理中，我们需要知道能量泛函。Hohenberg-Kohn 定理证明了密度泛函的存在性，但并不能给出能量泛函的具体形式。

基于这个问题，Kohn-Sham 提出了一种处理方式，用一辅助波函数和一个先验能量泛函将问题转化为一个更简单的形式。


## Kohn-Sham 轨道
Kohn-Sham 方法引入了一组辅助波函数，即无相互作用多体波函数：

$$
\left\{ \left|\psi\right\rangle =\prod_{i=1}^{N}\psi_{i}^{\dagger}\left|0\right\rangle \right\},
$$

其中 $\psi_{i}^{\dagger}$ 是第 $i$ 个轨道的产生算符。Kohn-Sham 利用这组波函数构成的电子密度

$$
\rho\left(r\right)=\sum_{i=1}^{N}\left|\psi_{i}\left(r\right)\right|^{2}.
$$

我们并未对单体波函数提出任何要求，只要其是正交归一的波函数组。即

$$
\rho_{i}\left(r\right)=\left|\psi_{i}\left(r\right)\right|^{2} \ge 0,
$$

$$
\int dr\rho_{i}\left(r\right)=1.
$$

而 $n$ 轨道组合成的多体波函数的密度满足

$$
\rho=\sum_{i}\rho_{i} \ge 0,
$$

$$
\int dr\sum_{i}\rho_{i} = N.
$$

因此我们看到 Kohn-Sham 轨道可以生成所有的电子密度。

上述变分过程中

$$
\frac{\delta E\left[\rho\left(r\right)\right]}{\delta\rho\left(r\right)}-\epsilon = 0. 
$$

在两边同时乘上 $\delta\rho/\delta\psi_{i}^{*}\left(r\right)=\psi_{i}\left(r\right)$ 之后：

$$
\frac{\delta E\left[\rho\left(r\right)\right]}{\delta\rho\left(r\right)}\frac{\delta\rho}{\delta\psi_{i}^{*}\left(r\right)}-\epsilon\frac{\delta\rho}{\delta\psi_{i}^{*}\left(r\right)}=\frac{\delta E\left[\rho\left(r\right)\right]}{\delta\psi_{i}^{*}\left(r\right)}-\epsilon\psi_{i}\left(r\right) = 0.
$$

我们将对密度变分转化为对这组分离的单体波函数求变分。

## Kohn-Sham 方程
为了完成整个变分过程，我们还需要得到能量的泛函。

事实上，根据 Kohn-Sham 轨道的讨论，我们现在可以将能量泛函写为关于辅助波函数的泛函：

$$
E\left[\psi^{*}\left(r\right),\psi\left(r\right)\right]=T+J+E_{ext}+E_{xc}.
$$

各项都有较明确的物理意义。其中 $T$ 是轨道动能，用轨道波函数计算：

$$
T\left[\psi^{*}\left(r\right),\psi\left(r\right)\right]=-\frac{1}{2}\sum_{i}\int dr\psi_{i}^{*}\left(r\right)\nabla^{2}\psi_{i}\left(r\right).
$$

$J$ 是直接库伦作用：

$$
J\left[\psi^{*}\left(r\right),\psi\left(r\right)\right]=\int\int dr_{1}dr_{2}\rho\left(r_{1}\right)\rho\left(r_{2}\right)/r_{12},
$$

$$
\rho\left(r\right)=\sum_{i}\psi_{i}^{*}\left(r\right)\psi\left(r\right).
$$

$E_{ext}$ 是外场作用：

$$
E_{ext}\left[\psi^{*}\left(r\right),\psi\left(r\right)\right]=\int drV_{ext}\left(r\right)\rho\left(r\right).
$$

$E_{xc}$ 是交换关联项：

$$
E_{xc}\left[\psi^{*}\left(r\right),\psi\left(r\right)\right]=E\left[\psi^{*}\left(r\right),\psi\left(r\right)\right]-T-J-E_{ext}.
$$

所有的多体效应全部包括在这项中，这项没有显式表示，密度泛函计算的一个核心问题就是交换关联项的选取。

然而，我们难以得到交换关联的精确形式。密度泛函理论将哈密顿量严格地对应成了一个能量泛函，此能量泛函本质上具有和原来多体哈密顿量同样的复杂度。因此对于复杂的多体系统，我们不能奢望于求得精确的能量泛函。

幸运的是，对于很多关联效应不强的系统，$E_{xc}$ 往往能被一些简单形式的泛函很好地近似。可以认为密度泛函理论中的误差全部来源于对交换关联项的近似，而这种近似对很多系统来说有足够高的精确度。

将上述泛函代入上节的变分公式：

$$
-\frac{\nabla^{2}}{2}\psi_{i}+\frac{\delta J}{\delta\psi_{i}^{*}}+\frac{\delta E_{ext}}{\delta\psi_{i}^{*}}+\frac{\delta E_{xc}}{\delta\psi_{i}^{*}}=\epsilon_{i}\psi_{i},
$$

化简后得到：

$$
\left(-\frac{\nabla^{2}}{2}+\int dr'\frac{\rho\left(r'\right)}{\left|r-r'\right|}+V_{ext}\left(r\right)+V_{xc}\left(r\right)\right)\psi_{i}=\epsilon_{i}\psi_{i},
$$

其中定义交换关联势：

$$
\frac{\delta E_{xc}\left[\psi^{*}\left(r\right),\psi\left(r\right)\right]}{\delta\psi_{i}^{*}\left(r\right)}:=V_{xc}\left(r\right)\psi_{i}\left(r\right).
$$

上述这组微分方程就是 Kohn-Sham 方程。

此时方程有着类似单体薛定谔方程的形式，只是其中 $\rho\left(r'\right),V_{xc}\left(r\right)$ 依赖与其他的 Kohn-Sham 轨道。即使如此，这种形式的方程仍然可以自洽求解。

当解出各轨道波函数 $\left\{ \psi_{i}\left(r\right)\right\}$ 以及相应轨道能量 $\epsilon_{i}$ 后，我们在 Kohn-Sham 方程两边乘上 $\psi^{*}$ 并积分就得到体系能量：

$$
E=\sum_{i}\epsilon_{i}+E_{xc}\left[\rho\left(r\right)\right]-\int drV_{xc}\rho\left(r\right).
$$

## 讨论：密度泛函与单粒子近似
Kohn-Sham 方程有着单粒子轨道的形式，因此会让人误以为是一种单粒子近似，但这种理解是不正确的。Kohn-Sham 方程理论上能严格求解多体系统基态，只是由于交换关联项的复杂性才进入一定的近似。这里我们将其和单粒子近似加以区分。

在单粒子（Hartree-Fock）近似里，我们同样会引入上述的单粒子波函数。我们将其视为对系统真实波函数的近似，并在这组辅助波函数内求出能量：

$$
\begin{eqnarray}
E_{HF} &=& \left\langle \psi_{HF}\right|\hat{H}\left|\psi_{HF}\right\rangle \\
&=&\left\langle \psi_{HF}\right|\hat{T}+\hat{V}_{int}+\hat{V}_{ext}\left|\psi_{HF}\right\rangle \\
&=&T+E_{ext}+\left\langle \psi_{HF}\right|\hat{V}_{int}\left|\psi_{HF}\right\rangle,  
\end{eqnarray}
$$

其中 $T,E_{ext}$ 与上节表达式完全相同。Hatree-Fock 的核心在于处理相互作用项时，直接用无相互作用波函数取平均值，利用 Wick 定理直接求出相互作用能：

$$
\left\langle \psi_{HF}\right|\hat{V}_{int}\left|\psi_{HF}\right\rangle =J+E_{xc},
$$

$$
J=\sum_{ij}\int\int dr_{1}dr_{2}\psi_{i}^{*}\left(r_{1}\right)\psi_{i}\left(r_{1}\right)\psi_{j}^{*}\left(r_{2}\right)\psi_{j}\left(r_{2}\right)/r_{12},
$$

$$
E_{xc}=-\sum_{ij}\int\int dr_{1}dr_{2}\psi_{i}^{*}\left(r_{1}\right)\psi_{j}\left(r_{2}\right)\psi_{j}\left(r_{1}\right)\psi_{i}\left(r_{2}\right)/r_{12},
$$

其中 $J$ 项也与上节形式完全相同，而 Hartree-Fock 这里直接给出了一个具体的交换关联能 $E_{xc}$, 对波函数求变分后，Hartree-Fock 方程和 Kohn-Sham 方程有一样的形式

$$
\left(-\frac{\nabla^{2}}{2}+\int dr'\frac{\rho\left(r'\right)}{\left|r-r'\right|}+V_{ext}\left(r\right)+V_{xc}\left(r\right)\right)\psi_{i}=\epsilon_{i}\psi_{i},
$$

其中交换关联势取为：

$$
V_{xc}\left(r\right)=-\sum_{j}\int dr'\frac{\psi_{j}^{*}\left(r'\right)\psi_{i}\left(r'\right)}{\left|r-r'\right|}\cdot\frac{\psi_{j}\left(r\right)}{\psi_{i}\left(r\right)}.
$$

从这个角度看，Hartree-Fock 可以视作密度泛函的低阶近似。然而 我们仍然要强调，密度泛函处理方法和 Hartree-Fock 背后的物理图像是完全不同的。

Kohn-Sham 的处理本身是严格的，并未做包括单粒子近似在内的任何近似。由于辅助波函数的选取只是用于得到基态电子密度，而这组波函数可以生成所有的电子密度。也就是说，Kohn-Sham 轨道的电子密度与真实基态多体波函数的电子密度相同，但 Kohn-Sham 轨道并不是真实基态波函数，其轨道也不存在独立电子轨道的图像。此波函数只是求解基态电子密度的一种辅助，而 Hartree-Fock 近似下的波函数却可以看作是真实的轨道。

然而从形式上看，Hartree-Fock 确实有 Kohn-Sham 方程的形式，后者也无非是考虑了更多的交换关联作用。实际上，我们无法得知严格的交换关联作用的具体形式，能做到也只是对交换关联作用做各阶近似。在近似的交换关联项下，利用 Kohn-Sham 方程自洽地解出基态。