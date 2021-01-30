# 路径积分 BCS 理论


## BCS 有效作用量


### 电-声相互作用

自由声子的哈密顿量为：

$$
	\hat H_{ph} = \sum_{\vec q, j} \omega_{\vec q}\hat a^\dagger_{\vec q, j} a_{\vec q, j} + \mathrm{const}.
$$

其中 $\omega_{\vec q}$ 是声子能量。声子是晶格振动的准粒子，与电子相互作用的微观机制是在电中性背景下由于晶格离开平衡位置产生局部电荷，从而对电子产生作用，即

$$
	\hat V_{el-ph} \simeq \gamma \int d^d r \hat\rho_e(\vec r) \hat\rho_{ind}(\vec r).
$$

其中 $\gamma$ 是耦合常数，$\hat\rho_r$ 是电子密度算符，$\hat \rho_{ind}$ 是晶格畸变产生的电荷，其大小正比于晶格振动坐标 $\vec u$ 的散度：

$$
	\rho_{ind} \simeq \nabla \cdot \vec u.
$$

量子化下的晶格简正坐标为：

$$
	\vec u 
	= \sum_{\vec q} \vec u_{\vec q} e^{i\vec q \cdot \vec r}
	=\vec e_j \frac{1}{\sqrt{2m\omega_q}} (a_{\vec q,j}+a_{-\vec q,j}^\dagger) e^{i\vec q \cdot \vec r}.
$$

求散度得到：

$$
	\nabla \cdot \vec u  
	= \sum_{\vec q,j} \frac{iq_j}{\sqrt{2m\omega_q}} (a_{\vec q,j}+a_{-\vec q,j}^\dagger) e^{i \vec q \cdot \vec r}. 
$$

电-声相互作用为：

$$
\begin{eqnarray}
	\hat V_{el-ph} 
	&=& \gamma \sum_{\vec q,j} \left[ \int d^d r \hat \rho_e(\vec r) e^{i\vec q\cdot \vec r} \right] \frac{iq_j}{\sqrt{2m\omega_q}} \left( \hat a_{\vec a,j}+\hat a^\dagger_{\vec q,j} \right) \nonumber \\
	&=& \gamma \sum_{\vec q,j} \frac{iq_j}{\sqrt{2m\omega_q}} \hat \rho_{e,\vec q} \left( \hat a_{\vec a,j}+\hat a^\dagger_{\vec q,j} \right).
\end{eqnarray}
$$

其中电子密度算符傅立叶变换具体为：

$$
	\hat \rho_{e,\vec q} 
	= \int d^d r \ \hat c^\dagger(\vec r) \hat c(\vec r)e^{i \vec q \cdot \vec r}
	= \frac{1}{L^d} \int d^d r \sum_{\vec k_1, \vec k_2} \hat c^\dagger_{\vec k_1} \hat c_{\vec k_2} e^{i (\vec q + \vec k_2 - \vec k_1)\cdot \vec r}
	= \sum_{\vec k} \hat c^\dagger_{\vec k+\vec q} \hat c_{\vec k}.
$$

### 电子-电子有效作用

考虑电-声相互作用后，电子-声子系统总配分函数为在路径积分下写为：

$$
	Z = \int D[\psi, \bar\psi ] 
		\int D[\phi, \bar\phi ] 
		\exp\left\{
			-S_{el}[\psi,\bar\psi ]
			-S_{ph}[\phi,\bar\phi ]
			-S_{el-ph}[\psi,\bar\psi,\phi,\bar\phi ] 
			\right\}.
$$

其中 $S_{ph},S_{el-ph}$ 分别为自由声子和电-声耦合作用量：

$$
\begin{eqnarray}
	S_{ph}[\phi,\bar\phi] 
	&=& \sum_{q,j} \bar\phi_{q,j}(-i\omega_n+\omega_q)\phi_{q,j}, \nonumber \\
	S_{el-ph}[\psi,\bar\psi,\phi,\bar\phi] 
	&=& \gamma \sum_{q,j} \frac{iq_j}{\sqrt{2m\omega_q}} \rho_q (\phi_{q,j}+\bar\phi_{-q,j}),
\end{eqnarray}
$$

其中 $\rho_q=\sum_k \bar\psi_{k+q}\psi_k$. 要得到电子直接通过电-声耦合产生的有效相互作用，需要将声子场积掉。注意自由声子和电-声耦合部分的作用量是二次型：

$$
	S_{ph}+S_{el-ph} 
	= \sum_{q,j} \left[ \bar\phi_{q,j}(-i\omega_n+\omega_q)\phi_{q,j} + \gamma \frac{iq_j}{\sqrt{2m\omega_q}} \rho_q (\phi_{q,j}+\bar\phi_{-q,j}) \right].
$$

将其配平方后，得到：

$$
	S_{ph}+S_{el-ph} 
	= \sum_{q,j} \left[ \bar\Phi_{q,j} (-i\omega_n+\omega_q) \Phi_{q,j}
	+ \frac{i\gamma^2 q_j^2}{2m\omega_q(\omega_n+i\omega_q)} \right].
$$

其中

$$
\begin{eqnarray}
	\Phi_{q,j} &=& \phi_{q,j} + \frac{\gamma q_j}{\sqrt{2m\omega_q}(\omega_n + i\omega_q)}, \nonumber \\
	\bar\Phi_{q,j} &=& \bar\phi_{q,j} - \frac{\gamma q_j}{\sqrt{2m\omega_q}(\omega_n + i\omega_q)},
\end{eqnarray}
$$

二次项积分得到一个常数因子，可吸收至积分测度中，实际作用量贡献为：

$$
	S'_{ph} 
	\simeq \sum_{q,j} \frac{i\gamma^2 q_j^2}{2m\omega_q(\omega_n+i\omega_q)}
	= \frac{\gamma^2}{2m} \sum_q \frac{q^2}{\omega_n^2+\omega_q^2}.
$$

上式第二个等号对 $(\omega_n, -\omega_{n})$ 求了平均。最终，有效作用量为：

