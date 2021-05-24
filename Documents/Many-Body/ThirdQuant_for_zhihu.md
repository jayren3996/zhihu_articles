# Lindblad 方程的三次量子化

本文我们讨论一类特殊的(费米子) Linblad 方程的求解手续。其形式为


<img src="https://www.zhihu.com/equation?tex=\frac{d \rho}{dt} = -i[H,\rho] + \sum_\mu \left(2L_\mu \rho L_\mu^\dagger - \{L_\mu^\dagger L_\mu, \rho\}\right),
" alt="\frac{d \rho}{dt} = -i[H,\rho] + \sum_\mu \left(2L_\mu \rho L_\mu^\dagger - \{L_\mu^\dagger L_\mu, \rho\}\right),
" class="ee_img tr_noresize" eeimg="1">

其中哈密顿量部分为费米子二次型，为了后文的方便，我们将其写为 Majorana 算符二次型：


<img src="https://www.zhihu.com/equation?tex=H = \sum_{ij} \omega_i H_{ij} \omega_j.
" alt="H = \sum_{ij} \omega_i H_{ij} \omega_j.
" class="ee_img tr_noresize" eeimg="1">

其中对于  <img src="https://www.zhihu.com/equation?tex=N" alt="N" class="ee_img tr_noresize" eeimg="1">  费米子系统，可定义  <img src="https://www.zhihu.com/equation?tex=2N" alt="2N" class="ee_img tr_noresize" eeimg="1">  个 Majorana 算符，其默认标号为


<img src="https://www.zhihu.com/equation?tex=\vec \omega = (\omega_1^A,\omega_1^B,\cdots,\omega_N^A, \omega_N^B)^T.
" alt="\vec \omega = (\omega_1^A,\omega_1^B,\cdots,\omega_N^A, \omega_N^B)^T.
" class="ee_img tr_noresize" eeimg="1">

算符  <img src="https://www.zhihu.com/equation?tex=L_\mu" alt="L_\mu" class="ee_img tr_noresize" eeimg="1">  被设为费米子线性型，一般形式为：


<img src="https://www.zhihu.com/equation?tex=L_\mu = \sum_i l_{\mu i} \omega_i.
" alt="L_\mu = \sum_i l_{\mu i} \omega_i.
" class="ee_img tr_noresize" eeimg="1">

下文中我们将要说明，具有上述形式的 Lindblad 方程可以像单粒子模型一样求解，将此 Lindblad 方程转化为单粒子问题的手续类似于二次量子化的手续，因此被称为“三次量子化”。

## 密度算符空间的 Fock 基底

回忆在二次量子化过程中，我们在多体希尔伯特空间找了一组 Fock 基底，并在其上定义了满足正则对易关系的粒子产生湮灭算符，从而将哈密顿量用这组算符表达了出来。在 Lindblad 方程意义下，我们需要做类似的手续，不同的是此时我们考虑的空间不是希尔伯特空间，而是密度算符所处的算符空间。因此我们首先要给密度算符选一组合适的基底。

这样的基底被我们选为：


<img src="https://www.zhihu.com/equation?tex=|\alpha_1,\alpha_2,\cdots,\alpha_{2N-1},\alpha_{2N}\rangle := P_{\vec \alpha} = \omega_1^{\alpha_1} \omega_2^{\alpha_2}\cdots \omega_{2N}^{\alpha_{2N}}.
" alt="|\alpha_1,\alpha_2,\cdots,\alpha_{2N-1},\alpha_{2N}\rangle := P_{\vec \alpha} = \omega_1^{\alpha_1} \omega_2^{\alpha_2}\cdots \omega_{2N}^{\alpha_{2N}}.
" class="ee_img tr_noresize" eeimg="1">

内积定义为：


<img src="https://www.zhihu.com/equation?tex=\langle \vec\alpha | \vec \beta \rangle = \frac{1}{4^N} Tr[P_{\alpha}^\dagger P_{\beta}].
" alt="\langle \vec\alpha | \vec \beta \rangle = \frac{1}{4^N} Tr[P_{\alpha}^\dagger P_{\beta}].
" class="ee_img tr_noresize" eeimg="1">

