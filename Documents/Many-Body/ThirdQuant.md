# Lindblad 方程的三次量子化

本文我们讨论一类特殊的(费米子) Linblad 方程的求解手续。其形式为
$$
\frac{d \rho}{dt} = -i[H,\rho] + \sum_\mu \left(2L_\mu \rho L_\mu^\dagger - \{L_\mu^\dagger L_\mu, \rho\}\right),
$$
其中哈密顿量部分为费米子二次型，为了后文的方便，我们将其写为 Majorana 算符二次型：
$$
H = \sum_{ij} \omega_i H_{ij} \omega_j.
$$
其中对于 $N$ 费米子系统，可定义 $2N$ 个 Majorana 算符，其默认标号为
$$
\vec \omega = (\omega_1^A,\omega_1^B,\cdots,\omega_N^A, \omega_N^B)^T.
$$
而算符 $L_\mu$ 在此被设为费米子线性型，一般形式为：
$$
L_\mu = \sum_i l_{\mu i} \omega_i.
$$

下文中我们将要说明，具有上述形式的 Lindblad 方程可以像单粒子模型一样求解，将此 Lindblad 方程转化为单粒子问题的手续类似于二次量子化的手续，因此被称为“三次量子化”。

## 密度算符空间的 Fock 基底

回忆在二次量子化过程中，我们在多体希尔伯特空间找了一组 Fock 基底，并在其上定义了满足正则对易关系的粒子产生湮灭算符，从而将哈密顿量用这组算符表达了出来。在 Lindblad 方程意义下，我们需要做类似的手续，不同的是此时我们考虑的空间不是希尔伯特空间，而是密度算符所处的算符空间。因此第一件事是给密度算符选一组合适的基底。

这样的基底被我们选为：
$$
|\alpha_1,\alpha_2,\cdots,\alpha_{2N-1},\alpha_{2N}\rangle := P_{\vec \alpha} = \omega_1^{\alpha_1} \omega_2^{\alpha_2}\cdots \omega_{2N}^{\alpha_{2N}}.
$$

内积定义为：
$$
\langle \vec\alpha | \vec \beta \rangle = \frac{1}{4^N} Tr[P_{\alpha}^\dagger P_{\beta}].
$$
容易验证，此时 $|\vec \alpha \rangle$ 构成算符空间的正交完备基底。

接下来，我们定义此 Fock 空间的“粒子”产生湮灭算符：
$$
\hat c_j |\vec \alpha\rangle= \delta_{\alpha_j, 1} \omega_j P_{\vec \alpha},\ 
\hat c_j^\dagger |\vec \alpha\rangle= \delta_{\alpha_j, 0} \omega_j P_{\vec \alpha}.
$$
此定义和费米子二次量子化类似。

接下来，我们要将 Lindblad 方程的刘维尔算子
$$
\mathcal{L}[\rho] = -i[H,\rho] + \sum_\mu \left(2L_\mu \rho L_\mu^\dagger - \{L_\mu^\dagger L_\mu, \rho\}\right)
$$
用产生湮灭算符表达出来。首先考虑与 $H$ 的对易子，注意到
$$
\begin{eqnarray}
\omega_j \omega_k P_{\vec \alpha} - P_{\vec \alpha}\omega_j \omega_k 
&=& 2(\delta_{\alpha_j,1}\delta_{\alpha_k,0}+\delta_{\alpha_j,0}\delta_{\alpha_k,1}) \omega_j \omega_k P_{\vec \alpha} \\
&=& 2 (\hat c_j \hat c_k^\dagger +\hat c_j^\dagger \hat c_k) P_{\vec \alpha} \\
&=& 2 (\hat c_j^\dagger \hat c_k-\hat c_k^\dagger \hat c_j) P_{\vec \alpha}.
\end{eqnarray}
$$


## 刘维尔算子的谱