$$
S_{eff}[\psi,\bar\psi] = S_{el}[\psi,\bar\psi]-\frac{\gamma^2}{2m} \sum_q \frac{q^2}{\omega_n^2+\omega_q^2}\rho_q\rho_{-q}.
$$

将虚时变为实时，即做替换 $i\omega_n\rightarrow \omega$，相互作用势为：

$$
	V(\vec q,\omega)= \frac{\gamma^2 q^2}{2m(\omega^2-\omega_q^2)}.
$$

当 $\omega<\omega_q$ 时，有效相互作用为吸引势。

### 有效作用量

费米面附近宽度为德拜频率 $\omega_D$ 的能壳内，电子为净吸引作用。当电-声耦合常数足够大，能壳内电子总相互作用是吸引的。BSC 模型近似将电子直接吸引势看作常数，其有效哈密顿量为：

$$
	\hat H_{BCS} = \int d^dr c_\sigma^\dagger (\vec r) \left( -\frac{\nabla^2}{2m}-\mu \right) c_\sigma(\vec r)
	-g \int d^dr c_\uparrow^\dagger(\vec r) c_\downarrow^\dagger(\vec r) c_\downarrow(\vec r) c_\uparrow(\vec r),
$$

其中 $g$ 为有效耦合常数。此哈密顿量对应的欧几里德作用量为：

$$
	S[\psi,\bar \psi] = \int_0^\beta d\tau \int d^dr \left[ \bar \psi_\sigma \left(\partial_\tau-\frac{\nabla^2}{2m}-\mu \right)\psi_\sigma -g \bar\psi_\uparrow \bar\psi_\downarrow \psi_\downarrow \psi_\uparrow \right].
$$


## 辅助场路径积分


### 辅助场作用量

现在，利用高斯积分公式，有恒等式：

$$
\begin{eqnarray}
	& & \exp \left\{ g \int_0^\beta d\tau \int d^d r \ \bar\psi_\uparrow \bar\psi_\downarrow \psi_\downarrow \psi_\uparrow \right\} \nonumber \\
	&=& \int D[\Delta, \bar \Delta] \exp \left\{ -\int_0^\beta d\tau \int d^dr \left[ \frac{1}{g}|\Delta|^2-\bar \Delta \psi_\downarrow \psi_\uparrow-\Delta \bar \psi_\uparrow \bar \psi_\downarrow \right] \right\},
\end{eqnarray}
$$

用其替换作用量中的相互作用项，得到配分函数为：

$$
	Z=\int D[\psi,\bar \psi]\int D[\Delta, \bar\Delta] \exp \left\{-\int_0^\beta d\tau \int d^d r \left[ \frac{1}{g}|\Delta|^2 - \bar\Psi \hat{\mathcal G}^{-1} \Psi \right] \right\}.
$$

其中引入了 Nambu spinor 算符：

$$
	\Psi = (\psi_\uparrow,\ \bar \psi_\downarrow )^T,
	\ \bar \Psi = \Psi^\dagger
$$

此时格林函数 $\hat{\mathcal G}^{-1}$ 在自旋空间是一个 $2\times 2$矩阵，其矩阵形式为：

$$
	\hat{\mathcal G}^{-1} = \left( 
	\begin{array}{cc}
		\hat G_p^{-1} & \Delta \\
		\bar \Delta & \hat G_h^{-1}
	\end{array}
	\right),
$$

其中粒子格林函数部分为：

$$
	\hat G_p^{-1} = -\partial_\tau+\frac{\nabla^2}{2m}+\mu.
$$

而空穴格林函数部分为：

$$
	\hat G_h^{-1} = -\partial_\tau-\frac{\nabla^2}{2m}-\mu.
$$

以上符号的差异来源于粒子-空穴共轭：对于 Grassmann 二次型，粒子-空穴共轭相当于交换 $\psi,\bar \psi$ 位置，净效果为添上一负号；对于带有偏导数的项，利用分部积分：

$$
	\bar\psi \partial \psi = - (\partial \psi) \bar\psi \simeq \psi \partial \bar\psi.
$$

现在，作用量中的费米场部分变为高斯形，因此可以积掉费米子自由度：

$$
	\int D[\psi,\bar\psi] \exp\left( -\bar\Psi \hat{\mathcal G}^{-1} \Psi \right) = \det \hat{\mathcal G}^{-1} = \exp \left( \mathrm{Tr} \ln \hat{\mathcal G}^{-1} \right).
$$

注意此处取迹运算 $\mathrm{Tr}$ 包括自旋自由度和时空自由度(用 $\mathrm{tr}$ 代表仅在自旋空间求迹)。最终，配分函数转换为关于辅助场 $\Delta,\bar\Delta$ 的路径积分：

$$
	Z = \int D[\Delta,\bar\Delta] e^{-S[\Delta, \bar\Delta]},
$$

其中关于辅助场 $\Delta,\bar\Delta$ 的作用量为：

$$
	S[\Delta, \bar\Delta] = \frac{1}{g}\int_0^\beta d\tau \int d^d r |\Delta|^2 - \mathrm{Tr} \ln \hat{\mathcal G}^{-1}.
$$


### 鞍点近似

对辅助场作用量取极值：

$$
\begin{eqnarray}
	0 &=& \frac{\delta S}{\delta \bar\Delta(\vec r,\tau)} \nonumber \\
	&=& \frac{1}{g} \Delta(\vec r,\tau) - \mathrm{Tr} 
	\left[\hat{\mathcal G}(\vec r,\tau) \cdot \frac{\delta \hat{\mathcal G}^{-1}}{\delta \bar\Delta(\vec r,\tau)} 
	\right] \nonumber \\
	&=& \frac{1}{g} \Delta(\vec r,\tau) - \mathrm{Tr} \left[ 
	\left(
	\begin{array}{cc}
		-\partial_\tau + \frac{\nabla^2}{2m} +\mu & \Delta(\vec r,\tau) \\
		\bar\Delta(\vec r,\tau) & -\partial_\tau -\frac{\nabla^2}{2m} -\mu 
	\end{array} 
	\right)^{-1} \cdot 
	\left( 
	\begin{array}{cc}
		0 & 0 \\
		\delta^{(d)}(\vec r-\vec r')\delta(\tau-\tau') & 0 
	\end{array}
	\right)
	\right].
