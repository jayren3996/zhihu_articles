## Jordan-Wigner变换——费米子与自旋间的桥梁

## 自旋与费米子算符的联系
### 单粒子情形
单粒子费米子系统是一个简单两能级系统，只有占据与非占据两个状态。分别用 $\left|\uparrow\right\rangle ,\left|\downarrow\right\rangle$ 表示。对于费米子体系，产生湮灭算符为：

$$
	\begin{cases}
		c\left|1\right\rangle =\left|0\right\rangle \\ 
		c\left|0\right\rangle =0
	\end{cases},
	\begin{cases}
		c^{\dagger}\left|1\right\rangle =0 \\ 
		c^{\dagger}\left|0\right\rangle =\left|1\right\rangle
	\end{cases}.
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

可以看出费米子产生湮灭算符和自旋系统中的泡利升降算符相同。在单粒子希尔伯特空间中，费米子和泡利算符可以互相转化。


### 多粒子情形
一般的，量子多体算符/矢量可以看作一些列单体算符/矢量的张量积。如对于一维自旋链，我们可以用单体基矢 $\left|\uparrow\right\rangle ,\left|\downarrow\right\rangle$ 张成整个多体系统的基矢 $\left|\sigma_{1},\sigma_{2},\cdots,\sigma_{N}\right\rangle$ ：

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
	c_{i}&=&\left(\otimes_{j=1}^{i-1}\mathbb{I}_{j}\right)\otimes c\otimes\left(\otimes_{j=i+1}^{N}\mathbb{I}_{j}\right), \\
	c_{i}^{\dagger}&=&\left(\otimes_{j=1}^{i-1}\mathbb{I}_{j}\right)\otimes c^{\dagger}\otimes\left(\otimes_{j=i+1}^{N}\mathbb{I}_{j}\right) 
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
	K_{i}=\otimes_{j=1}^{i-1}\left(-\sigma_{j}^{z}\right)=\otimes_{j=1}^{i-1}\left(1-2c_{j}^{\dagger}c_{j}\right) 
$$

从而将费米子算符写为：

$$
\begin{eqnarray}
	c_{i}&=&K_{i}\otimes c\otimes\left(\otimes_{j=i+1}^{N}\mathbb{I}_{j}\right), \\
	c_{i}^{\dagger}&=&K_{i}\otimes c^{\dagger}\otimes\left(\otimes_{j=i+1}^{N}\mathbb{I}_{j}\right).
\end{eqnarray}
$$

相当与在原来的基础上引入了一条从1 到$i$的链，这条链保证了费米子多体算符的对易性。这也自然引出了自旋算符与费米子算符的变换关系。


### Jordan-Wigner 变换
Jordan-Wigner 变换是自旋算符与费米子算符之间的转换，可以将一些自旋问题转化为费米子问题。从之前对费米子的讨论中，我们实际上已经得到了 Jordan-Wigner 变换公式：

$$
	\begin{cases} \sigma_{i}^{+} & =K_{i}c_{i}^{\dagger}\\ \sigma_{i}^{-} & =K_{i}c_{i} \end{cases},
$$


$$
	\begin{cases} \sigma_{i}^{x} & =K_{i}\left(c_{i}+c_{i}^{\dagger}\right)\\ \sigma_{i}^{y} & =iK_{i}\left(c_{i}-c_{i}^{\dagger}\right)\\ \sigma_{i}^{z} & =2c_{i}^{\dagger}c_{i}-1 \end{cases}
$$


$$
	K_{i}=\prod_{j<i}\left(-\sigma_{j}^{z}\right)=\prod_{j<i}\left(1-2c_{j}^{\dagger}c_{j}\right)
$$


## 例子
下面我们用 Jordan-Wigner 变换处理一个经典自旋模型——横场伊辛模型。该模型哈密顿量为：

$$
	\hat{H}=\sum_{i}\sigma_{i}^{x}\sigma_{i+1}^{x}+h\sigma_{i}^{z} .
$$

经过 Jordan-Wigner 变换后：

$$
\begin{eqnarray}
	\sigma_{i}^{x}\sigma_{i+1}^{x} &=& -\left(c_{i}-c_{i}^{\dagger}\right)\left(c_{i+1}+c_{i+1}^{\dagger}\right), \\
	\sigma_{i}^{z} &=& 2c_{i}^{\dagger}c_{i}-1, \\
	\hat{H} &=& \sum_{i}\left(c_{i}^{\dagger}c_{i+1}+c_{i}^{\dagger}c_{i+1}^{\dagger}+h.c.\right)+h\sum_{i}\left(2c_{i}^{\dagger}c_{i}-1\right).
\end{eqnarray}
$$

由于平移对称性，做傅里叶变换：

$$
	\begin{cases} c_{l} & =\frac{1}{\sqrt{n}}\sum_{k}c_{k}e^{+ikl}\\ c_{l}^{\dagger} & =\frac{1}{\sqrt{n}}\sum_{k}c_{k}^{\dagger}e^{-ikl} \end{cases}.
$$


$$
	\hat{H}=\sum_{k}\left(\begin{array}{cc} c_{k}^{\dagger} & c_{-k}\end{array}\right)\left(\begin{array}{cc} h+\cos\left(k\right) & -i\sin\left(k\right)\\ i\sin\left(k\right) & -h-\cos\left(k\right) \end{array}\right)\left(\begin{array}{c} c_{k}\\ c_{-k}^{\dagger} \end{array}\right) 
$$

再对每个小矩阵对角化，就得到了体系的能谱：

$$
	E\left(k\right)=\sqrt{\left(h+\cos k\right)^{2}+\sin^{2}k} 
$$


### 参考文献
1. Nagaosa, Quantum field theory in strongly correlated electronic systems. \\
2. Xiao-Gang Wen,  Quantum field theory of many-body systems.