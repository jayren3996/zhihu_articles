# Jordan-Wigner 变换

单粒子费米子系统是一个简单两能级系统，只有占据与非占据两个状态。分别用 $\left|\uparrow\right\rangle ,\left|\downarrow\right\rangle$ 表示。对于费米子体系，产生湮灭算符为：

$$
\begin{eqnarray}
	c |1\rangle &=& |0\rangle, \\ 
	c^\dagger |0\rangle &=& |1\rangle.
\end{eqnarray}
$$

这样，算符的矩阵表示可以写作：

$$
\begin{eqnarray}
	c &=& \left(
	\begin{array}{cc} 
		0 & 0\\ 
		1 & 0 
	\end{array}
	\right)=\sigma^{-}, \\
	c^{\dagger} &=& \left(
	\begin{array}{cc} 
		0 & 1\\ 
		0 & 0 
	\end{array}\right)=\sigma^{+}.
\end{eqnarray}
$$

可以看出费米子湮灭/产生算符和自旋系统中的泡利升/降算符相同。在单粒子希尔伯特空间中，费米子和泡利算符可以互相转化。

量子多体算符/矢量可以看作一些列单体算符/矢量的张量积。如对于一维自旋链，我们可以用单体基矢 $\left|\uparrow\right\rangle ,\left|\downarrow\right\rangle$ 张成整个多体系统的基矢 $\left|\sigma_{1},\sigma_{2},\cdots,\sigma_{N}\right\rangle$ ：

$$
	\left|\psi\right\rangle =\sum_{\left\{ \sigma_{i}\right\} }\psi\left[\sigma_{1},\sigma_{2},\cdots,\sigma_{N}\right]\left|\sigma_{1},\sigma_{2},\cdots,\sigma_{N}\right\rangle,
$$


$$
	\left|\sigma_{1},\sigma_{2},\cdots,\sigma_{N}\right\rangle =\otimes_{i=1}^{N}\left|\sigma_{i}^{z}\right\rangle 
$$

类似的，多体算符也可以用单体算符张量积表示,如

$$
	\sigma_{i}^{+}=\left(\otimes_{j=1}^{i-1}\mathbb{I}_{j}\right)\otimes\sigma^{+}\otimes\left(\otimes_{j=i+1}^{N}\mathbb{I}_{j}\right)
$$

这样，对于自旋系统，我们可以用矢量和矩阵直积的方法，将多体问题化为一个 $2^N$ 维线性代数问题。
现在回头看费米子系统，类比自旋链，我们想直接通过直积得到费米子的多体产生湮灭算符表示：

$$
\begin{eqnarray}
	c_{i}&=&\left(\otimes_{j=1}^{i-1}\mathbb{I}_{j}\right)\otimes \sigma^-\otimes\left(\otimes_{j=i+1}^{N}\mathbb{I}_{j}\right), \\
	c_{i}^{\dagger}&=&\left(\otimes_{j=1}^{i-1}\mathbb{I}_{j}\right)\otimes \sigma^+\otimes\left(\otimes_{j=i+1}^{N}\mathbb{I}_{j}\right) 
\end{eqnarray}
$$

需要注意的是，多粒子体系中，由于对易关系的要求，这样的直积表示是错误的。费米子要求的对易关系为：

$$
	\left\{ c_{i},c_{j}^{\dagger}\right\} =\delta_{ij},\ \left\{ c_{i},c_{j}\right\} =0.
$$

可以验证，上述直积表示不满足 $i \ne j$ 时的对易关系。
事实上 $i \ne j$ 时的反对易关系蕴含着费米子算符是一个高度非局域算符，而算符的直积表示只适用于局域的算符。举例来说，对一个两费米子体系:

$$
c_{2}^{\dagger}\left|0,0\right\rangle =\left|0,1\right\rangle,
$$


$$
	c_{2}^{\dagger}\left|1,0\right\rangle =c_{2}^{\dagger}c_{1}^{\dagger}\left|0,0\right\rangle =-c_{1}^{\dagger}c_{2}^{\dagger}\left|0,0\right\rangle =-\left|1,1\right\rangle.
$$

在1处的费米子占据状态会改变作用于2处的费米子算符的结果。为了得到正确的对易关系，我们引入一非局域链算符

$$
P_{i}=\bigotimes_{j=1}^{i-1} \sigma_{j}^{z} = \bigotimes_{j=1}^{i-1}\left(2c_{j}^{\dagger}c_{j}-1\right).
$$

从而将费米子算符写为：

$$
\begin{eqnarray}
	c_{i} &=& P_{i}\otimes \sigma^-\otimes\left(\otimes_{j=i+1}^{N}\mathbb{I}_{j}\right), \\
	c_{i}^{\dagger} &=& P_{i}\otimes \sigma^+\otimes\left(\otimes_{j=i+1}^{N}\mathbb{I}_{j}\right).
