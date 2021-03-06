# 群同调与上同调简介

本文将给出群同调与上同调的基本定义，并计算几个最简单的例子，希望给群同调与上同调一个直观的认识。

## Free resolution
我们先给出形式再做说明。Free resolution 是一个正合序列(exact sequence)：

$$
\begin{array}{cccccccccc}
\stackrel{\cdots}{\longrightarrow} & F_{2} & \stackrel{\partial_{2}}{\longrightarrow} & F_{1} & \stackrel{\partial_{1}}{\longrightarrow} & F_{0} & \stackrel{\partial_{0}}{\longrightarrow} & \mathcal{M} & \stackrel{0}{\longrightarrow} & 0\end{array}
$$

其中 $\mathcal{M}$ 为 $G$-module，定义为一个阿贝尔群，并且有群作用:

$$
m\in\mathcal{M}\Rightarrow g\cdot m\in\mathcal{M},\forall g\in G.
$$

正合序列意味着

$$
\ker\left(\partial_{i}\right)=imag\left(\partial_{i+1}\right).
$$

设 $\mathcal{M}$ 由一组基底 $\left\{ m_{1},m_{2},\cdots,m_{k}\right\}$
生成(但不一定是自由生成)，要使得序列正合，可定义一个 $R$-module $F_{1}$ ：

$$
F_{0}=\mathcal{R}^{k}=\mathcal{R}e_{1}\oplus\cdots\oplus\mathcal{R}e_{k}
$$

其中 $\mathcal{R}$ 为一个 group-ring:

$$
\mathcal{R}=\mathbb{Z}\left[G\right]=\sum_{g\in G}c_{g}\cdot g,\ c_{g}\in\mathbb{Z}.
$$

此时 $F_{0}$ 由 $\left\{ e_{1},\cdots,e_{k}\right\}$ 自由生成，其中同态映射 $\partial_{0}$ 效果为：

$$
\begin{eqnarray}
e_{i} & \mapsto & m_{i}\\
re_{i} & \mapsto & r\cdot m_{i}
\end{eqnarray}
$$

设该映射的核 $\ker\left(\partial_{0}\right)$ 一组基为 $\left\{ b_{1},\cdots,b_{l}\right\}$,同样 $\ker\left(\partial_{0}\right)$ 不一定由这组基自由生成，但同样可以构造

$$
F_{1}=\mathcal{R}^{l}=\mathcal{R}c_{1}\oplus\cdots\oplus\mathcal{R}c_{l}
$$

而 $\partial_{1}:\ c_{i}\mapsto b_{i}$, 以此类推。Free resolution 就是这样一个将 $G$-module 写开成一个自由群正合序列的过程。最终我们只保留阶数不小于 $0$ 的部分：

$$
\begin{array}{cccccccc}
F_{*}: & \cdots & \stackrel{\partial_{3}}{\longrightarrow} & F_{2} & \stackrel{\partial_{2}}{\longrightarrow} & F_{1} & \stackrel{\partial_{1}}{\longrightarrow} & F_{0}\end{array}
$$

注意 Free resolution 的选取不唯一，但可以证明不同的选取只相差一个链同伦，不会影响后面的结果。


### 例: bar resolution
Bar resolution 是一个一般的 free resolution 构造方法。考虑 $\mathcal{M}=\mathbb{Z}$, $G$ 在 module $\mathcal{M}$ 上作用平凡：$g\cdot1=1$, 

$$
\begin{array}{cccccccccc}
\stackrel{\cdots}{\longrightarrow} & F_{2} & \stackrel{\partial_{2}}{\longrightarrow} & F_{1} & \stackrel{\partial_{1}}{\longrightarrow} & F_{0} & \stackrel{\partial_{0}}{\longrightarrow} & \mathbb{Z} & \stackrel{0}{\longrightarrow} & 0\end{array}
$$

此时各阶 $R$-module 有一组简单基底

$$
\begin{eqnarray}
F_{0} & = & \mathcal{R}\left[\ \right]\\
\left[\ \right] & \stackrel{\partial_{0}}{\longmapsto} & 1
\end{eqnarray}
$$

此时 $\ker\partial_{0}=span\left\{ g\left[\ \right]-\left[\ \right],\forall g\in G\right\}$, 因此再定义

$$
\begin{eqnarray}
F_{1} & = & \bigoplus_{g\in G}\mathcal{R}\left[g\right]\\
\left[g\right] & \stackrel{\partial_{1}}{\longmapsto} & g\left[\ \right]-\left[\ \right]
\end{eqnarray}
$$

可以验证此时 $\ker\partial_{1}=span\left\{ g\left[h\right]-\left[gh\right]+\left[g\right],\forall g,h\in G\right\} $，再定义

