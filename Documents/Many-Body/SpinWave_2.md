# 自旋波:动力学关联函数

我们详细讨论过线性自旋波理论的能谱计算。线性自旋波理论的基本逻辑是：

1. 找到自旋的经典基态；
2. 考虑经典基态的量子涨落，将自旋算符变换为 Holstein-Primakoff 波色子；
3. 得到最低阶的二次型波色哈密顿量，并用波色对角化技术求解能谱。

到目前为止，我们只考虑波色哈密顿量的能谱。但此哈密顿量本征值同样包含信息，其中非常重要的是关联函数。

## 动力学自旋关联函数
自旋关联函数定义为：

$$
S^{\alpha\beta}\left(R_{i}-R_{j},t_{1}-t_{2}\right)=\left\langle S^{\alpha}\left(R_{i},t_{1}\right)S^{\beta}\left(R_{j},t_{2}\right)\right\rangle 
$$

对坐标空间做傅立叶变换，得到动量空间的关联函数：

$$
\begin{eqnarray}
S^{\alpha\beta}\left(q,t\right) & = & \sum_{d}e^{iq\cdot d}S^{\alpha\beta}\left(d,t\right)\nonumber \\
 & = & \frac{1}{L}\sum_{i,j}\left\langle e^{iq\cdot R_{i}}S^{\alpha}\left(R_{i}\right)e^{-ik\cdot R_{j}}S^{\beta}\left(R_{j},t\right)\right\rangle \nonumber \\
 & = & \left\langle S^{\alpha}\left(-q\right)S^{\beta}\left(q,t\right)\right\rangle .
\end{eqnarray}
$$

下面具体写出自旋算符的傅立叶分量。对于有子晶格的系统，格点坐标可以表达为：

$$
R_{i,n}=r_{i}+t_{n}.
$$

其中 $r_{i}$ 是晶格坐标，$t_{n}$ 是子晶格相对坐标。把子晶格混起来一起做傅立叶变换：

$$
\begin{eqnarray}
S^{\alpha}\left(q,t\right) & = & \frac{1}{\sqrt{LN}}\sum_{i,n}e^{-iq\cdot R_{i,n}}S^{\alpha}\left(R_{i,n},t\right)\nonumber \\
 & = & \frac{1}{\sqrt{N}}\sum_{n}e^{-iq\cdot t_{n}}\frac{1}{\sqrt{L}}\sum_{i}e^{-iq\cdot r_{i}}S_{i,n}^{\alpha}\left(r_{i},t\right)\nonumber \\
 & = & \frac{1}{\sqrt{N}}\sum_{n}e^{-iq\cdot t_{n}}S_{n}^{\alpha}\left(q,t\right).
\end{eqnarray}
$$

我们已经将自旋算符表达为波色算符形式。注意在线性理论中，横向和纵向的自旋波互相不耦合，在最低阶近似下，只有横向分量对动力学关联有贡献。为表达方便，我们只保留横向部分，将自旋算符写为：

$$
S_{n}^{\alpha}\left(r_{i},t\right)\rightarrow\frac{1}{\sqrt{2}}U_{n}^{\alpha}a_{n}\left(r_{i},t\right)+\frac{1}{\sqrt{2}}U_{n}^{\alpha*}a_{n}^{\dagger}\left(r_{i},t\right).
$$

其傅立叶变换表达式为：

$$
S_{n}^{\alpha}\left(q,t\right)\rightarrow\frac{1}{\sqrt{2}}U_{n}^{\alpha}a_{n}\left(q,t\right)+\frac{1}{\sqrt{2}}U_{n}^{\alpha*}a_{n}^{\dagger}\left(-q,t\right).
$$

这样，我们可以将自旋关联表达成求波色算符的关联函数：

$$
\begin{eqnarray}
S^{\alpha\beta}\left(q,t\right) & = & \frac{1}{N}\sum_{n,m}e^{-iq\cdot\left(t_{n}-t_{m}\right)}\left\langle S_{n}^{\alpha}\left(q\right)S_{m}^{\beta}\left(-q,t\right)\right\rangle \nonumber \\
 & = & \frac{1}{2N}\sum_{n,m}e^{-iq\cdot\left(t_{n}-t_{m}\right)}\left\langle \left(a_{n}^{\dagger}\left(q\right),a_{n}\left(-q\right)\right)\left(\begin{array}{cc}
U_{n}^{\alpha*}U_{m}^{\beta} & U_{n}^{\alpha*}U_{m}^{\beta*}\\
U_{n}^{\alpha}U_{m}^{\beta} & U_{n}^{\alpha}U_{m}^{\beta*}
\end{array}\right)\left(\begin{array}{c}
a_{m}\left(q,t\right)\\
a_{m}^{\dagger}\left(-q,t\right)
\end{array}\right)\right\rangle 
\end{eqnarray}
$$