容易验证，此时  <img src="https://www.zhihu.com/equation?tex=|\vec \alpha \rangle" alt="|\vec \alpha \rangle" class="ee_img tr_noresize" eeimg="1">  构成算符空间的正交完备基底。我们据此定义 Fock 空间的“粒子”产生湮灭算符：


<img src="https://www.zhihu.com/equation?tex=\hat c_j |\vec \alpha\rangle= \delta_{\alpha_j, 1} \omega_j P_{\vec \alpha},\ 
\hat c_j^\dagger |\vec \alpha\rangle= \delta_{\alpha_j, 0} \omega_j P_{\vec \alpha}.
" alt="\hat c_j |\vec \alpha\rangle= \delta_{\alpha_j, 1} \omega_j P_{\vec \alpha},\ 
\hat c_j^\dagger |\vec \alpha\rangle= \delta_{\alpha_j, 0} \omega_j P_{\vec \alpha}.
" class="ee_img tr_noresize" eeimg="1">

此定义和费米子二次量子化类似。接下来，我们要将 Lindblad 方程的刘维尔算子


<img src="https://www.zhihu.com/equation?tex=\mathcal{L}[\rho] = -i[H,\rho] + \sum_\mu \left(2L_\mu \rho L_\mu^\dagger - \{L_\mu^\dagger L_\mu, \rho\}\right)
" alt="\mathcal{L}[\rho] = -i[H,\rho] + \sum_\mu \left(2L_\mu \rho L_\mu^\dagger - \{L_\mu^\dagger L_\mu, \rho\}\right)
" class="ee_img tr_noresize" eeimg="1">

用产生湮灭算符表达出来。首先考虑密度矩阵右乘 Majorana 算符的效果：


<img src="https://www.zhihu.com/equation?tex=P_{\vec\alpha}\omega_j = (-1)^{|\vec \alpha|+\alpha_j} \omega_jP_{\vec \alpha}
" alt="P_{\vec\alpha}\omega_j = (-1)^{|\vec \alpha|+\alpha_j} \omega_jP_{\vec \alpha}
" class="ee_img tr_noresize" eeimg="1">

其中  <img src="https://www.zhihu.com/equation?tex=|\vec \alpha|" alt="|\vec \alpha|" class="ee_img tr_noresize" eeimg="1">  是密度矩阵的中 Majorana 算符数。Lindblad 方程不改变密度矩阵宇称，我们可以只考虑偶宇称，因此：


<img src="https://www.zhihu.com/equation?tex=\begin{eqnarray}
	\mathcal{L}[\rho] = \sum_{jk} \left[-i(1-(-1)^{\alpha_j+\alpha_k})H_{jk}-(1+(-1)^{\alpha_j+\alpha_k})M_{jk}^* +2(-1)^{\alpha_k}M_{jk}\right]\omega_j\omega_k |\vec\alpha\rangle,
\end{eqnarray}
" alt="\begin{eqnarray}
	\mathcal{L}[\rho] = \sum_{jk} \left[-i(1-(-1)^{\alpha_j+\alpha_k})H_{jk}-(1+(-1)^{\alpha_j+\alpha_k})M_{jk}^* +2(-1)^{\alpha_k}M_{jk}\right]\omega_j\omega_k |\vec\alpha\rangle,
\end{eqnarray}
" class="ee_img tr_noresize" eeimg="1">

其中(厄米)矩阵  <img src="https://www.zhihu.com/equation?tex=M" alt="M" class="ee_img tr_noresize" eeimg="1">  定义为：


<img src="https://www.zhihu.com/equation?tex=M_{jk} = \sum_{\mu} l_{\mu i} l_{\mu j}^*.
" alt="M_{jk} = \sum_{\mu} l_{\mu i} l_{\mu j}^*.
" class="ee_img tr_noresize" eeimg="1">

注意到


<img src="https://www.zhihu.com/equation?tex=\begin{eqnarray}
	\omega_j P_{\vec \alpha} &=& (\hat c_j^\dagger + \hat c_j)|\vec \alpha\rangle, \\
	(-1)^{\alpha_j}\omega_j P_{\vec \alpha} &=& (\hat c_j^\dagger-\hat c_j)|\vec \alpha\rangle.