$$
\begin{eqnarray}
F_{2} & = & \bigoplus_{g,h\in G}\mathcal{R}\left[\left.g\right|h\right]\\
\left[\left.g\right|h\right] & \stackrel{\partial_{2}}{\longmapsto} & g\left[h\right]-\left[gh\right]+\left[g\right]
\end{eqnarray}
$$

这个过程可以一只做下去，这组基底一般形式为

$$
\left[g_{1}|g_{2}|\cdots|g_{n}\right]\stackrel{\partial_{n}}{\longmapsto}g_{1}\left[g_{2}|\cdots|g_{n}\right]-\left[g_{1}g_{2}|g_{3}|\cdots|g_{n}\right]+\left[g_{1}|g_{2}g_{3}|\cdots|g_{n}\right]+\cdots+\left[g_{1}|g_{2}|\cdots|g_{n-1}\right]
$$

注意到

$$
e\left[\ \right]-\left[\ \right]=0
$$

即 $e\left[\ \right]-\left[\ \right]$ 实际上不在 $\ker\partial_{1}$ 中。以此类推，我们可以丢掉
bar resolution 中所有形如 $\left[g_{1}|\cdots|e|\cdots|g_{n}\right]$ 的基底。以上构造是一般的。但这个基底往往有很多冗余，因此具体计算几乎不会使用这组基底。


## 群同调
要定义群的同调，还需要一步 co-invariant 操作

$$
F_{i}\mapsto F_{i}/\left(m=g\cdot m\right)
$$

对于 free module, 模掉这个等价关系相当于把系数 $\mathcal{R}$ 换为 $\mathbb{Z}$, 对于上述的
bar resolution, co-invariant 操作后的链序列为：

$$
\begin{array}{ccccccccccc}
\mathcal{F}_{*}: & \stackrel{\cdots}{\longrightarrow} & {\displaystyle \bigoplus_{g,h\in G}\mathbb{Z}\left[\left.g\right|h\right]} & \stackrel{\partial_{2}}{\longrightarrow} & {\displaystyle \bigoplus_{g\in G}\mathbb{Z}\left[g\right]} & \stackrel{\partial_{1}}{\longrightarrow} & \mathbb{Z}\left[\ \right] & \stackrel{\partial_{0}}{\longrightarrow} & \mathbb{Z} & \stackrel{0}{\longrightarrow} & 0\end{array}
$$

群 $G$ 的\textbf{同调群}定义为序列 $\mathcal{F}_{*}$ 的同调群

$$
H_{n}\left(G,\mathbb{Z}\right)\equiv H_{n}\left(\mathcal{F}_{*}\right)
$$



### 例：$G=\mathbb{Z}_{2}$:
对于这个简单的群，可以直接使用 bar resolution 计算群同调。此时 $G=\left\{ e,\tau\right\} ,\tau^{2}=1$, 各阶 Z module 都只有一个基底 $\left[\tau|\cdots|\tau\right]$:

$$
\begin{array}{cccccccccc}
\stackrel{\cdots}{\longrightarrow} & {\displaystyle \mathbb{Z}\left[\left.\tau\right|\tau\right]} & \stackrel{\partial_{2}}{\longrightarrow} & {\displaystyle \mathbb{Z}\left[\tau\right]} & \stackrel{\partial_{1}}{\longrightarrow} & \mathbb{Z}\left[\ \right] & \stackrel{\partial_{0}}{\longrightarrow} & \mathbb{Z} & \stackrel{0}{\longrightarrow} & 0\end{array}
$$

各阶映射对应基变换为：

$$
\begin{eqnarray}
\left[\ \right] & \mapsto & 1\\
\left[\tau\right] & \mapsto & \left[\ \right]-\left[\ \right]=0\\
\left[\left.\tau\right|\tau\right] & \mapsto & \left[\tau\right]-\left[e\right]+\left[\tau\right]=2\left[\tau\right]
\end{eqnarray}
$$

其一般形式为：

$$
\left[\tau|\cdots|\tau\right]_{n}\mapsto\begin{cases}
1 & n=0\\
0 & n=1\mod2\\
2\left[\tau|\cdots|\tau\right]_{n-1} & n=0\mod2
\end{cases}
$$

因此经过 co-invariant 操作后的序列为：

$$
\begin{array}{cccccccccc}
\mathcal{F}_{*}: & \cdots & \stackrel{2}{\longrightarrow} & \mathbb{Z} & \stackrel{0}{\longrightarrow} & {\displaystyle \mathbb{Z}} & \stackrel{2}{\longrightarrow} & {\displaystyle \mathbb{Z}} & \stackrel{0}{\longrightarrow} & \mathbb{Z}\end{array}
$$

