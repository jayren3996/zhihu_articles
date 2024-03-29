# 自旋波:能谱计算

自旋波是有磁序自旋系统常见的低能激发模式。立方晶格上的海森堡模型在铁磁和反铁磁态上的自旋波激发是自旋波的经典例子。一些形成磁序的系统可能远远比之复杂，其中可能有：

- 三角晶格上常见的几何阻搓导致自旋排列并非平行反平行;
- 模型包含非海森堡的耦合，失去了 $SO(3)$ 对称性;
- 基态平移对称性部分破缺，导致扩增元胞内自旋数目较多.

本文本意是作为一个自旋波计算的 recipe，同时对一些关键步骤也会做详细推导。理论部分为简洁起见会使用一些抽象记号，但每一步最后，我们会详细写下每个量的具体表达式。希望通过参考本文可以很快写出一个可用于自旋波的程序。

## 基态自旋构型
假设我们已知模型的经典磁基态，本节目标是找到基态上的低能自旋波激发模式。首先，我们在极坐标下写出自旋方向：

$$
\vec{S}_{i,n}=\left(\theta_{i,n},\phi_{i,n}\right).
$$

其中 $i$ 是晶格坐标，$n$ 是元胞内子格点的指标，$n$ 指标多少取决于平移对称性破缺的大小，如一维铁磁态 $n = 1$，反铁磁 $n = 2$. 沿着基态自旋取向，我们建立一个正交标架：

$$
\left(\begin{array}{c}
\hat{\theta}\\
\hat{\phi}\\
\hat{n}
\end{array}\right)=\left(\begin{array}{ccc}
\cos\theta\cos\phi & \cos\theta\sin\phi & -\sin\phi\\
-\sin\phi & \cos\phi & 0\\
\sin\theta\cos\phi & \sin\theta\sin\phi & \cos\theta
\end{array}\right)\left(\begin{array}{c}
\hat{x}\\
\hat{y}\\
\hat{z}
\end{array}\right).
$$

利用逆变换矩阵，我们可以得到在此标架下自旋分量和原先 $x,y,z$ 自旋分量的线性关系：

$$
\left(\begin{array}{c}
S^{x}\\
S^{y}\\
S^{z}
\end{array}\right)=\left(\begin{array}{ccc}
\cos\theta\cos\phi & -\sin\phi & \sin\theta\cos\phi\\
\cos\theta\sin\phi & \cos\phi & \sin\theta\sin\phi\\
-\sin\theta & 0 & \cos\theta
\end{array}\right)\left(\begin{array}{c}
S^{\theta}\\
S^{\phi}\\
S^{n}
\end{array}\right).
$$

根据自旋波的一般思路，我们在新标架下做 H-P 变换：

$$
\begin{eqnarray}
S^{\theta} & = & \frac{\sqrt{2S}}{2}\left(a+a^{\dagger}\right),\\
S^{\phi} & = & \frac{\sqrt{2S}}{2i}\left(a-a^{\dagger}\right),\\
S^{n} & = & S-a^{\dagger}a.
\end{eqnarray}
$$

这样，原先的每个自旋分量都可表示为

$$
S_{i,n}^{\alpha}=\sqrt{\frac{S}{2}}U_{n}^{\alpha}a_{i,n}+\sqrt{\frac{S}{2}}U_{n}^{\alpha*}a_{i,n}^{\dagger}+V_{n}^{\alpha}\left(S-a_{i,n}^{\dagger}a_{i,n}\right).
$$

其中 $\alpha=x,y,z$ 为自旋指标，系数 $U_{n}^{\alpha},V_{n}^{\alpha}$ 为

$$
\left(\begin{array}{c}
U^{x}\\
U^{y}\\
U^{z}
\end{array}\right)=\left(\begin{array}{c}
\cos\theta\cos\phi+i\sin\phi\\
\cos\theta\sin\phi-i\cos\phi\\
-\sin\theta
\end{array}\right),
$$

