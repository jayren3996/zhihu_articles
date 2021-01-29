# 再谈 Jordan-Wigner 变换

我们在之前的文章 ([Jordan-Wigner 变换](https://zhuanlan.zhihu.com/p/59368209)) 中介绍了这一自旋到费米子的变换。

通常来说，Jordan-Wigner 变换的作用是将自旋算符变成费米子算符：

$$
	\sigma_{i}^{+}\leftrightarrow K_{i}c_{i}^{\dagger},\ \sigma_{i}^{-}\leftrightarrow K_{i}c_{i}
$$

其中我们很自然地将自旋升降算符化为费米子产生湮灭算符，再添上一项保证对易关系的链算符 $K_{i}$.需要注意的是，Jordan-Wigner 变换是一个非局域的变换。由此变换联系起来的自旋和费米子模型有相同的能谱（相应的也有相图的相图），但除此之外一些定义在局域的物理量往往会发生很大的变化。一个典型就是横场伊辛模型：

$$
	\hat{H}=\sum_{i}\left(J_{1}\sigma_{i}^{x}\sigma_{i+1}^{x}+J_{2}\sigma_{i}^{z}\right)
$$

相应经过 Jordan-Wigner 变换后的费米子模型(Kitaev chain)：

$$
	\hat{H}=J_{1}\sum_{i}\left(c_{i}^{\dagger}c_{i+1}+c_{i}c_{i+1}+h.c.\right)+J_{2}\sum_{i}\left(2c_{i}^{\dagger}c_{i}-1\right).
$$

两者有相同的能谱和相变点，但后者存在对称性保护的拓扑超导相，相应的在边缘会有 Majorana zero mode， 但在横场伊辛模型中就看不到这点。这一度使笔者对 Jordan-Wigner 变换感到十分失望，似乎这种保能谱的变换完全把系统的其他物理性质破坏了。但事实上，在希尔伯特空间的角度看， Jordan-Wigner 变换可以看作自旋与费米子希尔伯特空间的同构映射。因此事实上这个变换几乎不会改变系统的任何性质，只是在两个希尔伯特空间中，局域算符的定义发生了改变，我们后面会讨论这种改变对于拓扑的影响。现在，我们首先思考几个问题。

## Jordan-Wigner 变换是什么变换？
注意到 Jordan-Wigner 变换将自旋模型变为了费米子模型，其中隐含了希尔伯特空间的改变。因此，严格来说， Jordan-Wigner 变换应当被视作自旋希尔伯特空间到费米子希尔伯特空间的线性映射。

回想起来，我们在做 Jordan-Wigner 变换时经常忽视这种希尔伯特空间的改变。事实上，我们很多时候确实不需要考虑这种改变，因为自旋希尔伯特空间和费米子希尔伯特空间是同构的，并且有自然的同构映射：

$$
	T:\hat H_{spin}\rightarrow \hat{H}_{fermion},
$$


$$
	T\left|\sigma_{1}^{z},\cdots,\sigma_{N}^{z}\right\rangle _{spin}=\left|n_{1},\cdots,n_{N}\right\rangle _{fermion},
$$


$$
	n_{i}=\frac{\sigma_{i}^{z}+1}{2}.
$$

相应的，同构映射自然给出每个线性空间上算子的同构：

$$
	TO_{spin}\left|\psi\right\rangle _{spin}=O_{fermion}T\left|\psi\right\rangle _{spin},
$$


$$
	O_{fermion}=TO_{spin}T^{-1}.
$$

事实上，相应线性算子的同构关系就是 Jordan-Wigner 变换。即：

$$
	\begin{cases} T\sigma_{i}^{+}T^{-1} & =\prod_{j<i}\left(1-2c_{j}^{\dagger}c_{j}\right)c_{i}^{\dagger}\\ T\sigma_{i}^{-}T^{-1} & =\prod_{j<i}\left(1-2c_{j}^{\dagger}c_{j}\right)c_{i} \end{cases}.
$$


### 不甚严谨的证明
我们只需要在自旋 z 方向即费米子占据数的基矢上证明这个结论，对于任意基矢：

$$
	\left|\psi\right\rangle _{spin}=\left|\sigma_{1}^{z},\cdots,\sigma_{i}^{z},\cdots,\sigma_{N}^{z}\right\rangle _{spin}.
$$

我们取  $O_{spin}^{+}=\sigma_{i}^{+},O_{spin}^{-}=\sigma_{i}^{-}$: 

$$
\begin{eqnarray}
	O_{spin}^{+}\left|\psi\right\rangle _{spin}
	&=&\left(\frac{1-\sigma_{i}^{z}}{2}\right)\left|\sigma_{1}^{z},\cdots,+1,\cdots,\sigma_{N}^{z}\right\rangle _{spin}, \\
	O_{spin}^{-}\left|\psi\right\rangle _{spin}
	&=&\left(\frac{1+\sigma_{i}^{z}}{2}\right)\left|\sigma_{1}^{z},\cdots,-1,\cdots,\sigma_{N}^{z}\right\rangle _{spin}.
\end{eqnarray}
$$

同构变换后：

$$
\begin{eqnarray}
	T\left[\left|\psi\right\rangle _{spin}\right]&=&\left|n_{1},\cdots,n_{N}\right\rangle _{fermion}, \\
	T\left[O_{spin}^{+}\left|\psi\right\rangle _{spin}\right]&=&\left(1-n_{i}\right)\left|n_{1},\cdots,1,\cdots n_{N}\right\rangle _{fermion}, \\
	T\left[O_{spin}^{-}\left|\psi\right\rangle _{spin}\right]&=&n_{i}\left|n_{1},\cdots,0,\cdots n_{N}\right\rangle _{fermion}.
\end{eqnarray}
$$

算子同构关系要求：

$$
\begin{eqnarray}
	O_{fermion}^{+}\left|n_{1},\cdots,0,\cdots n_{N}\right\rangle _{fermion}&=&\left|n_{1},\cdots,1,\cdots n_{N}\right\rangle _{fermion} \\
	O_{fermion}^{-}\left|n_{1},\cdots,1,\cdots n_{N}\right\rangle _{fermion}&=&\left|n_{1},\cdots,0,\cdots n_{N}\right\rangle _{fermion}.
\end{eqnarray}
$$

考虑到费米子的对易关系，费米子空间上的同构算子只能取形式：

$$
	\begin{cases} O_{fermion}^{+} & =\sum_{j<i}\left(1-2c_{j}^{\dagger}c_{j}\right)c_{i}^{\dagger}\\ O_{fermion}^{-} & =\sum_{j<i}\left(1-2c_{j}^{\dagger}c_{j}\right)c_{i} \end{cases}.
$$

证毕。

## Jordan-Wigner 保留了什么？
我们看到， Jordan-Wigner 变换是一个同构映射，由同构映射联系起来的自旋和费米子模型有完全相同的数学结构。因此，当我们仅将希尔伯特空间视作一线性空间，任何线性代数的结果都是不变的，我们只需要在转换时带上同构映射：

$$
	\begin{cases} T\left|\psi\right\rangle _{spin} & =\left|\psi\right\rangle _{fermion}\\ TO_{spin}T^{-1} & =O_{fermion} \end{cases}.
$$

因此，我们可以说，任何的线性代数结果在 Jordan-Wigner 变换下不变，包括但不限于：

- 态与算符：态的演化，算符的演化，算符期望值，关联函数；
- 纠缠信息：约化密度矩阵，子系统纠缠熵，交互信息熵，以及相应的时间演化。


## Jordan-Wigner 改变了什么？
虽然我们欣喜地看到， Jordan-Wigner 事实上保留了大量的信息，但它还是改变了许多性质。这种改变本质原因是，虽然自旋希尔伯特空间与费米子希尔伯特空间在线性空间的意义上同构，由于自旋与费米子有不同的对易关系，其上的物理是完全不同的。一个特别突出的问题便是局域性的定义。

对于自旋系统，我们将形如  $\sigma_{i}^{\alpha},\ \alpha=x,y,z$ 这样定义在单格点上的算符视作局域算符；而对于费米子系统，我们将 $f_{i}^{\dagger},f_{i}$ 这样的单格点算符视为语句算符。但在同构映射下，这两种定义是矛盾的！这直接导致依赖算符局域性的物理在这个同构变换下失效。包括但不限于：

- 希尔伯特空间的特殊对称性：费米子的 particle-hole 对称性，自旋的 SU(2) 对称性；
- 算符空间位置的信息：算符是否存在长程关联，算符的局域性；
- 局域算符的传播：反时序关联(OTOC)的形式，Lieb-Robinson bound.

因此对于伊辛模型/Kitaev chain 的拓扑改变，我们至少有两种观点解释这种改变：

1. Kitaev chain 的拓扑是 particle-hole 对称性保护下的拓扑态，而对自旋模型没有这种对称性保护。
2. Kitaev chain 拓扑直接体现是边缘出现局域的零能 Majorana 算符, 而经过同构映射后虽然存在这种零能算符，但在自旋意义下这两个算符不在局域，而是耦合在了一起，这种耦合导致拓扑的消失。