读出 $\mathbb{Z}_{2}$ 群的同调群为

$$
H_{n}\left(\mathbb{Z}_{2},\mathbb{Z}\right)=\begin{cases}
\mathbb{Z} & n=0\\
\mathbb{Z}_{2} & n=1\mod2\\
0 & n=0\mod2
\end{cases}
$$


## 群上同调
群上同调定义是类似的，通过对偶作用：

$$
\begin{array}{ccccccc}
\mathcal{F}_{*}: & \stackrel{\cdots}{\longrightarrow} & F_{2} & \stackrel{\partial_{2}}{\longrightarrow} & F_{1} & \stackrel{\partial_{1}}{\longrightarrow} & F_{0}\\
\downarrow &  & \downarrow &  & \downarrow &  & \downarrow\\
\mathcal{F}^{*}: & \stackrel{\cdots}{\longleftarrow} & \hom\left(F_{2},\mathcal{M}\right) & \stackrel{d_{1}}{\longleftarrow} & \hom\left(F_{1},\mathcal{M}\right) & \stackrel{d_{0}}{\longleftarrow} & \hom\left(F_{0},\mathcal{M}\right)
\end{array}
$$

群上同调定义为：

$$
H^{n}\left(G,\mathcal{M}\right)\equiv H^{n}\left(\mathcal{F}^{*}\right)
$$

注意群上同调依赖 $G$-module 的选取，$\mathcal{M}$ 也被称做群上同调的系数(group cohomology
with coefficient)。对于自由群而言，其对偶空间为：

$$
\hom\left(\mathbb{Z}^{k},\mathcal{M}\right)=\mathcal{M}^{k}.
$$

而上边缘算子 $d_{i}$ 和下边缘算子 $\partial_{i+1}$ 是分别对应的：

$$
\left\langle d_{i}C^{i},C_{i+1}\right\rangle =\left\langle C^{i},\partial_{i+1}C_{i+1}\right\rangle 
$$


### 例1：$H^{n}\left(\mathbb{Z}_{k},\mathbb{Z}\right)$ :
这里 $\mathbb{Z}$ 是群 $\mathbb{Z}_{k}$ 平凡作用的 module. 对循环群，由于只有一个生成元，此时计算可以大大简化。循环群的
group-ring 为：

$$
\mathcal{R}=\mathbb{Z}\left[G\right]=\mathbb{Z}\left[t\right]/\left(t^{k}-1\right)
$$

其中等价关系 $t^{k}-1=0$ 可分解为：

$$
t^{k}-1=\left(t-1\right)\left(t^{k-1}+t^{k-2}+\cdots+1\right)=0
$$

构造 $F_{0}$ 与 $\partial_{0}$ :

$$
\begin{eqnarray}
\mathcal{R}e_{0} & \rightarrow & \mathbb{Z}\\
e_{0} & \mapsto & 1
\end{eqnarray}
$$

注意到此时

$$
\ker\partial_{0}=span\left\{ \left(t-1\right)e_{0}\right\} 
$$

根据等价关系的分解，我们可以继续构造只包含一个基底的 $F_{1}$ 与 $\partial_{1}$ :

$$
\begin{eqnarray}
\mathcal{R}e_{1} & \rightarrow & \mathcal{R}e_{1}\\
e_{1} & \mapsto & \left(t-1\right)e_{0}
\end{eqnarray}
$$

此时

$$
\ker\partial_{1}=span\left\{ Ne_{1}\right\} ,\ N=t^{k-1}+t^{k-2}+\cdots+1
$$

更高阶的 $F_{i}$ 可按此方法周期构造，最终经过 co-invariant 操作后的序列为：

$$
\begin{array}{cccccccccccc}
\mathcal{F}_{*}: & \cdots & \stackrel{t-1}{\longrightarrow} & \mathcal{R} & \stackrel{N}{\longrightarrow} & {\displaystyle \mathcal{R}} & \stackrel{t-1}{\longrightarrow} & \mathcal{R} & \stackrel{1}{\longrightarrow} & \mathbb{Z} & \stackrel{0}{\longrightarrow} & 0\end{array}
$$

对偶作用后：

$$
\begin{array}{ccccccccc}
\mathcal{F}_{*}: & \rightarrow & \mathcal{R} & \stackrel{t-1}{\longrightarrow} & \mathcal{R} & \stackrel{N}{\longrightarrow} & \mathcal{R} & \stackrel{t-1}{\longrightarrow} & \mathcal{R}\\
\downarrow &  & \downarrow &  & \downarrow &  & \downarrow &  & \downarrow\\
\mathcal{F}^{*}: & \leftarrow & \mathbb{Z} & \stackrel{0}{\longleftarrow} & \mathbb{Z} & \stackrel{k}{\longleftarrow} & \mathbb{Z} & \stackrel{0}{\longleftarrow} & \mathbb{Z}
\end{array}
$$