\end{eqnarray}
$$

相当与在原来的基础上引入了一条从 $1$ 到 $i$ 的链算符，此链算符保证了费米子算符之间的反对易性。这也自然引出了自旋算符与费米子算符的对应关系：

$$
\begin{eqnarray}
	\sigma_{i}^{+} &\leftrightarrow& P_{i} c_{i}^\dagger,\\ 
	\sigma_{i}^{-} &\leftrightarrow& P_{i}c_{i}.
\end{eqnarray}
$$

该对应关系就是 Jordan-Wigner 变换。


## 横场伊辛模型求解
下面我们用 Jordan-Wigner 变换处理一个经典自旋模型——横场伊辛模型。该模型哈密顿量为：

$$
	\hat{H}=\sum_{i}\sigma_{i}^{x}\sigma_{i+1}^{x}+h\sigma_{i}^{z} .
$$

经过 Jordan-Wigner 变换后：

$$
\begin{eqnarray}
	\sigma_{i}^{x}\sigma_{i+1}^{x} &=& (-c_{i} + c_{i}^{\dagger})(c_{i+1}+c_{i+1}^{\dagger}), \\
	\sigma_{i}^{z} &=& 2c_{i}^{\dagger}c_{i}-1, \\
	\hat{H} &=& \sum_{i}c_{i}^{\dagger}c_{i+1} + h c_{i}^{\dagger}c_{i} + c_{i}^{\dagger} c_{i+1}^{\dagger}+h.c.
\end{eqnarray}
$$

此哈密顿量称为 Kitaev chain model. 由于平移对称性，做傅里叶变换：

$$
\begin{eqnarray} 
	c_{l} &=& \frac{1}{\sqrt{n}} \sum_{k} e^{+ikl} c_{k}, \\ 
	c_{l}^{\dagger} &=& \frac{1}{\sqrt{n}}\sum_{k} e^{-ikl} c_{k}^{\dagger}.
\end{eqnarray}
$$

得到动量空间哈密顿量

$$
\hat{H} = \sum_{k}
\left(\begin{array}{cc} 
	c_{k}^{\dagger} & c_{-k}
\end{array}\right)
\left(\begin{array}{cc} 
	\cos\left(k\right)+h & -i\sin\left(k\right) \\ 
	i\sin\left(k\right) & -\cos\left(k\right)-h
\end{array}\right)
\left(\begin{array}{c} 
	c_{k} \\ 
	c_{-k}^{\dagger} 
\end{array}\right).
$$

再对每个小矩阵对角化，就得到了体系的能谱：

$$
E(k) = \sqrt{(\cos k+h)^{2}+\sin^{2}k} .
$$

注意横场伊辛模型和变换后的 Kitaev chain 有相同的能谱和相变点，但后者存在对称性保护的拓扑超导相，相应的在边缘会有 Majorana zero mode， 但在横场伊辛模型中，该零能模式表现为对称性自发破缺的基态简并。我们看到 Jordan-Wigner 变换对体系的实际上改变了体系的一些物理，这实际上是 Jordan-Wigner 变换的非局域性导致的。

## 希尔伯特空间上看 Jordan-Wigner 变换

事实上，在希尔伯特空间的角度看， Jordan-Wigner 变换不过是自旋与费米子希尔伯特空间的同构映射：

$$
T_{JW}: \mathcal H_{spin}\rightarrow \mathcal{H}_{fermion}.
$$

具体形式为：

$$
T_{JW} \left|\sigma_{1}^{z},\cdots,\sigma_{N}^{z}\right\rangle _{spin}
= \left|n_{1},\cdots,n_{N}\right\rangle _{fermion},
$$

其中

$$
n_{i}=\frac{1+\sigma_{i}^{z}}{2}.
$$

即每个格点上，把自旋 $\left|\uparrow\right\rangle$ 态对应为费米子占据态，而把自旋 $\left|\downarrow\right\rangle$ 态对应为费米子空态。这个变换(在线性空间同构意义下)不改变波函数。只是在两个希尔伯特空间中，“局域”算符的定义发生了改变。在此对应下，费米子产生湮灭算符均是非局域的。

在这个意义上，若我们只考虑体系波函数的结构，(线性代数意义下)自旋和费米的的结果是完全相同的。因此当考虑态的演化，以及考虑态的纠缠时，我们大可将自旋和费米系统视作相同的。然而一些涉及算符局域性的概念，如是否有长程关联，是否有局域的零能激发等，在自旋和费米子体系里有不同的表现，这导致了横场伊辛模型和 Kitaev chain 中对零能模的两种不同物理表现。

## 参考文献

1. Nagaosa, Quantum field theory in strongly correlated electronic systems.
2. Xiao-Gang Wen,  Quantum field theory of many-body systems.