\end{eqnarray}
" alt="\begin{eqnarray}
	\omega_j P_{\vec \alpha} &=& (\hat c_j^\dagger + \hat c_j)|\vec \alpha\rangle, \\
	(-1)^{\alpha_j}\omega_j P_{\vec \alpha} &=& (\hat c_j^\dagger-\hat c_j)|\vec \alpha\rangle.
\end{eqnarray}
" class="ee_img tr_noresize" eeimg="1">

因此，在“三次量子化”下，刘维尔算子被表达成了产生湮灭算符形式：


<img src="https://www.zhihu.com/equation?tex=\begin{eqnarray}
\hat{\mathcal L} &=& \sum_{jk}\left[(-iH_{jk}-M_{jk}^*)(\hat c_j^\dagger+\hat c_j)(\hat c_k^\dagger+\hat c_k) +(iH_{jk}-M_{jk}^*)(\hat c_j^\dagger-\hat c_j)(\hat c_k^\dagger-\hat c_k) +2M_{jk}(\hat c_j^\dagger+\hat c_j)(\hat c_k^\dagger-\hat c_k) \right] \\
&=& \sum_{jk}\left[(-2iH_{jk}-2M_{jk})\hat c_j^\dagger \hat c_k + (-2iH_{jk}+2M_{jk})\hat c_j \hat c_k^\dagger +4i \mathrm{Im}[M_{jk}]\hat c_j^\dagger \hat c_k^\dagger -4 \mathrm{Re}[M_{jk}]\hat c_j \hat c_k \right] \\
&=& \sum_{jk}\left[(-2iH_{jk}-2\mathrm{Re}[M_{jk}])\hat c_j^\dagger \hat c_k + (-2iH_{jk}+2\mathrm{Re}[M_{jk}])\hat c_j \hat c_k^\dagger +4i \mathrm{Im}[M_{jk}]\hat c_j^\dagger \hat c_k^\dagger \right] \\
&=:& \underline \Psi^\dagger \cdot A \cdot \underline \Psi - 2Tr[M],
\end{eqnarray}
" alt="\begin{eqnarray}
\hat{\mathcal L} &=& \sum_{jk}\left[(-iH_{jk}-M_{jk}^*)(\hat c_j^\dagger+\hat c_j)(\hat c_k^\dagger+\hat c_k) +(iH_{jk}-M_{jk}^*)(\hat c_j^\dagger-\hat c_j)(\hat c_k^\dagger-\hat c_k) +2M_{jk}(\hat c_j^\dagger+\hat c_j)(\hat c_k^\dagger-\hat c_k) \right] \\
&=& \sum_{jk}\left[(-2iH_{jk}-2M_{jk})\hat c_j^\dagger \hat c_k + (-2iH_{jk}+2M_{jk})\hat c_j \hat c_k^\dagger +4i \mathrm{Im}[M_{jk}]\hat c_j^\dagger \hat c_k^\dagger -4 \mathrm{Re}[M_{jk}]\hat c_j \hat c_k \right] \\
&=& \sum_{jk}\left[(-2iH_{jk}-2\mathrm{Re}[M_{jk}])\hat c_j^\dagger \hat c_k + (-2iH_{jk}+2\mathrm{Re}[M_{jk}])\hat c_j \hat c_k^\dagger +4i \mathrm{Im}[M_{jk}]\hat c_j^\dagger \hat c_k^\dagger \right] \\
&=:& \underline \Psi^\dagger \cdot A \cdot \underline \Psi - 2Tr[M],
\end{eqnarray}
" class="ee_img tr_noresize" eeimg="1">

其中第三步利用了矩阵  <img src="https://www.zhihu.com/equation?tex=M" alt="M" class="ee_img tr_noresize" eeimg="1">  的厄米性。最后我们将算符基底记作 Nambu 基


<img src="https://www.zhihu.com/equation?tex=\underline \Psi = (\hat c_1,\cdots,\hat c_{2N},\hat c_{1}^\dagger ,\cdots, \hat c_{2N}^\dagger).
" alt="\underline \Psi = (\hat c_1,\cdots,\hat c_{2N},\hat c_{1}^\dagger ,\cdots, \hat c_{2N}^\dagger).
" class="ee_img tr_noresize" eeimg="1">