我们重新组合得到一个形式上类似于 Majorana 的一组算符：
$$
\hat a_{j,1} := \frac{\hat c_j + \hat c_j^\dagger}{\sqrt 2},\ 
\hat a_{j,2} := i\frac{\hat c_j - \hat c_j^\dagger}{\sqrt{2}}.
$$
在此算符基下，刘维尔算子的矩阵形式为：
$$
\begin{eqnarray}
\mathcal A &=&
\left(
\begin{array}{cc}
	-2iH+2iM_I & 2iM \\
	-2iM^T & -2iH-2iM_I
\end{array}
\right) \\
&=& -2i\sigma^0\otimes H -2 \sigma^y \otimes M_R -2(\sigma^x-i\sigma^z)\otimes M_I.
\end{eqnarray}
$$
对其做一幺正变换：
$$
U = \frac{1}{\sqrt 2}
\left(\begin{array}{cc}
	\mathbb{1} &  -i \\
	1 & +i
\end{array}\right) \otimes \mathbb{I}_{2n},
$$
此幺正变换相当于轮换 Pauli 矩阵：
$$
\sigma^x \rightarrow \sigma^y, \sigma^y \rightarrow \sigma^z, \sigma^z \rightarrow \sigma^x.
$$
此时刘维尔矩阵变为：
$$
\begin{eqnarray}
\tilde{\mathcal A} &=& U \mathcal A U^\dagger \\
&=& -2i\sigma^0\otimes H -2 \sigma^z \otimes M_R +4i\sigma^+\otimes M_I\\
&=& \left(\begin{array}{cc}
	-X^T &  4iM_I \\
	0 & X
\end{array}\right),
\end{eqnarray}
$$
其中
$$
X=-2iH+2M_R.
$$
变换后的刘维尔矩阵 $\tilde{\mathcal A}$ 可继续化简为：
$$
\tilde{\mathcal A} = W^{-1} 
\left(\begin{array}{cc}
	-X^T &  0 \\
	0 & X
\end{array}\right)
W,
$$
其中
$$
W = \left(\begin{array}{cc}
	\mathbb I & -4iZ \\
	0 & \mathbb I
\end{array}\right),
$$
而矩阵 $Z$ 是连续李雅普诺夫方程
$$
X^T Z + ZX = M_I.
$$
的解。现在假设 $X$ 被化为了标准形式 (对角矩阵或 Jordan 标准型)： 
$$
X = P \Delta P^{-1}.
$$
我们可以将原来的刘维尔矩阵写为：
$$
\begin{eqnarray}
A &=& U^\dagger W^{-1}
\left(\begin{array}{cc}
	P^{-T} & 0 \\
	0 & P
\end{array}\right)
\left(\begin{array}{cc}
	-\Delta^T & 0 \\
	0 & \Delta
\end{array}\right)
\left(\begin{array}{cc}
	P^{T} & 0 \\
	0 & P^{-1}
\end{array}\right)
WU \\
&=& U^T J W^{-1} 
\left(\begin{array}{cc}
	P^{-T} & 0 \\
	0 & P
\end{array}\right)
\left(\begin{array}{cc}
	-\Delta^T & 0 \\
	0 & \Delta
\end{array}\right)
\left(\begin{array}{cc}
	P^{T} & 0 \\
	0 & P^{-1}
\end{array}\right)
WU \\
&=& U^T W^{T} 
\left(\begin{array}{cc}
	P & 0 \\
	0 & P^{-T}
\end{array}\right)
\left(\begin{array}{cc}
	0 & \Delta \\
	-\Delta^T & 0
\end{array}\right)
\left(\begin{array}{cc}
	P^{T} & 0 \\
	0 & P^{-1}
\end{array}\right)
WU \\
&=:& V^T 
\left(\begin{array}{cc}
	0 & \Delta \\
	-\Delta^T & 0
\end{array}\right)
V,
\end{eqnarray}
$$
其中
$$
V = 
\left(\begin{array}{cc}
	P^{T} & 0 \\
	0 & P^{-1}
\end{array}\right)
WU = \frac{1}{\sqrt 2}
\left(\begin{array}{cc}
	P^{T}-4i P^T Z & -i P^T +4 P^T Z \\
	P^{-1} & i P^{-1}
\end{array}\right).
$$
矩阵 $V$ 满足： $VV^T = J$. 这是我们可以定义刘维尔算符的本征模式：
$$
\hat b_i = \sum_j v_{ij} \hat a_j,\ 
\hat b_i' = \sum_j v'_{ij} \hat a_j,
$$
其中矩阵 $v,v'$ 分别是矩阵 $V$ 的前 $2N$ 行和后 $2N$ 行。这样定义的本征模式满足“正则对易关系”：
$$
\{\hat b_i,\hat b_j\} = \{\hat b_i',\hat b_j'\} = 0,\ 
\{\hat b_i,\hat b_j'\}=\delta_{ij}.
$$

## 非平衡稳态与观测量

现在考虑算符 $O$ 期望值的演化：
$$
\begin{eqnarray}
\frac{d}{dt}\langle \hat O\rangle_t
	&=&
	- iTr[\hat O (\hat H \hat\rho-\hat\rho \hat H)] 
	+ 2\sum_\mu Tr[\hat O \hat L_\mu^\dagger \hat\rho \hat L_\mu]
	- \sum_\mu Tr[\hat O \hat L_\mu^\dagger \hat L_\mu \hat\rho
	+ \hat O \hat\rho \hat L_\mu^\dagger \hat L_\mu] \\
	&=&
	i\langle[\hat H, \hat O]\rangle_t 
	+ 2 \sum_\mu \langle \hat L_\mu^\dagger[\hat O, \hat L_\mu] \rangle_t
	+ \sum_\mu \langle[\hat L_\mu^\dagger \hat L_\mu, \hat O]\rangle_t \\
	&=&
	i\langle[\hat H_{eff}, \hat O]\rangle_t 
	- 2 \sum_\mu \langle \hat L_\mu^\dagger[\hat L_\mu, \hat O] \rangle_t.
\end{eqnarray}
$$
其中
$$
\hat H_{eff} = \sum_{ij} \omega_i (H - M_I) \omega_j
$$
对于具有二次型的体系，所有关联信息由 2 点关联函数
$$
O_{ij} = \langle \hat\omega_i \hat\omega_j \rangle.
$$
给出，利用关系
$$
[\omega_i,\omega_j\omega_k] = 2\delta_{ij} \omega_k - 2\delta_{ik}\omega_j,
$$
第一项变为
$$
\begin{eqnarray}
	\langle[\hat H_{eff}, \hat O_{ij}]\rangle_t 
	&=&
	\sum_{kl} (H-M_{I})_{kl} \langle 
		\omega_k [\omega_l,\omega_i \omega_j] +
		[\omega_k,\omega_i,\omega_j] \omega_l 
	\rangle_t \\
	&=&
	\sum_{kl} 2(H-M_{I})_{kl} \langle 
		\delta_{li} \omega_k \omega_l - 
		\delta_{lj}\omega_k \omega_i +
		\delta_{ki} \omega_j \omega_l - 
		\delta_{kj}\omega_i \omega_l
	\rangle_t \\
	&=& -4[(H-M_I)\cdot O(t)]_{ij} + 4[O(t)\cdot(H-M_I)]_{ij}.
\end{eqnarray}
$$
第二项为：
$$
\begin{eqnarray}
	\sum_\mu \langle \hat L_\mu^\dagger[\hat L_\mu, \hat O_{ij}] \rangle_t
	&=&
	\sum_{kl} M_{kl}^* \langle i\omega_k [\omega_l, \omega_i \omega_j] \rangle_t \\
	&=&
	\sum_{kl} 2 M_{kl}^* \langle 
		\delta_{li} \omega_k \omega_j - 
		\delta_{lj} \omega_k \omega_i
	\rangle_t \\
	&=& 2[M\cdot O(t)]_{ij} + 2[O(t)\cdot M^*]_{ij} - 4 M_{ij}^*.
	
\end{eqnarray}
$$
合并得到：
$$
\frac{d}{dt} O(t) = -2\left[X^T\cdot C(t) + C(t) \cdot X - 4M^* \right].
$$
对于稳态， $\frac{d}{dt}O_{ij} = 0$，因此有：
$$
O_{ss} = -4iZ.
$$
于此同时，定义关联函数
$$
C_{ij} = iO_{ij}-i\delta_{ij}.
$$
其动力学方程为：
$$
\frac{d}{dt} C(t) = -2 \left[ X^T \cdot C(t) + C(t) \cdot X -4M_I\right].
$$
稳态的关联函数为：
$$
C_{ss} = 4Z
$$
总的演化因此可以表达为：
$$
\begin{eqnarray}
C(t) &=& 4Z + e^{-2X^Tt} (C_0-4Z) e^{-2Xt} \\
&=& 4Z + P^{-T} e^{-2\Delta^T t} P^T (C_0-4Z) P e^{-2\Delta t} P^{-1}.
\end{eqnarray}
$$

## 高斯态的非平衡演化

For quasi-free system, the density matrix can be expressed as Gaussian states. A neat way to deal with Gaussian state is by Grassman representation:
$$
\omega(\hat\rho,\theta) = \exp\left(\frac{i}{2} \sum_{ij} C_{ij} \theta_i\theta_j\right).
$$
In this way, the dynamics of the density matrix is exactly solved:
$$
\omega(\hat\rho_t, \theta) = \exp\left(\frac{i}{2} \sum_{ij} C_{ij}(t) \theta_i\theta_j\right).
$$