因为群在 $\mathbb{Z}$ 上作用是平凡的，$t-1\mapsto0,N\mapsto k$,

$$
H^{n}\left(\mathbb{Z}_{k},\mathbb{Z}\right)=\begin{cases}
\mathbb{Z} & n=0\\
0 & n=1\mod2\\
\mathbb{Z}_{k} & n=0\mod2
\end{cases}
$$


### 例2：$H^{n}\left(\mathbb{Z}_{k},U\left(1\right)\right)$ :
这里 $\mathbb{Z}_{k}$ 在 $U\left(1\right)$ 上作用也是平凡的。我们希望群乘是加法，因此将 $U(1)$
写作 $\mathbb{R}/\mathbb{Z}$:

$$
H^{n}\left(\mathbb{Z}_{k},U\left(1\right)\right)\approx H^{n}\left(\mathbb{Z}_{k},\mathbb{R}/\mathbb{Z}\right)
$$

这样我们只需将例1的结果稍加修改得到：

$$
\begin{array}{ccccccccc}
\mathcal{F}_{*}: & \rightarrow & \mathcal{R} & \stackrel{t-1}{\longrightarrow} & \mathcal{R} & \stackrel{N}{\longrightarrow} & \mathcal{R} & \stackrel{t-1}{\longrightarrow} & \mathcal{R}\\
\downarrow &  & \downarrow &  & \downarrow &  & \downarrow &  & \downarrow\\
\mathcal{F}^{*}: & \leftarrow & \mathbb{R}/\mathbb{Z} & \stackrel{0}{\longleftarrow} & \mathbb{R}/\mathbb{Z} & \stackrel{k}{\longleftarrow} & \mathbb{R}/\mathbb{Z} & \stackrel{0}{\longleftarrow} & \mathbb{R}/\mathbb{Z}
\end{array}
$$

这时和整数情况稍有不同，简单计算得到上同调群为：

$$
H^{n}\left(\mathbb{Z}_{k},U\left(1\right)\right)=\begin{cases}
\mathbb{R}/\mathbb{Z}=U\left(1\right) & n=0\\
\mathbb{Z}_{k} & n=1\mod2\\
0 & n=0\mod2
\end{cases}
$$


### 例3：$H^{n}\left(\mathbb{Z}_{k}\times\mathbb{Z}_{T},U_{T}\left(1\right)\right)$ :
其中 $\mathbb{Z}_{T}=\left\{ e,\tau\right\}$ 是时间反演算符，在 module $U_{T}(1)$ 上的作用为：

$$
\begin{eqnarray}
e\cdot1 & = & 1\\
\tau\cdot1 & = & -1
\end{eqnarray}
$$

我们可以将 $\mathbb{Z}_{k}\times\mathbb{Z}_{T}$ 写作 $\mathbb{Z}_{2k}$, 

$$
H^{n}\left(\mathbb{Z}_{k}\times\mathbb{Z}_{T},U_{T}\left(1\right)\right)\approx H^{n}\left(\mathbb{Z}_{2k},\mathbb{R}/\mathbb{Z}\right)
$$

此时群的唯一生成元为 $\tau$, $\tau$ 在 $U_{T}(1)$ 上作用将单位元取逆。因此 $t-1\mapsto-1,N\mapsto0$,

$$
\begin{array}{ccccccccc}
\mathcal{F}_{*}: & \rightarrow & \mathcal{R} & \stackrel{t-1}{\longrightarrow} & \mathcal{R} & \stackrel{N}{\longrightarrow} & \mathcal{R} & \stackrel{t-1}{\longrightarrow} & \mathcal{R}\\
\downarrow &  & \downarrow &  & \downarrow &  & \downarrow &  & \downarrow\\
\mathcal{F}^{*}: & \leftarrow & \mathbb{R}/\mathbb{Z} & \stackrel{-2}{\longleftarrow} & \mathbb{R}/\mathbb{Z} & \stackrel{0}{\longleftarrow} & \mathbb{R}/\mathbb{Z} & \stackrel{-2}{\longleftarrow} & \mathbb{R}/\mathbb{Z}
\end{array}
$$

稍加计算得到：

$$
H^{n}\left(\mathbb{Z}_{k}\times Z_{T},U_{T}\left(1\right)\right)=\begin{cases}
0 & n=1\mod2\\
\mathbb{Z}_{2} & n=0\mod2
\end{cases}
$$


## Remarks

以上的例子可以展示出群上同调计算的基本流程。但实际上对于多个生成元的群，很难像循环群那样轻易地构造出简单的 free resolution，这时群上同调计算困难的地方。