矩阵  <img src="https://www.zhihu.com/equation?tex=A" alt="A" class="ee_img tr_noresize" eeimg="1">  为“单粒子”刘维尔算符矩阵：


<img src="https://www.zhihu.com/equation?tex=A = \left(\begin{array}{cc}
	-X^T & 4iM_I \\
	0 & X
\end{array}\right),
" alt="A = \left(\begin{array}{cc}
	-X^T & 4iM_I \\
	0 & X
\end{array}\right),
" class="ee_img tr_noresize" eeimg="1">

其中


<img src="https://www.zhihu.com/equation?tex=X = -2iH+ 2 \mathrm{Re}[M],\ M_I=\mathrm{Im}[M].
" alt="X = -2iH+ 2 \mathrm{Re}[M],\ M_I=\mathrm{Im}[M].
" class="ee_img tr_noresize" eeimg="1">

## 刘维尔算子的谱

我们现在考虑刘维尔算子的(单粒子)谱。与一般单粒子谱问题不同，刘维尔算子的矩阵形式是一个非厄米矩阵。首先考虑一个基变换将矩阵变为块对角的，即：


<img src="https://www.zhihu.com/equation?tex=A = W^{-1} 
\left(\begin{array}{cc}
	-X^T &  0 \\
	0 & X
\end{array}\right)
W,
" alt="A = W^{-1} 
\left(\begin{array}{cc}
	-X^T &  0 \\
	0 & X
\end{array}\right)
W,
" class="ee_img tr_noresize" eeimg="1">

其中


<img src="https://www.zhihu.com/equation?tex=W = \left(\begin{array}{cc}
	\mathbb I & -4iZ \\
	0 & \mathbb I
\end{array}\right),
" alt="W = \left(\begin{array}{cc}
	\mathbb I & -4iZ \\
	0 & \mathbb I
\end{array}\right),
" class="ee_img tr_noresize" eeimg="1">

而矩阵  <img src="https://www.zhihu.com/equation?tex=Z" alt="Z" class="ee_img tr_noresize" eeimg="1">  是连续李雅普诺夫方程


<img src="https://www.zhihu.com/equation?tex=X^T Z + ZX = M_I.
" alt="X^T Z + ZX = M_I.
" class="ee_img tr_noresize" eeimg="1">

的解。此时原来的 Nambu 基底变为了：


<img src="https://www.zhihu.com/equation?tex=\underline{\tilde{\Psi}}=W\cdot\underline{\Psi}
=\left(\begin{array}{c}
	\underline{\hat c} -4iZ \cdot \underline{\hat c}^\dagger \\
	\underline{\hat c}^\dagger
\end{array}\right)
=: \left(\begin{array}{c}
	\underline{\hat d} \\
	\underline{\hat d}'
\end{array}\right),
" alt="\underline{\tilde{\Psi}}=W\cdot\underline{\Psi}
=\left(\begin{array}{c}
	\underline{\hat c} -4iZ \cdot \underline{\hat c}^\dagger \\
	\underline{\hat c}^\dagger
\end{array}\right)
=: \left(\begin{array}{c}
	\underline{\hat d} \\
	\underline{\hat d}'
\end{array}\right),
" class="ee_img tr_noresize" eeimg="1">

其共轭基为：


<img src="https://www.zhihu.com/equation?tex=\underline{\tilde{\Psi}}' =  \underline{\tilde{\Psi}}^\dagger \cdot W^{-1} = \left(\begin{array}{cc}
\underline{\hat d}' & \underline{\hat d}
\end{array}\right).
" alt="\underline{\tilde{\Psi}}' =  \underline{\tilde{\Psi}}^\dagger \cdot W^{-1} = \left(\begin{array}{cc}
\underline{\hat d}' & \underline{\hat d}
\end{array}\right).
" class="ee_img tr_noresize" eeimg="1">

其中  <img src="https://www.zhihu.com/equation?tex=\hat d'_j, \hat d_k" alt="\hat d'_j, \hat d_k" class="ee_img tr_noresize" eeimg="1">  满足“准正则对易关系”：