$$
\left(\begin{array}{c}
V^{x}\\
V^{y}\\
V^{z}
\end{array}\right)=\left(\begin{array}{c}
\sin\theta\cos\phi\\
\sin\theta\sin\phi\\
\cos\theta
\end{array}\right),
$$

分别代表垂直与基态自旋朝向的偏移和平行于自旋朝向的偏移。在以后的计算中我们会看到，在线性近似下，平行分量和垂直分量耦合为 $0$，同时平行分量包含许多高阶项。舍去这些高阶项会得到更简单的形式。


## 线性近似一般情形
我们只考虑自旋分量二次型耦合，其一般形式为：

$$
\hat{H}=\sum_{i,j}\sum_{n,m}\sum_{\alpha,\beta}S_{i,n}^{\alpha}H_{nm}^{\alpha\beta}\left(i-j\right)S_{j,m}^{\beta}.
$$

其中我们假设了平移不变形，且系数 $H_{nm}^{\alpha\beta}$ 为实数。我们最终要在大自旋极限下求解系统，我们因此对自旋算符做归一化：

$$
\frac{1}{\sqrt{S}}S_{i,n}^{\alpha}=\frac{1}{\sqrt{2}}U_{n}^{\alpha}a_{i,n}+\frac{1}{\sqrt{2}}U_{n}^{\alpha*}a_{i,n}^{\dagger}+V_{n}^{\alpha}\left(\sqrt{S}-\frac{a_{i,n}^{\dagger}a_{i,n}}{\sqrt{S}}\right).
$$

我们先做规定，以下推导中会不加说明地舍去高阶项、一次项和常数项。其中舍去一次项是因为我们总可以做算符平移吸收一次项，而磁振子和谐振子一样，真空能等于本征频率的一半，因此当求出频率后我们可以恢复出一次项。现在我们将耦合项展开。在大自旋极限下：

$$
\begin{eqnarray}
\frac{1}{S}S_{i,n}^{\alpha}S_{j,m}^{\beta} & = & \frac{1}{2}\left(U_{n}^{\alpha*}U_{m}^{\beta}a_{i,n}^{\dagger}a_{j,m}+U_{n}^{\alpha}U_{m}^{\beta*}a_{i,n}a_{j,m}^{\dagger}\right)\nonumber \\
 &  & +\frac{1}{2}\left(U_{n}^{\alpha*}U_{m}^{\beta*}a_{i,n}^{\dagger}a_{j,m}^{\dagger}+U_{n}^{\alpha}U_{m}^{\beta}a_{i,n}a_{j,m}\right)\nonumber \\
 &  & -V_{n}^{\alpha}V_{m}^{\beta}\left(a_{i,n}^{\dagger}a_{i,n}+a_{j,m}^{\dagger}a_{j,m}\right).
\end{eqnarray}
$$

代入哈密顿量表达式，并利用厄米性:

$$
\begin{eqnarray}
\hat{H} & = & \sum_{ij,nm}A_{nm}\left(i-j\right)a_{i,n}^{\dagger}a_{j,m}\nonumber \\
 &  & +\frac{1}{2}\sum_{ij,nm}\left[B_{nm}\left(i-j\right)a_{i,n}^{\dagger}a_{j,m}^{\dagger}+h.c.\right]\nonumber \\
 &  & +2\sum_{i,n}C_{n}a_{i,n}^{\dagger}a_{i,n}
\end{eqnarray}
$$

其中：