引入多分量场

$$
\phi\left(q,t\right)=\left(a_{1}\left(q,t\right),\cdots,a_{N}\left(q,t\right),a_{1}^{\dagger}\left(-q,t\right),\cdots,a_{N}^{\dagger}\left(-q,t\right)\right)^{T}.
$$

关联函数可表达成紧凑的形式

$$
S^{\alpha\beta}\left(q,t\right)=\frac{1}{2N}\left\langle \phi^{\dagger}\left(q\right)\left(\begin{array}{cc}
W_{11}^{\alpha\beta} & W_{12}^{\alpha\beta}\\
W_{21}^{\alpha\beta} & W_{22}^{\alpha\beta}
\end{array}\right)\phi\left(q,t\right)\right\rangle 
$$

其中我们可以显式写下 $W$ 的矩阵元：

$$
\begin{eqnarray}
\left(W_{11}^{\alpha\beta}\right)_{nm} & = & e^{-iq\cdot\left(t_{n}-t_{m}\right)}U_{n}^{\alpha*}U_{m}^{\beta}\\
\left(W_{12}^{\alpha\beta}\right)_{nm} & = & e^{-iq\cdot\left(t_{n}-t_{m}\right)}U_{n}^{\alpha*}U_{m}^{\beta*}\\
\left(W_{21}^{\alpha\beta}\right)_{nm} & = & e^{-iq\cdot\left(t_{n}-t_{m}\right)}U_{n}^{\alpha}U_{m}^{\beta}\\
\left(W_{22}^{\alpha\beta}\right)_{nm} & = & e^{-iq\cdot\left(t_{n}-t_{m}\right)}U_{n}^{\alpha}U_{m}^{\beta*}
\end{eqnarray}
$$

要继续化简上式，我们需要用一算符的正则变换使哈密顿量对角化：

$$
\phi\left(q,t\right)=T_{q}\psi\left(q,t\right)
$$

这样最终关联函数写为：

$$
S^{\alpha\beta}\left(q,t\right)=\frac{1}{2N}\sum_{n}\left(T_{q}^{\dagger}W_{q}^{\alpha\beta}T_{q}\right)_{nn}\left\langle \psi_{n}^{\dagger}\left(q\right)\psi_{n}\left(q,t\right)\right\rangle 
$$

其频域空间的分量为：

$$
\begin{eqnarray}
S^{\alpha\beta}\left(q,\omega\right) & = & \int\frac{dt}{2\pi}e^{-i\omega t}S^{\alpha\beta}\left(q,t\right)\nonumber \\
 & = & \frac{i}{2N}\sum_{n}\left(T_{q}^{\dagger}W_{q}^{\alpha\beta}T_{q}\right)_{nn}G_{n}^{R}\left(q,-\omega\right)
\end{eqnarray}
$$


## 波色二次型标准本征态矩阵
上一节中我们给出了一般波色二次型能谱的一般解法。对于能谱问题，我们只需将哈密顿量稍加修改变为动力学矩阵，再将其对角化就可以得到能谱。然而对角化动力学矩阵得到的本征向量未必是满足要求的本征模式。我们在这里给出一个数值上稳定的对角化方法。

首先，对于哈密顿矩阵 $H$，我们对其进行 Cholesky 分解：

$$
H=K^{\dagger}K
$$

这实际上类似于矩阵“开平方”，对于一个正定的厄米矩阵，这样的分解总是存在的，一般的矩阵数值库中也都有此分解方法。接着，利用分解后的矩阵 $K$，构造新的厄米矩阵 $KI_{-}K^{\dagger}$，并对角化之：

$$
KI_{-}K^{\dagger}\rightarrow\tilde{D}=U^{\dagger}KI_{-}K^{\dagger}U
$$

我们可以通过排列本征向量使 $\tilde{D}$ 前 $N$ 个本征值为正，后 $N$ 个本征值为负，此哈密顿量的谱为：

$$
D=I_{-}\tilde{D}
$$

而我们要求的 $T$ 矩阵为

$$
T=K^{-1}U\sqrt{D}
$$