<img src="https://www.zhihu.com/equation?tex=\{\hat d_j,\hat d_k\} = \{\hat d_j',\hat d_k'\} = 0,\ 
\{\hat d_j,\hat d_k'\}=\delta_{jk}.
" alt="\{\hat d_j,\hat d_k\} = \{\hat d_j',\hat d_k'\} = 0,\ 
\{\hat d_j,\hat d_k'\}=\delta_{jk}.
" class="ee_img tr_noresize" eeimg="1">

此时刘维尔算符化为：


<img src="https://www.zhihu.com/equation?tex=\hat{\mathcal L} = -2 \sum_{jk} X_{kj} \hat d_j' \hat d_k.
" alt="\hat{\mathcal L} = -2 \sum_{jk} X_{kj} \hat d_j' \hat d_k.
" class="ee_img tr_noresize" eeimg="1">

此时刘维尔算符的(单粒子)谱可由矩阵  <img src="https://www.zhihu.com/equation?tex=X" alt="X" class="ee_img tr_noresize" eeimg="1">  对角化得到(假设  <img src="https://www.zhihu.com/equation?tex=X" alt="X" class="ee_img tr_noresize" eeimg="1">  可对角化)：


<img src="https://www.zhihu.com/equation?tex=X_{kj} = \sum_{n} \beta_n V^{-1}_{kn} V_{nj}.
" alt="X_{kj} = \sum_{n} \beta_n V^{-1}_{kn} V_{nj}.
" class="ee_img tr_noresize" eeimg="1">

此时令


<img src="https://www.zhihu.com/equation?tex=\begin{eqnarray}
\hat b_n &=& \sum_j V_{jn}^{-1} \hat d_j, \\
\hat b_n' &=& \sum_j V_{nj} \hat d_j'.
\end{eqnarray}
" alt="\begin{eqnarray}
\hat b_n &=& \sum_j V_{jn}^{-1} \hat d_j, \\
\hat b_n' &=& \sum_j V_{nj} \hat d_j'.
\end{eqnarray}
" class="ee_img tr_noresize" eeimg="1">

这里的  <img src="https://www.zhihu.com/equation?tex=\hat b'_j, \hat b_k" alt="\hat b'_j, \hat b_k" class="ee_img tr_noresize" eeimg="1">  仍然满足准正则对易关系，刘维尔算符成为对角型：


<img src="https://www.zhihu.com/equation?tex=\hat{\mathcal L} = -2\sum_{n=1}^{2N}\beta_n \hat b_n' \hat b_n.
" alt="\hat{\mathcal L} = -2\sum_{n=1}^{2N}\beta_n \hat b_n' \hat b_n.
" class="ee_img tr_noresize" eeimg="1">

其(单粒子)谱为  <img src="https://www.zhihu.com/equation?tex=\{-2\beta_n\}" alt="\{-2\beta_n\}" class="ee_img tr_noresize" eeimg="1"> .

## 物理观测量的演化

三次量子化框架下密度算符 Fock 基的物理意义不明显，许多时候更有意义的是物理观测量。特别是对于单粒子问题，2 点关联函数完全确定了体系的所有性质，因此接下来我们考虑物理观测量的动力学，及其与刘维尔算子谱的关系。首先，利用关系


<img src="https://www.zhihu.com/equation?tex=\frac{d}{dt}\bar{O}(t) = Tr\left[O\frac{d\rho(t)}{dt}\right]
" alt="\frac{d}{dt}\bar{O}(t) = Tr\left[O\frac{d\rho(t)}{dt}\right]
" class="ee_img tr_noresize" eeimg="1">

将密度矩阵的演化转化为算符的演化，得到“海森堡表象”下的 Lindblad 方程：


<img src="https://www.zhihu.com/equation?tex=\frac{d}{dt} O(t) = i [H,O] + \sum_\mu\left[2L_\mu O L_\mu^\dagger -\{L_\mu^\dagger L_\mu, O\} \right].
" alt="\frac{d}{dt} O(t) = i [H,O] + \sum_\mu\left[2L_\mu O L_\mu^\dagger -\{L_\mu^\dagger L_\mu, O\} \right].
" class="ee_img tr_noresize" eeimg="1">

通过一适当组合，我们写下算符期望值的演化方程：


<img src="https://www.zhihu.com/equation?tex=\begin{eqnarray}
\frac{d}{dt}\langle O\rangle_t
	&=&
	i\langle[ H, O]\rangle_t 
	+ 2 \sum_\mu \langle L_\mu^\dagger[O, L_\mu] \rangle_t
	+ \sum_\mu \langle[L_\mu^\dagger L_\mu, O]\rangle_t \\
	&=&
	i\langle[H_{eff}, O]\rangle_t 
	- 2 \sum_\mu \langle L_\mu^\dagger[L_\mu, O] \rangle_t.
\end{eqnarray}
" alt="\begin{eqnarray}
\frac{d}{dt}\langle O\rangle_t
	&=&
	i\langle[ H, O]\rangle_t 
	+ 2 \sum_\mu \langle L_\mu^\dagger[O, L_\mu] \rangle_t
	+ \sum_\mu \langle[L_\mu^\dagger L_\mu, O]\rangle_t \\
	&=&
	i\langle[H_{eff}, O]\rangle_t 
	- 2 \sum_\mu \langle L_\mu^\dagger[L_\mu, O] \rangle_t.
\end{eqnarray}
" class="ee_img tr_noresize" eeimg="1">

其中


<img src="https://www.zhihu.com/equation?tex=H_{eff} = \sum_{ij} \omega_i (H - M_I) \omega_j
" alt="H_{eff} = \sum_{ij} \omega_i (H - M_I) \omega_j
" class="ee_img tr_noresize" eeimg="1">

我们接下来重点考虑 Majorana 二次项期望值


<img src="https://www.zhihu.com/equation?tex=O_{ij} = \langle \hat\omega_i \hat\omega_j \rangle.
" alt="O_{ij} = \langle \hat\omega_i \hat\omega_j \rangle.
" class="ee_img tr_noresize" eeimg="1">

的演化。首先注意到对易关系


<img src="https://www.zhihu.com/equation?tex=[\omega_i,\omega_j\omega_k] = 2\delta_{ij} \omega_k - 2\delta_{ik}\omega_j,
" alt="[\omega_i,\omega_j\omega_k] = 2\delta_{ij} \omega_k - 2\delta_{ik}\omega_j,
" class="ee_img tr_noresize" eeimg="1">

此关系将第一项变为


<img src="https://www.zhihu.com/equation?tex=\begin{eqnarray}
	\langle[H_{eff}, O_{ij}]\rangle_t 
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
" alt="\begin{eqnarray}
	\langle[H_{eff}, O_{ij}]\rangle_t 
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
" class="ee_img tr_noresize" eeimg="1">

而第二项变为：


<img src="https://www.zhihu.com/equation?tex=\begin{eqnarray}
	\sum_\mu \langle L_\mu^\dagger[L_\mu, O_{ij}] \rangle_t
	&=&
	\sum_{kl} M_{kl}^* \langle i\omega_k [\omega_l, \omega_i \omega_j] \rangle_t \\
	&=&
	\sum_{kl} 2 M_{kl}^* \langle 
		\delta_{li} \omega_k \omega_j - 
		\delta_{lj} \omega_k \omega_i
	\rangle_t \\
	&=& 2[M\cdot O(t)]_{ij} + 2[O(t)\cdot M^*]_{ij} - 4 M_{ij}^*.
	
\end{eqnarray}
" alt="\begin{eqnarray}
	\sum_\mu \langle L_\mu^\dagger[L_\mu, O_{ij}] \rangle_t
	&=&
	\sum_{kl} M_{kl}^* \langle i\omega_k [\omega_l, \omega_i \omega_j] \rangle_t \\
	&=&
	\sum_{kl} 2 M_{kl}^* \langle 
		\delta_{li} \omega_k \omega_j - 
		\delta_{lj} \omega_k \omega_i
	\rangle_t \\
	&=& 2[M\cdot O(t)]_{ij} + 2[O(t)\cdot M^*]_{ij} - 4 M_{ij}^*.
	
\end{eqnarray}
" class="ee_img tr_noresize" eeimg="1">

合并得到：


<img src="https://www.zhihu.com/equation?tex=\frac{d}{dt} O(t) = -2\left[X^T\cdot O(t) + O(t) \cdot X - 4M^* \right].
" alt="\frac{d}{dt} O(t) = -2\left[X^T\cdot O(t) + O(t) \cdot X - 4M^* \right].
" class="ee_img tr_noresize" eeimg="1">

由于  <img src="https://www.zhihu.com/equation?tex=X+X^T=2 \mathrm{Re}[M]" alt="X+X^T=2 \mathrm{Re}[M]" class="ee_img tr_noresize" eeimg="1"> ，我们可以定义 2 点关联函数：


<img src="https://www.zhihu.com/equation?tex=C_{ij} = iO_{ij}-i\delta_{ij}.
" alt="C_{ij} = iO_{ij}-i\delta_{ij}.
" class="ee_img tr_noresize" eeimg="1">

其动力学方程为：


<img src="https://www.zhihu.com/equation?tex=\frac{d}{dt} C(t) = -2 \left[ X^T \cdot C(t) + C(t) \cdot X -4M_I\right].
" alt="\frac{d}{dt} C(t) = -2 \left[ X^T \cdot C(t) + C(t) \cdot X -4M_I\right].
" class="ee_img tr_noresize" eeimg="1">

此前考虑刘维尔算子谱的时候，我们定义了矩阵  <img src="https://www.zhihu.com/equation?tex=Z" alt="Z" class="ee_img tr_noresize" eeimg="1">  满足连续李雅普诺夫方程  <img src="https://www.zhihu.com/equation?tex=X^T Z + ZX = M_I" alt="X^T Z + ZX = M_I" class="ee_img tr_noresize" eeimg="1"> ，由此我们直接得到稳态的关联函数：


<img src="https://www.zhihu.com/equation?tex=C^{s}_{ij} = 4Z_{ij}.
" alt="C^{s}_{ij} = 4Z_{ij}.
" class="ee_img tr_noresize" eeimg="1">

我们因此看到，虽然矩阵  <img src="https://www.zhihu.com/equation?tex=Z" alt="Z" class="ee_img tr_noresize" eeimg="1">  不对刘维尔谱造成影响，但其完全决定了物理量在稳态的期望值。总的演化因此可以表达为：


<img src="https://www.zhihu.com/equation?tex=\begin{eqnarray}
C(t) &=& 4Z + e^{-2X^Tt} (C_0-4Z) e^{-2Xt} \\
&=& 4Z + V^{-T} e^{-2\Delta^T t} V^T (C_0-4Z) V e^{-2\Delta t} V^{-1}.
\end{eqnarray}
" alt="\begin{eqnarray}
C(t) &=& 4Z + e^{-2X^Tt} (C_0-4Z) e^{-2Xt} \\
&=& 4Z + V^{-T} e^{-2\Delta^T t} V^T (C_0-4Z) V e^{-2\Delta t} V^{-1}.
\end{eqnarray}
" class="ee_img tr_noresize" eeimg="1">

即刘维尔算子谱的物理意义体现在从初态弛豫到稳态的速率。

我们也可以回过头看态的演化。对于单粒子问题，我们关心的态往往总是高斯态。一个高斯态可以方便地通过 Grassmann 数表示出来：


<img src="https://www.zhihu.com/equation?tex=\omega(\hat\rho,\theta) = \exp\left(\frac{i}{2} \sum_{ij} C_{ij} \theta_i\theta_j\right).
" alt="\omega(\hat\rho,\theta) = \exp\left(\frac{i}{2} \sum_{ij} C_{ij} \theta_i\theta_j\right).
" class="ee_img tr_noresize" eeimg="1">

这里的  <img src="https://www.zhihu.com/equation?tex=C_{ij}" alt="C_{ij}" class="ee_img tr_noresize" eeimg="1">  就是上述关联函数。因此，知道了关联函数的演化，高斯态的演化也就完全确定了：


<img src="https://www.zhihu.com/equation?tex=\omega(\hat\rho_t, \theta) = \exp\left(\frac{i}{2} \sum_{ij} C_{ij}(t) \theta_i\theta_j\right).
" alt="\omega(\hat\rho_t, \theta) = \exp\left(\frac{i}{2} \sum_{ij} C_{ij}(t) \theta_i\theta_j\right).
" class="ee_img tr_noresize" eeimg="1">

利用高斯态的性质，我们也可以方便地求出包括纠缠熵在内的其他物理量。