$$
\begin{eqnarray}
A_{nm}\left(i-j\right) & = & \sum_{\alpha,\beta}U_{n}^{\alpha*}H_{nm}^{\alpha\beta}\left(i-j\right)U_{m}^{\beta}\\
B_{nm}\left(i-j\right) & = & \sum_{\alpha,\beta}U_{n}^{\alpha*}H_{nm}^{\alpha\beta}\left(i-j\right)U_{m}^{\beta*}\\
C_{n} & = & \sum_{\alpha,\beta}\sum_{d,m}V_{n}^{\alpha}H_{nm}^{\alpha\beta}\left(d\right)V_{m}^{\beta}\nonumber \\
 & = & \sum_{\alpha,\beta}\sum_{m}V_{n}^{\alpha}\tilde{H}_{nm}^{\alpha\beta}\left(0\right)V_{m}^{\beta}
\end{eqnarray}
$$

下面我们转向动量空间，首先对波色算符做傅立叶变换：

$$
\begin{eqnarray}
a_{i,n} & = & \frac{1}{\sqrt{L}}\sum_{k}e^{+ik\cdot r_{i}}a_{k,n}\\
a_{i,n}^{\dagger} & = & \frac{1}{\sqrt{L}}\sum_{k}e^{-ik\cdot r_{i}}a_{k,n}^{\dagger}
\end{eqnarray}
$$

其中 $L$ 是晶格数量。对系数做傅立叶变换后得到：