注意这些操作我们都是对厄米矩阵做的，数值稳定性更高。我们下面证明这样得到的 $T$ 矩阵的确满足要求，首先，$T$ 需对角化矩阵 $H$：

$$
T^{\dagger}HT=D
$$

直接验证：

$$
\begin{eqnarray}
T^{\dagger}HT & = & \sqrt{D}U^{\dagger}\left(K^{\dagger}\right)^{-1}HK^{-1}U\sqrt{D}\nonumber \\
 & = & \sqrt{D}U^{\dagger}\left(K^{\dagger}\right)^{-1}K^{\dagger}KK^{-1}U\sqrt{D}\nonumber \\
 & = & \sqrt{D}U^{\dagger}U\sqrt{D}\nonumber \\
 & = & D
\end{eqnarray}
$$

即 $T$ 的确对角化原来的矩阵 $H$，其次，波色对易关系要求：

$$
TI_{-}T^{\dagger}=I_{-}.
$$


$$
I_{-}=\left(\begin{array}{cc}
1_{N\times N} & 0\\
0 & -1_{N\times N}
\end{array}\right).
$$

验证：

$$
\begin{eqnarray}
TI_{-}T^{\dagger} & = & K^{-1}U\sqrt{D}I_{-}\sqrt{D}U^{\dagger}\left(K^{\dagger}\right)^{-1}\nonumber \\
 & = & K^{-1}UI_{-}DU^{\dagger}\left(K^{\dagger}\right)^{-1}\nonumber \\
 & = & K^{-1}U\tilde{D}U^{\dagger}\left(K^{\dagger}\right)^{-1}\nonumber \\
 & = & K^{-1}UU^{\dagger}KI_{-}K^{\dagger}UU^{\dagger}\left(K^{\dagger}\right)^{-1}\nonumber \\
 & = & I_{-}
\end{eqnarray}
$$


## 关联函数
剩下我们只需要考虑算符 $\psi\left(k,t\right)$ 的关联函数，作为已对角化的无相互作用哈密顿量的场算符，$\psi\left(k,t\right)$
的关联函数是比较平庸的。 我们这里只考虑零温推迟格林函数，有限温度情形是类似的。

$$
\left\langle 0\right|a_{n}\left(q,t\right)a_{n}^{\dagger}\left(a\right)\left|0\right\rangle =e^{-i\omega_{n}t}
$$

对于场量 $\psi_{n}$,我们需要讨论下标 n，当 $n\le N$ 时：

$$
\begin{eqnarray}
iG_{n}^{R}\left(q,t\right) & = & \theta\left(t\right)\left\langle 0\right|\left[\psi_{n}^{\dagger}\left(q\right),\psi_{n}\left(q,t\right)\right]\left|0\right\rangle \nonumber \\
 & = & -\theta\left(t\right)\left\langle 0\right|a_{n}\left(q,t\right)a_{n}^{\dagger}\left(q\right)\left|0\right\rangle \nonumber \\
 & = & -i\int\frac{d\omega}{2\pi}\frac{e^{-i\omega t}}{\omega+i\eta}e^{-i\omega_{q,n}t}\nonumber \\
 & = & -i\int\frac{d\omega}{2\pi}e^{-i\omega t}\frac{1}{\omega-\omega_{q,n}+i\eta}.
\end{eqnarray}
$$

当 $n>N$ 时：

$$
\begin{eqnarray}
iG_{n}^{R}\left(q,t\right) & = & \theta\left(t\right)\left\langle 0\right|\left[\psi_{n}^{\dagger}\left(q\right),\psi_{n}\left(q,t\right)\right]\left|0\right\rangle \nonumber \\
 & = & \theta\left(t\right)\left\langle 0\right|a_{n}\left(-q\right)a_{n}^{\dagger}\left(-q,t\right)\left|0\right\rangle \nonumber \\
 & = & i\int\frac{d\omega}{2\pi}\frac{e^{-i\omega t}}{\omega+i\eta}e^{+i\omega_{q,n}t}\nonumber \\
 & = & i\int\frac{d\omega}{2\pi}e^{-i\omega t}\frac{1}{\omega+\omega_{q,n}+i\eta}.
\end{eqnarray}
$$

因此：

$$
iG_{n}^{R}\left(q,\omega\right)=\begin{cases}
\frac{-i}{\omega-\omega_{q,n}+i\eta} & n\le N\\
\frac{i}{\omega+\omega_{q,n}+i\eta} & n>N
\end{cases}
$$