\end{eqnarray}
$$

注意以上求迹运算包括自旋空间求迹和场构型空间内求迹。在实空间下不容易对场构型求迹，可在动量空间完成，动量空间的一组基底为：

$$
	\psi_{p} = \sqrt\frac{T}{L^d} e^{i\vec p \cdot \vec r - i\omega_n \tau}
$$

在这组基底下，算符 $\hat F$ 矩阵元可通过在基底上的作用得到：

$$
	(\hat F)_{p',p} = \int d\tau \int d^d r \ \bar \psi_{p'} \hat F \psi_p
	= \frac{T}{L^d} \int d\tau \int d^d r\left( e^{-i\vec p' \cdot \vec r + i\omega_{n'} \tau} \hat F e^{i\vec p \cdot \vec r - i\omega_n \tau} \right).
$$

比如：

$$
\begin{eqnarray}
	(\partial_\tau)_{p',p} &=& -i \delta_{pp'} \omega_n, \\
	(\nabla)_{p',p} &=& i \delta_{pp'} \vec p, \\
	\left(f(\vec r,\tau)\right)_{p',p} &=& \frac{T}{L^d}\delta_{pp'} f_p.
\end{eqnarray}
$$

由此作用，得到格林函数动量空间矩阵元为：

$$
	(\hat{\mathcal G})_{p',p}
	=
	\left( 
	\begin{array}{cc}
		\delta_{pp'}(i\omega_n - \xi_{\vec p})  & \Delta_{p'-p} \\
		\bar\Delta_{p-p'} & \delta_{pp'}(i\omega_n + \xi_{\vec p}) 
	\end{array}
	\right)^{-1}
$$

其中 $\xi_{\vec p} = \frac{\vec p^2}{2m} -\mu$，$\Delta_p$ 是 $\Delta(\vec r,\tau)$ 的频率分量。而变分导数动量空间矩阵元为：

$$
	\left(\frac{\delta \hat{\mathcal G}^{-1}}{\delta \bar\Delta(\vec r,\tau)} \right)_{p',p}
	= \frac{T}{L^d}
	\left( 
	\begin{array}{cc}
		0  & 0 \\
		e^{-i(\vec p'-\vec p)\cdot \vec r+i(\omega_{n'}-\omega_n) \tau} & 0 
	\end{array}
	\right).
$$

这样，我们可以写出上述求迹表达式。这里假设极值解 $\Delta=\Delta_0=\mathrm{const}$，极值解变为：

$$
	\frac{1}{g} \Delta_0 = \frac{T}{L^d}\sum_{p} 
	\left( 
	\begin{array}{cc}
		i\omega_n - \xi_{\vec p}  & \Delta_0 \\
		\bar\Delta_0 & i\omega_n + \xi_{\vec p} 
	\end{array}
	\right)^{-1}_{12} 
	= \frac{T}{L^d} \sum_{\vec p,n} \frac{\Delta_0}{\omega_n^2+\xi_{\vec p}^2 +|\Delta_0|^2}.
$$

由此得到方程

$$
	\frac{1}{g} = \frac{T}{L^d} \sum_{\vec p,n} \frac{1}{\omega_n^2+\lambda_{\vec p}^2}.
$$

其中令 $\lambda_{\vec q} = (\xi_{\vec p}^2+|\Delta_0|^2)^{1/2}$. 对频率求和：

$$
	T\sum_n \frac{1}{\omega_n^2+\lambda_{\vec p}^2} 
	= \sum_{z_*=\pm \lambda_{\vec p}}
	n_F(z_*) \mathrm{Res}\left[\frac{1}{z^2-\lambda_{\vec p}^2} \right]_{z=z_*}
	=\frac{1-2n_F(\lambda_{\vec p})}{2\lambda_{\vec p}}.
$$

动量空间求和中，只需考虑费米面附近 $\omega_D$ 的电子：

$$
	\frac{1}{g}
	=\frac{1}{L^d}\sum_{\vec p}\frac{1-n_F(\lambda_{\vec p})}{2\lambda_{\vec p}}
	=\int_{-\omega_D}^{\omega_D}d\xi \ \nu(\xi) \frac{1-n_F(\lambda(\xi))}{2\lambda(\xi)},
$$

其中 $\nu$ 是态密度。由于 $1-2n_F(\xi) = \tanh(\xi/2T)$，得到能隙方程：

$$
	\frac{1}{g\nu} = \int_0^{\omega_D}d\xi \frac{\tanh(\xi/2T)}{\lambda(\xi)}.
$$


## Ginzburg-Landau 理论

在相边界附近，$\Delta$ 可看作微扰，可以将 BCS 有效作用量

$$
	S_{BCS}[\Psi,\bar\Psi] = \frac{1}{g} \int d\tau \int d^d r |\Delta|^2- \mathrm{Tr} \ln \hat{\mathcal G}^{-1}.
$$

展开成 $\Delta$ 的级数。为此需要考虑 $\mathrm{Tr} \ln \hat{\mathcal G}^{-1}$ 关于 $\Delta$ 的级数展开。定义：

$$
\begin{eqnarray}
	\hat{\mathcal G}_0^{-1} &\equiv & \left( 
	\begin{array}{cc}
		\hat G_p^{-1} & 0\\
		0 & \hat G_h^{-1}
	\end{array}
	\right), \nonumber \\
	\hat \Delta &\equiv & \left( 
	\begin{array}{cc}
		0 & \Delta \\
		\bar\Delta & 0 \\
	\end{array}
	\right).
\end{eqnarray}
$$

由此可以做变换：

$$
\mathrm{Tr} \ln \hat{\mathcal G}^{-1} 
	= \mathrm{Tr} \ln \left[ \hat{\mathcal G}^{-1}_0(1+\hat{\mathcal G}_0 \hat \Delta) \right]
	= \mathrm{Tr} \ln \hat{\mathcal G}^{-1}_0 + \mathrm{Tr}\ln[1+\hat{\mathcal G}_0 \hat \Delta].
$$

右边第二项可以展开为：

$$
\ln[1+\hat{\mathcal G}_0 \hat \Delta]= -\sum_n \frac{1}{2n}(\hat{\mathcal G}_0 \hat\Delta)^{2n}.
$$

注意展开式没有奇数次项，因为奇数次 $\hat{\mathcal G}^{-1}_0 \hat\Delta$ 乘积是无迹矩阵。


### 二阶近似

首先将表达式展开到二阶项($n=1$)，其结果为：

$$
-\frac{1}{2} \mathrm{Tr}(\hat{\mathcal G}_0\hat\Delta)^2
	= - \mathrm{Tr}[\hat G_p \bar\Delta \hat G_h \Delta]
$$

同样，求迹操作在频率空间完成。首先考虑傅立叶变换：

$$
\begin{eqnarray}
	(\hat{\mathcal G}_0)_{p',p}
	& \longrightarrow &
	\delta_{pp'}\left( 
	\begin{array}{cc}
		G_p & 0\\
		0 & -G_{-p}
	\end{array}
	\right), \\
	(\hat \Delta)_{p',p}
	& \longrightarrow &
	\left( 
	\begin{array}{cc}
		0 & \Delta_{p'-p} \\
		\bar\Delta_{p-p'} & 0
	\end{array}
	\right).
\end{eqnarray}
$$

其中

$$
	G_p = \frac{1}{i\omega_n-\xi_{\vec p}}.
$$

因此，展开到二阶项的作用量为：

$$
	S^{(2)}=\sum_q \Gamma_q^{-1}|\Delta(q)|^2,\ 
	\Gamma_q^{-1}=\frac{1}{g}-\frac{T}{L^d}\sum_p G_p G_{q-p}.
$$

现在考虑求和式 $\sum_p G_p G_{q-p} $.首先对频率求和：

$$
\begin{eqnarray}
	T\sum_{m} \frac{1}{i\omega_m-\xi_{\vec p}}\frac{1}{i\omega_n-i\omega_m-\xi_{\vec q-\vec p}}
	&=& \sum_{z=z_*} n_F(z_*) \mathrm{Res} \left[\frac{1}{z-\xi_{\vec p}}\frac{1}{i\omega_n-z-\xi_{\vec q-\vec p}} \right]_{z-z_*} \nonumber \\
	&=& \frac{1-n_F(\xi_{\vec p})-n_F(\xi_{\vec q-\vec p})}{i\omega_n-\xi_{\vec p}-\xi_{\vec q-\vec p}}.
\end{eqnarray}
$$

注意上式中 $q = (\vec q,\omega_n)$ 是声子 4 动量。相变发生在 $\Gamma_q^{-1}=0$ 处。此时我们考虑时空均匀的解，即 $q=(0,0)$. 由于 $\xi_{\vec p}=\xi_{-\vec p}$：

$$
	\frac{T}{L^d}\sum_p G_p G_{-p}
	= \int_{-\omega_D}^{\omega_D} d\xi \nu(\xi)\frac{1-2n_F(\xi)}{2\xi}.
$$

进一步化简上式之前，注意积分式正负频率对称，只需考虑正频部分。另外，由于分母 $\xi$ 存在，零温下该积分是发散的。有限温度时，在 $0 < \xi < T$ 区间的积分被费米分布函数控制。实际贡献主要在 $T < \xi < \omega_D$ 区间，在此小区间态密度可近似为相同，因此得到：

$$
	\frac{T}{L^d}\sum_p G_p G_{-p} \simeq \nu \int_T^{\omega_D} \frac{d\xi}{\xi}
	= \nu \ln\left( \frac{\omega_D}{T} \right).
$$

由此确定相变点为：

$$
	T_c \simeq \omega_D \exp\left( -\frac{1}{g\nu} \right).
$$


### 四阶近似
当 $T < T_c$ 时，二次型的作用量变得不稳定，这时为得到对体系有效的描述，需要引入更高阶的微扰。二阶作用量的不稳定性源于时空均匀部分，而不是时空导数部分，因此对更高阶的微扰项，我们也只考虑时空均匀的部分，即：

$$
	S^{(4)} = \frac{1}{4} \mathrm{Tr} (\hat{\mathcal G}^{-1} \hat\Delta)^{4}
	\simeq \frac{1}{2n}\sum_p (G_p G_{-p})^2 |\Delta|^{4}.
$$

上式可近似为：

$$
	S^{(4)} \simeq \frac{\nu |\Delta|^4}{4} \sum_n \int_{-\omega_D}^{\omega_D} \frac{d\xi}{(\omega_n^2+\xi^2)^{2}}
	\propto \nu |\Delta|^4 \sum_n \frac{1}{\omega_n^3}
	\propto \nu T \left(\frac{|\Delta|}{T} \right)^4.
$$

Ginzburg-Landau 经典作用量为：

$$
	S_{GL}[\Delta,\bar\Delta]=\beta\int d^d r\left[ \frac{r}{2}|\Delta|^2+\frac{c}{2}|\partial \Delta|^2+u|\Delta|^4 \right].
$$

从 Ginzburg-Landau 作用量看出，当 $r < 0$ 时，辅助场 $\Delta$ 具有的 U(1) 对称性发生自发破缺。


## 规范对称性自发破缺


### 规范不变作用量

费米场具有 U(1) 规范对称性：

$$
\begin{eqnarray}
	\psi &\rightarrow & e^{i\theta} \psi, \\
	\bar\psi & \rightarrow & e^{-i\theta} \bar\psi.
\end{eqnarray}
$$

相应地，为了保证作用量是规范不变的，将对 $\psi$ 作用的时空导数算符替换为协变导数算符：

$$
\begin{eqnarray}
	\partial_\tau & \rightarrow & \partial_\tau + ie\phi, \\
	\nabla & \rightarrow & \nabla - ie \vec A.
\end{eqnarray}
$$

其中电磁势在规范变换下：

$$
\begin{eqnarray}
	\phi & \rightarrow & \phi - \frac{1}{e} \partial_\tau \theta, \\
	\vec A & \rightarrow & \vec A+ \frac{1}{e} \nabla\theta.
\end{eqnarray}
$$

类似的，对共轭场 $\bar\psi$ 作用的时空导数算符在规范变换下：

$$
\begin{eqnarray}
	\partial_\tau & \rightarrow & \partial_\tau - ie\phi, \\
	\nabla & \rightarrow & \nabla + ie \vec A.
\end{eqnarray}
$$

因此，考虑外电磁场情况下，辅助场 $\Delta$ 的有效作用量变为：

$$
	S[\Delta,\bar\Delta]=\frac{1}{g}\int d\tau \int d^d r |\Delta|^2
	- \mathrm{Tr}\ln \hat{\mathcal G}^{-1}.
$$

其中规范不变的格林函数为：

$$
	\hat{\mathcal G}^{-1} = \left( 
	\begin{array}{cc}
		-(\partial_\tau+i\phi)+\frac{1}{2m}(\nabla-i\vec A)^2+\mu & \Delta \\
		\bar\Delta & -(\partial_\tau-i\phi)-\frac{1}{2m}(\nabla+i\vec A)^2-\mu
	\end{array}
	\right).
$$


### 规范场微扰展开

对 Ginzburg-Landau 作用量，当 $T < T_c$ 时，$r(T) < 0$，此时经典作用量在

$$
	|\Delta| = \Delta_0 = \sqrt{\frac{-r}{4u}}
$$

取得极值。极值场选取有一个整体相位不确定性：

$$
	\Delta = \Delta_0 e^{2i\theta}.
$$

此相位也对应费米场的 U(1) 定域规范对称性。此作用量的经典基态对应一个确定的相位 $\theta$，此时规范对称性发生自发破缺。

我们从对称性破缺的基态开始，建立剩余自由度：规范场 $(\phi, \vec A)$ 和相位 $\theta$ 的低能场论(此时辅助场 $\Delta$ 绝对值固定，只剩一个相位自由度)。首先，我们引入一个规范变换：

$$
	\hat U(\vec r,\tau) = \left(
	\begin{array}{cc}
		e^{-i\theta(\vec r,\tau)} & 0 \\
		0 & e^{i\theta(\vec r,\tau)}
	\end{array}
	\right)
$$

此规范变换将 $\Delta_0 e^{2i\theta}$ 的相位消去：

$$
	\hat{\mathcal G}^{-1} \rightarrow \hat U^{-1} \hat{\mathcal G}^{-1} \hat U = \left( 
	\begin{array}{cc}
		-(\partial_\tau+i\tilde\phi)+\frac{1}{2m}(\nabla-i\tilde{\vec A})^2+\mu & \Delta_0 \\
		\Delta_0 & -(\partial_\tau-i\tilde\phi)-\frac{1}{2m}(\nabla+i\tilde{\vec A})^2-\mu
	\end{array}
	\right).
$$

其中 $\tilde \phi, \tilde{\vec A}$ 是规范场相应的规范变换：

$$
	\tilde \phi = \phi+\partial_\tau \theta,\ \tilde{\vec A}=\vec A-\nabla\theta.
$$

将格林函数中规范场部分显式写出来：

$$
	\hat{\mathcal G}^{-1} = \hat{\mathcal G}^{-1}_0 - \hat{\mathcal X_1} - \hat{\mathcal X_2}.
$$

其中

$$
\begin{eqnarray}
	\hat{\mathcal G}^{-1}_0 &=& -\sigma_0 \partial_\tau+\sigma_1 \Delta_0+\sigma_3\left(\frac{\nabla^2}{2m}+\mu \right), \\
	\hat{\mathcal X_1} &=& \sigma_3 \tilde\phi +\frac{i}{2m} \sigma_0(\nabla\tilde{\vec A}+\tilde{\vec A} \nabla), \\
	\hat{\mathcal X_2} &=& \sigma_3 \frac{1}{2m} \tilde{\vec A}^2.
\end{eqnarray}
$$

精确至二阶的展开式为：

$$
\begin{eqnarray}
	-\mathrm{Tr}\ln\left(\hat{\mathcal G}_0^{-1}- \hat{\mathcal X_1}-\hat{\mathcal X_2} \right)
	&=& -\mathrm{Tr}\ln\hat{\mathcal G}_0^{-1}-\mathrm{Tr}\ln\left(1 - \hat{\mathcal G}_0 \hat{\mathcal X_1}- \hat{\mathcal G}_0 \hat{\mathcal X_2} \right) \nonumber \\
	&=& -\mathrm{Tr}\ln\hat{\mathcal G}_0^{-1} + \mathrm{Tr}\left(\hat{\mathcal G}_0 \hat{\mathcal X_1} \right) + \mathrm{Tr}\left(\hat{\mathcal G}_0 \hat{\mathcal X_2}+\frac{1}{2}\hat{\mathcal G}_0 \hat{\mathcal X_1} \hat{\mathcal G}_0 \hat{\mathcal X_1} \right).
\end{eqnarray}
$$

首先考虑一阶微扰 $S^{(1)}=\mathrm{Tr}\left(\hat{\mathcal G}_0^{-1}\hat{\mathcal X_1} \right)$.为了方便求迹，首先在动量空间写出前三个算符的傅立叶变换：

$$
\begin{eqnarray}
	(\hat{\mathcal G}_0^{-1})_{p',p}
	&=& \delta_{pp'} (i\sigma_0\omega_n +\sigma_1 \Delta_0-\sigma_3 \xi_{\vec p}), \\
	(\hat{\mathcal X_1})_{p',p}
	&=& i\sigma_3 \tilde\phi_{p'-p} -\delta_{pp'}\sigma_0\frac{(\vec p' + \vec p)\cdot \tilde{\vec A}_{p'-p}}{2m}, \\
	(\hat{\mathcal X_2})_{p',p}
	&=& \frac{1}{2m} \sigma_3 (\tilde{\vec A}^2)_{p'-p}.
\end{eqnarray}
$$

求迹转换为动量求和：

$$
	S^{(1)}[A] = 
	\sum_p \mathrm{tr}\left[\hat{\mathcal G}_{0,p}\left(i\sigma_3\tilde\phi_0 - \frac{1}{m}\sigma_0\vec p\cdot \tilde{\vec A}_0\right)\right].
$$

注意上式已经对时空求迹。由于第二项含有 $\vec p$ 的奇数次项，因此为零，因此作用量变为：

$$
	S^{(1)}[A] = 
	i \tilde\phi_0 \sum_p \mathrm{tr}\left(\hat{\mathcal G}_{0,p}\sigma_3 \right)
	= i \tilde\phi_0 \sum_p \left[ \left(\hat{\mathcal G}_{0,p}\right)_{1,1}- \left(\hat{\mathcal G}_{0,p}\right)_{2,2} \right].
$$

频率求和之后：

$$
	\sum_{\vec p}\sum_n \left(\hat{\mathcal G}_{0,p}\right)_{1,1}
	= - \sum_{\vec p}\sum_n \left(\hat{\mathcal G}_{0,p}\right)_{2,2}
	= \frac{1}{T}\sum_{\vec p}n_F(\xi_{\vec p})
	= \frac{N_e}{T}.
$$

因此：

$$
	S^{(1)}[A] 
	= i N_e \beta \tilde\phi_0
	= i N_e \beta \int \frac{d\tau}{\beta} \int \frac{d^d r}{L^d} \phi(\vec r,\tau)
	= i n_e \int d\tau d^d r \phi(\vec r,\tau).
$$

其中 $n\equiv N_e/L^d$，此贡献来源于静电场于电子耦合。现在考虑二阶微扰，首先考虑第一部分贡献：

$$
	S^{(2,1)} = \mathrm{Tr}\left(\hat{\mathcal G}_0 \hat{\mathcal X_2} \right).
$$

求迹为：

$$
	S^{(2,1)}
	= \frac{(\tilde{\vec A}^2)_0}{2m}\sum_p \mathrm{tr} \left(\hat{\mathcal G}_{0,p}\sigma_3 \right)
	= \frac{n_e}{2m} L^d \beta (\tilde{\vec A}^2)_0
	= \frac{n_e}{2m} \int d\tau d^d r \tilde{\vec A}^2(\vec r,\tau).
$$

现在考虑第二部分贡献：

$$
	S^{(2,2)} 
	= \frac{1}{2} \mathrm{tr}\left(\hat{\mathcal G}_0 \hat{\mathcal X_1} \hat{\mathcal G}_0 \hat{\mathcal X_1}\right).
$$

注意包含 $\vec p$ 奇数次项的部分求迹为零，因此作用量分为两部分，$S^{(2,2)} = S^{(2,2)}_A+S^{(2,2)}_B$：

$$
\begin{eqnarray}
	S^{(2,2)}_A
	&=& \sum_{p,q} \mathrm{tr}\left(-\hat{\mathcal G}_{0,p} \sigma_3 \tilde\phi_{q} \hat{\mathcal G}_{0,p+q}\sigma_3 \tilde\phi_{-p} \right), \\
	S^{(2,2)}_B
	&=& \sum_{p,q} \mathrm{tr} \left(\hat{\mathcal G}_{0,p} \frac{\sigma_0(2\vec p + \vec q)\cdot \tilde{\vec A}_{q}}{2m} \hat{\mathcal G}_{0,p+q} \frac{\sigma_0 (2\vec p + \vec q)\cdot \tilde{\vec A}_{-q}}{2m}\right).
\end{eqnarray}
$$

在微扰意义下，规范场时空导数较小，即 $q \ll p$，因此做近似：

$$
\begin{eqnarray}
	S^{(2,2)}_A
	&\approx& -\sum_{p,q} \mathrm{tr}\left(\hat{\mathcal G}_{0,p} \sigma_3 \tilde\phi_{q} \hat{\mathcal G}_{0,p}\sigma_3 \tilde\phi_{-p} \right), \\
	S^{(2,2)}_B
	&\approx& \frac{1}{m^2}\sum_{p,q} \mathrm{tr} \left(\hat{\mathcal G}_{0,p} \sigma_0 \vec p \cdot \tilde{\vec A}_{q} \hat{\mathcal G}_{0,p} \sigma_0 \vec p \cdot \tilde{\vec A}_{-q} \right).
\end{eqnarray}
$$

利用等式：

$$
	\hat{\mathcal G}_{0,p} = \frac{-i\sigma_0 \omega_n-\sigma_3\xi_{\vec p}+\sigma_1 \Delta_0}{\omega_n^2+\lambda_{\vec p}^2},
$$

得到 A 项：

$$
	S^{(2,2)}_A = \sum_{p,q} \frac{\tilde\phi_{q} \tilde\phi_{-q}(\omega_n^2-\lambda_{\vec p}^2+2\Delta_0^2)}{(\omega_n^2+\lambda_{\vec p}^2)^2}
$$

对 B 项，利用恒等式：

$$
	\sum_{\vec p}(\vec p \cdot \tilde{\vec A}_{q})(\vec p \cdot \tilde{\vec A}_{-q})F(\vec p^2) 
	= \frac{\tilde{\vec A}_{q} \cdot \tilde{\vec A}_{-q}}{d} \sum_{\vec p} \vec p^2 F(\vec p^2). 
$$

其中 $F(\vec p^2)$ 是任意旋转不变函数，因此：

$$
	S^{(2,2)}_B 
	= \sum_{p,q} \frac{-\omega_n^2+\lambda_{\vec p}^2}{(\omega_n^2+\lambda_{\vec p}^2)^2} \frac{\vec p^2 \tilde{\vec A}_{q} \cdot \tilde{\vec A}_{-q}}{d m^2}.
$$

现在变换回实空间：

$$
	S^{(2)}[A] = \int d\tau d^d r \left[c_1 (\phi+\partial_\tau \theta)^2+c_2 (\vec A - \nabla \theta)^2 \right].
$$

其中：

$$
\begin{eqnarray}
	c_1 &=& \frac{T}{L^d}\sum_p \frac{\omega_n^2-\lambda_{\vec p}^2+2\Delta_0^2}{(\omega_n^2+\lambda_{\vec p}^2)^2}, \\
	c_2 &=& \frac{n_e}{2m}+\frac{1}{dm^2}\frac{T}{L^d}\sum_p \frac{\vec p^2 (-\omega_n^2+\lambda_{\vec p}^2)}{(\omega_n^2+\lambda_{\vec p}^2)}.
\end{eqnarray}
$$

首先考虑 $c_1$ 求和式。频率求和为：

$$
\begin{eqnarray}
	& & T \sum_n \frac{\omega_n^2-\lambda_{\vec p}^2+2\Delta_0^2}{(\omega_n^2+\lambda_{\vec p}^2)^2} \nonumber \\
	&=& \sum_{z_*=\pm \lambda_{\vec p}} \mathrm{Res} \left[ \frac{n_F(z)(-z^2-\lambda_{\vec p}^2+2\Delta_0^2)}{(z+\lambda_{\vec p})^2(z-\lambda_{\vec p})^2} \right]_{z=z_*} \nonumber \\
	&=& \left[ \frac{n_F(z)(-z^2-\lambda_{\vec p}^2+2\Delta_0^2)}{(z+\lambda_{\vec p})^2} \right]'_{z=\lambda_{\vec p}} + \left[ \frac{n_F(z)(-z^2-\lambda_{\vec p}^2+2\Delta_0^2)}{(z-\lambda_{\vec p})^2} \right]'_{z=-\lambda_{\vec p}} \nonumber \\
	&=& \frac{1}{2\lambda_{\vec p}}\left[
	-n'_F(\lambda_{\vec p}) \xi_{\vec p}^2
	-n_F(\lambda_{\vec p})\left(\frac{\Delta_0}{\lambda_{\vec p}}\right)^2 
	+n'_F(-\lambda_{\vec p}) \xi_{\vec p}^2
	+n_F(-\lambda_{\vec p})\left(\frac{\Delta_0}{\lambda_{\vec p}}\right)^2 
	\right].
\end{eqnarray}
$$

由于我们现在考虑的是 $T < T_c$ 情形，$ T/\Delta \rightarrow 0$，此时频率求和的贡献几乎全部来源于含有费米分布 $n_F(-\lambda_{\vec p})$ 的项，即：

$$
	c_1 \simeq \frac{1}{L^d} \sum_{\vec p} \frac{\Delta_0^2}{2\lambda_{\vec p}^3}
	= \frac{\nu}{2} \int d\xi \frac{\Delta_0^2}{(\xi^2+\Delta_0^2)^{3/2}}
	= \nu.
$$

因此，我们得到了作用量的系数 $c_1$ 等于费米面附近的态密度 $\nu$. 下面考虑 $c_2$ 的求和式。频率求和为：

$$
\begin{eqnarray}
	T \sum_n \frac{-\omega_n^2+\lambda_{\vec p}^2}{(\omega_n^2+\lambda_{\vec p}^2)^2}
	&=& \sum_{z_*=\pm \lambda_{\vec p}} \mathrm{Res} \left[ \frac{n_F(z)(z^2+\lambda_{\vec p}^2)}{(z+\lambda_{\vec p})^2(z-\lambda_{\vec p})^2}\right]_{z=z_*} \nonumber \\
	&=& \left[ \frac{n_F(z)(z^2+\lambda_{\vec p}^2)}{(z+\lambda_{\vec p})^2}\right]'_{z=\lambda_{\vec p}} + \left[ \frac{n_F(z)(z^2+\lambda_{\vec p}^2)}{(z-\lambda_{\vec p})^2}\right]'_{z=-\lambda_{\vec p}} \nonumber \\
	&=& n'_F(\lambda_{\vec p}) \nonumber \\
	&=& -\beta n_F(\lambda_{\vec p})(1-n_F(\lambda_{\vec p})).
\end{eqnarray}
$$

费米面附近 $\vec p^2 \approx 2m\mu$，由此得到：

$$
	c_2 = \frac{n_e}{2m}-\frac{\nu \mu}{dm}\int d\xi \ \beta n_F(\lambda)(1-n_F(\lambda)).
$$

定义超导电子密度：

$$
	n_s = n_e - \frac{2\nu \mu}{d} \int d\xi \ \beta n_F(\lambda)(1-n_F(\lambda)).
$$

在低温 $T \ll \Delta_0$ 时，$\lambda > \Delta_0 \gg T$，因此 $n_F(\lambda) \approx 0$，此时 $n_s \approx n_e$. 相反，在高温 $T \gg \delta_0$ 时：

$$
\begin{eqnarray}
	\int d\xi \beta n_F(\lambda)(1-n_F(\lambda)) 
	&\approx & \int_0^{\infty} d\xi \beta n_F(\lambda)(1-n_F(\lambda)) \nonumber \\
	&=& - \int_0^{\infty}d\xi \partial_{\xi}n_F(\xi) = 1.
\end{eqnarray}
$$

此时

$$
	n_s \simeq \frac{n_e}{2m}-\frac{\nu \mu}{dm} = 0.
$$

第二个等式来自于电子密度与态密度关系：

$$
\begin{eqnarray}
	\nu &=& \frac{\partial n_e}{\partial \xi} \nonumber \\
	&=& \frac{\partial (V_d p^d)}{\partial p} \left( \frac{\partial(p^2/2m)}{\partial p} \right)^{-1} \nonumber \\
	&=& \frac{d V_d p^{d-1}}{p/m} = \frac{d n_e}{2\mu}.
\end{eqnarray}
$$


### Meissner 效应

现在我们已经得到破缺对称性后的低能理论作用量：

$$
	S[A,\theta] = S_{E-M} + \int d\tau d^d r \left[\nu (\partial_\tau \theta+ \phi)^2 + \frac{n_s}{2m}\left(\nabla\theta-\vec A \right)^2 \right] 
$$

其中

$$
	S_{E-M} = \int d\tau d^d r \frac{1}{4}F_{\mu \nu} F^{\mu \nu}
$$

是电磁场作用量。现在考虑只有静磁场的情况，即要求：

$$
	\phi = 0,\ \partial_\tau \vec A = 0.
$$

此时，作用量可分为：

$$
	S[\vec A, \theta] = S_{cl}[\vec A,\theta]
	+ \nu \int d\tau \int d^d r (\partial_\tau \theta)^2.
$$

其中 $S_{cl}$ 是经典作用量(场量在虚时间上无涨落)：

$$
	S_{cl}[\vec A,\theta] 
	= \frac{\beta}{2}\int d^d r \left[\frac{n_s}{m}(\nabla\theta-\vec A)^2+(\nabla \times \vec A)^2 \right].
$$

此时，作用量中的量子量子涨落完全来源于第二项

$$
	\nu \int d\tau \int d^d r (\partial_\tau \theta)^2
	= \nu \sum_{\vec q,n} \omega_n \theta_{\vec q,n}\theta_{-\vec q,-n}.
$$

这项的大小与温度密切相关，当我们考虑较高温度(但仍有 $T < T_c$)时，$n>0$ 的松原频率贡献的作用量可能远大于 $S_{cl}$，此时我们就可以忽略这些“高能”的自由度，而只考虑经典部分作用量。下面考虑这个经典作用量给出的有效理论。首先，将作用量写在动量空间中：

$$
\begin{eqnarray}
	S_{cl}[\vec A,\theta] 
	&=& \frac{\beta}{2}\sum_{\vec q}\left[\frac{n_s}{m}(i\vec q\theta_{\vec q}-\vec A_{\vec q})\cdot(-i\vec q\theta_{-\vec q}-\vec A_{-\vec q})+(\vec q \times \vec A_{\vec q})\cdot(\vec q \times \vec A_{-\vec q})\right] \nonumber \\
	&=& \frac{\beta}{2}\sum_{\vec q} \left[\frac{n_s}{m}(\theta_{\vec q} \vec q^2 \theta_{-\vec q}-2i\theta_{\vec q}\vec q\cdot\vec A_{-\vec q}+\vec A_{\vec q}\cdot \vec A_{-\vec q})+(\vec q \times \vec A_{\vec q})\cdot(\vec q \times \vec A_{-\vec q})\right]
\end{eqnarray}
$$

为得到规范场的有效理论，我们积掉 $\theta_q$ ，得到有效作用量：

$$
	S_{eff}[\vec A]=\frac{\beta}{2}\sum_{\vec q}\left[\frac{n_s}{m} \left(\vec A_{\vec q}\cdot \vec A_{-\vec q}-\frac{(\vec q\cdot \vec A_{\vec q})\cdot(\vec q\cdot \vec A_{-\vec q})}{\vec q^2} \right) + (\vec q \times \vec A_{\vec q})\cdot(\vec q \times \vec A_{-\vec q})\right]
$$

将矢势分解成横向和纵向分量：

$$
\begin{eqnarray}
	\vec A_{\vec q} &=& \vec A_{\vec q}^\perp + \vec A_{\vec q}^\parallel, \nonumber \\
	\vec A_{\vec q}^\perp &=& \vec A_{\vec q} - \frac{\vec q(\vec q \cdot \vec A_{\vec q})}{q^2}, \nonumber \\
	\vec A_{\vec q}^\parallel &=& \frac{\vec q(\vec q \cdot \vec A_{\vec q})}{q^2}.
\end{eqnarray}
$$

注意到

$$
	\vec A_{\vec q}^\perp \cdot \vec A_{-\vec q}^\perp 
	= \vec A_{\vec q}\cdot \vec A_{-\vec q}-\frac{(\vec q\cdot \vec A_{\vec q})\cdot(\vec q\cdot \vec A_{-\vec q})}{\vec q^2}.
$$

同时由于 $\vec q \times \vec A_{\vec q}^\parallel = 0$：

$$
\begin{eqnarray}
	(\vec q\times \vec A_{\vec q})\cdot(\vec q \times \vec A_{-\vec q})
	&=& (\vec q\times \vec A_{\vec q}^\perp)\cdot(\vec q \times \vec A_{-\vec q}^\perp) \nonumber \\
	&=& \vec q^2 \vec A_{\vec q}^\perp \cdot \vec A_{-\vec q}^\perp
\end{eqnarray}
$$

第二个等号利用了恒等式：

$$
	(\vec u_1 \times \vec u_2)\cdot(\vec v_1 \times \vec v_2) 
	= (\vec u_1 \cdot \vec v_1)(\vec u_2 \cdot \vec v_2)
	- (\vec u_1 \cdot \vec v_2)(\vec u_2 \cdot \vec v_1).
$$

由此得到作用量：

$$
	S_{eff}[\vec A] = \frac{\beta}{2} \sum_{\vec q}\left(\frac{n_s}{m}+\vec q^2\right)\vec A_{\vec q}^\perp \cdot \vec A_{-\vec q}^\perp.
$$

此时规范场 $\vec A_{\vec q}^\perp$ 的有效作用量含有一个质量项，这导致超导体内部的抗磁性。我们考虑这个经典作用量给出的运动方程：

$$
	\left(\frac{n_s}{m}-\nabla^2 \right) \vec A(\vec r) = 0.
$$

对方程两边作用 $\nabla \times$：

$$
	\left(\frac{n_s}{m}-\nabla^2 \right) \vec B(\vec r) = 0.
$$

此运动方程给出一个指数衰减的解：$\vec B(x) \sim \exp(-x/\lambda)$，其中 $\lambda = \sqrt{m/n_s}$.


## References

[1] A. Altland & B. Simons, Condensed Matter Field Theory.

[2] 李正中, 《固体理论》.