$$
\begin{eqnarray}
\sum_{n,m}\sum_{i,j}A_{nm}\left(i-j\right)a_{i,n}^{\dagger}a_{j,m} & = & \frac{1}{L}\sum_{n,m}\sum_{k,k',i,j}e^{-ik\cdot r_{i}+ik'\cdot r_{j}}A_{nm}\left(i-j\right)a_{k,n}^{\dagger}a_{k',m}\nonumber \\
 & = & \frac{1}{L}\sum_{n,m}\sum_{k,k',d,j}e^{-i\left(k-k'\right)\cdot r_{j}}e^{-ik\cdot d}A_{nm}\left(d\right)a_{k,n}^{\dagger}a_{k',m}\nonumber \\
 & = & \sum_{\alpha,\beta,n,m}\sum_{k,k',d,j}\delta_{kk'}e^{-ik\cdot d}A_{nm}\left(d\right)a_{k,n}^{\dagger}a_{k',m}\nonumber \\
 & = & \sum_{k}\sum_{n,m}A_{nm}\left(k\right)a_{k,n}^{\dagger}a_{k,m},
\end{eqnarray}
$$

$$
\begin{eqnarray}
\sum_{n,m}\sum_{i,j}B_{nm}\left(i-j\right)a_{i,n}^{\dagger}a_{j,m}^{\dagger} & = & \frac{1}{L}\sum_{n,m}\sum_{k,k',i,j}e^{-ik\cdot r_{i}-ik'\cdot r_{j}}B_{nm}\left(i-j\right)a_{k,n}^{\dagger}a_{k',m}^{\dagger}\nonumber \\
 & = & \frac{1}{L}\sum_{n,m}\sum_{k,k',d,j}e^{-i\left(k+k'\right)\cdot r_{j}}e^{-ik\cdot d}B_{nm}\left(d\right)a_{k,n}^{\dagger}a_{k',m}^{\dagger}\nonumber \\
 & = & \sum_{k}\sum_{n,m}B_{nm}\left(k\right)a_{k,n}^{\dagger}a_{-k,m}^{\dagger},
\end{eqnarray}
$$

$$
\sum_{n}\sum_{i}C_{n}a_{i,n}^{\dagger}a_{i,n}=\sum_{k}\sum_{n}C_{n}a_{k,n}^{\dagger}a_{k,n}.
$$

注意系数的傅立叶变换归一化和算符稍有不同：

$$
\begin{eqnarray}
A_{nm}\left(k\right) & = & \sum_{\alpha,\beta}U_{n}^{\alpha*}\left[\sum_{d}e^{-ik\cdot d}H_{nm}^{\alpha\beta}\left(d\right)\right]U_{m}^{\beta}\\
B_{nm}\left(k\right) & = & \sum_{\alpha,\beta}U_{n}^{\alpha*}\left[\sum_{d}e^{-ik\cdot d}H_{nm}^{\alpha\beta}\left(d\right)\right]U_{m}^{\beta*}
\end{eqnarray}
$$

现在，我们希望将二次型哈密顿量写为标准形式：

$$
\hat{H}=\sum_{k}\phi_{k}^{\dagger}H_{k}\phi_{k}.
$$

其中

$$
\phi_{k}=\left(a_{k,1},\cdots,a_{k,N},a_{-k,1}^{\dagger},\cdots,a_{-k,N}^{\dagger}\right)^{T}
$$

利用关系：

$$
\begin{eqnarray}
\sum_{k}\sum_{nm}A_{nm}\left(k\right)a_{k,n}^{\dagger}a_{k,m} & = & \sum_{k}\sum_{nm}A_{mn}^{T}\left(k\right)a_{k,m}a_{k,n}^{\dagger}+const.\nonumber \\
 & = & \sum_{k}\sum_{nm}A_{nm}^{*}\left(k\right)a_{k,n}a_{k,m}^{\dagger}+const.\nonumber \\
 & = & \sum_{k}\sum_{nm}A_{nm}^{*}\left(-k\right)a_{-k,n}a_{-k,m}^{\dagger}+const.
\end{eqnarray}
$$

$$
\sum_{k}\sum_{n}C_{n}a_{k,n}^{\dagger}a_{k,n}=\sum_{k}\sum_{n}C_{n}a_{k,n}a_{k,n}^{\dagger}+const.
$$

哈密顿量可写为：

$$
H_{k}=\phi_{k}^{\dagger}\left(\begin{array}{cc}
\frac{1}{2}A\left(k\right)-C & \frac{1}{2}B\left(k\right)\\
\frac{1}{2}B^{\dagger}\left(k\right) & \frac{1}{2}A^{*}\left(-k\right)-C
\end{array}\right)\phi_{k}.
$$

为方便数值计算，我们这里明确写下哈密顿矩阵矩阵元的具体表达式：

$$
H_{k}=\left(\begin{array}{cc}
H_{11}^{(k)} & H_{12}^{(k)}\\
H_{21}^{(k)} & H_{22}^{(k)}
\end{array}\right)
$$

$$
\begin{eqnarray}
\left(H_{11}^{(k)}\right)_{nm} & = & \frac{1}{2}\sum_{\alpha,\beta}\sum_{d}e^{-ik\cdot d}U_{n}^{\alpha*}H_{nm}^{\alpha\beta}\left(d\right)U_{m}^{\beta}-\delta_{nm}\sum_{\alpha,\beta}\sum_{l,d}V_{n}^{\alpha}H_{nl}^{\alpha\beta}\left(d\right)V_{l}^{\beta}\\
\left(H_{12}^{(k)}\right)_{nm} & = & \frac{1}{2}\sum_{\alpha,\beta}\sum_{d}e^{-ik\cdot d}U_{n}^{\alpha*}H_{nm}^{\alpha\beta}\left(d\right)U_{m}^{\beta*}\\
\left(H_{21}^{(k)}\right)_{nm} & = & \frac{1}{2}\sum_{\alpha,\beta}\sum_{d}e^{-ik\cdot d}U_{n}^{\alpha}H_{nm}^{\alpha\beta}\left(d\right)U_{m}^{\beta}\\
\left(H_{22}^{(k)}\right)_{nm} & = & \frac{1}{2}\sum_{\alpha,\beta}\sum_{d}e^{-ik\cdot d}U_{n}^{\alpha}H_{nm}^{\alpha\beta}\left(d\right)U_{m}^{\beta*}-\delta_{nm}\sum_{\alpha,\beta}\sum_{l,d}V_{n}^{\alpha}H_{nl}^{\alpha\beta}\left(d\right)V_{l}^{\beta}
\end{eqnarray}
$$


## 波色情形 Bogoliubov 变换
本节给出对角化一般波色二次型的方法。动量空间里波色二次型一般形式写为：

$$
\hat{H}_{k}=\phi_{k}^{\dagger}H_{k}\phi_{k}.
$$

其中

$$
\phi_{k}=\left(a_{k,1},\cdots,a_{k,N},a_{-k,1}^{\dagger},\cdots,a_{-k,N}^{\dagger}\right)^{T}
$$

当我们对角化一个波色二次型，我们实际上再寻找这样一个矩阵 $T$，满足：

$$
\phi_{k}=T_{k}\psi_{k}
$$


$$
\hat{H}_{k}=\phi_{k}^{\dagger}H_{k}\phi_{k}=\psi_{k}^{\dagger}\left(T_{k}^{\dagger}H_{k}T_{k}\right)\psi_{k}
$$

对角化要求

$$
D_{k}:=T_{k}^{\dagger}H_{k}T_{k}=diag\left(\omega_{1},\cdots,\omega_{2N}\right).
$$

同时要求这个变换 $T$ 不改变波色对易关系：

$$
\left[\phi,\phi^{\dagger}\right]=I_{-}=T\left[\psi,\psi^{\dagger}\right]T^{\dagger}=TI_{-}T^{\dagger},
$$

其中

$$
I_{-}:=\left(\begin{array}{cc}
1 & 0\\
0 & -1
\end{array}\right).
$$

即要求

$$
TI_{-}T^{\dagger}=I_{-}.
$$

和一般矩阵对角化不同，因为对易关系的限制，我们不能直接用对角化厄米矩阵的方法对角化此哈密顿矩阵。参考文献中严格讨论了一般情况的二次型对角化方法，我们在此不做严格推导，只大致列出思路。

为对角化哈密顿量，首先考虑算符的运动方程：

$$
i\partial_{t}\phi_{k}=\left[\phi_{k},\hat{H}_{k}\right]=\left(I_{-}H_{k}\right)\phi_{k}
$$

同时考虑到

$$
\begin{eqnarray}
i\partial_{t}\psi_{k} & = & T_{k}^{-1}i\partial_{t}\phi_{k}\nonumber \\
 & = & T_{k}^{-1}\left(I_{-}H_{k}\right)\phi_{k}\nonumber \\
 & = & T_{k}^{-1}\left(I_{-}H_{k}\right)T_{k}\psi_{k}
\end{eqnarray}
$$

我们按一般矩阵对角化方法对角化矩阵 $I_{-}H_{k}$:

$$
T_{k}^{-1}\left(I_{-}H_{k}\right)T_{k}=\tilde{D}_{k}=diag(\tilde{\omega}_{1},\cdots,\tilde{\omega}_{2N}).
$$

可以证明，对角化后的本征值必为实数，我们可以由小到大排列本征值：

$$
\tilde{D}_{k}=diag(-\omega_{n}^{h},\cdots,-\omega_{1}^{h},\omega_{1}^{p},\cdots,\omega_{n}^{p}).
$$

其中 $\omega_{i}^{h},\omega_{j}^{p}$ 分别是空穴，粒子的能谱，能谱正频部分就给出 $k$ 动量的粒子能谱，此时空穴能谱等于 $-k$ 动量的粒子能谱(系统有粒子-空穴对称性)。

## References

1. Uma Bhaumik, A Taraphder, *A study of long-range order in certain two-dimensional frustrated lattices*, [arXiv:1402.6069](https://arxiv.org/abs/1402.6069).
2. S Toth, B Lake, *Linear spin wave theory for single-Q incommensurate magnetic structures*, [arXiv:1402.6069](https://arxiv.org/abs/1402.6069).
3. Ming-wen Xiao, *Theory of transformation for the diagonalization of quadratic Hamiltonians*, [arXiv:0908.0787](https://arxiv.org/abs/0908.0787).

