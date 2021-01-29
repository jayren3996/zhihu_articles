# 经典自旋 XY 模型


## BEC 低能有效理论


### BEC 经典基态与量子修正

相互作用波色系统作用量一般形式为：

$$
S = \int_0^\beta d\tau \int d^d r \left[
		\phi^* \partial_\tau \phi + \frac{1}{2m}|\nabla \phi|^2 - \mu |\phi|^2 + \frac{g}{2} |\phi|^4 
	\right].
$$

考虑其空间均匀，忽略涨落的经典基态 $\phi(\vec r, \tau) \equiv \phi_0 = \sqrt{\rho_0}e^{i\theta}$，其中 $\theta$ 是任意相位。$\rho_0$ 值由函数

$$
	V(\rho_0) = -\mu \rho_0 + \frac{g}{2} \rho_0^2
$$

的极值确定，其解为：

$$
	\rho_0 = \frac{\mu}{g}.
$$

将经典基态的相位 $\theta$ 取为 0，此时将波色场写为经典期望值 $\phi_0$ 附近的的小偏移：

$$
	\phi(\vec r, \tau) = \sqrt{\rho_0 + \delta \rho(\vec r, \tau)} e^{i\theta(\vec r,\tau)},
$$

将作用量中各项作小量展开至二阶。其中时间导数项展开为：

$$
\begin{eqnarray}
	\phi^*\partial_\tau \phi &\rightarrow & \frac{1}{2}(\phi^*\partial_\tau \phi - \phi \partial_\tau \phi^*) \nonumber \\
	&=& \frac{1}{2}\left[
		\left(\frac{1}{2} \partial_\tau \delta\rho + i(\rho_0+\delta\rho)\partial_\tau\theta \right) -
		\left(\frac{1}{2} \partial_\tau \delta\rho - i(\rho_0+\delta\rho)\partial_\tau\theta \right)
		\right] \nonumber \\
	&=& i(\rho_0+\delta\rho)\partial_\tau\theta,
\end{eqnarray}
$$

空间梯度项展开为：

$$
\begin{eqnarray}
	\nabla\phi^* \nabla \phi 
	&=& \left[\frac{\nabla \delta\rho}{2\sqrt{\rho_0+\delta\rho}}-i(\nabla \theta)\sqrt{\rho_0+\delta\rho}\right]
		\left[\frac{\nabla \delta\rho}{2\sqrt{\rho_0+\delta\rho}}+i(\nabla \theta)\sqrt{\rho_0+\delta\rho}\right] \nonumber \\
	&\simeq & \frac{(\nabla \rho)^2}{4\rho} + \rho_0(\nabla \theta)^2,
\end{eqnarray}
$$

密度一次与二次项展开式为：

$$
\begin{eqnarray}
	\rho &=& \rho_0 + \delta\rho, \\
	\rho^2 &=& \rho_0^2 + 2\rho_0 \delta\rho + \delta\rho^2.
\end{eqnarray}
$$

最终作用量为：

$$
	S = S_0 + \int_0^\beta d\tau \int d^d r \left[i(\rho_0+\delta\rho)\partial_\tau\theta + \frac{\rho_0}{2m}(\nabla \theta)^2+\frac{1}{8m\rho_0}(\nabla \delta\rho)^2+\frac{g}{2}\delta\rho^2 \right].
$$

其中 $i\rho_0 \partial_\tau \theta$ 为一个全微分项，可以忽略。


### 低能有效作用量

此时作用量中有两个自由度：密度涨落 $\delta\rho$ 和 $\delta\theta$. 密度涨落相对相位涨落有更高的能量，考虑系统的低能有效理论时，我们只考虑相位的涨落。此时我们将密度涨落自由度积掉，注意拉氏量中 $\delta\rho$ 二次型：

$$
	\mathcal L =
	\frac{1}{2}\delta\rho \hat G \delta\rho
	+ i\delta\rho \partial_\tau\theta + \frac{\rho_0}{2m}(\nabla\theta)^2.
$$

其中

$$
	\hat G = -\frac{\nabla^2}{4m\rho_0} + g.
$$

作高斯积分之后，得到有效作用量：

$$
	S_{eff}
	= \int_0^\beta d\tau \int d^d r \left[\frac{1}{2}\partial_\tau\theta \hat G^{-1} \partial_\tau \theta + \frac{\rho_0}{2m}(\nabla\theta)^2\right].
$$

低能情况下，相位变化的空间二次梯度 $\nabla^2\theta$ 较小，忽略此项后将 $\hat G^{-1}$ 近似为

$$
\begin{eqnarray}
	\hat G^{-1} \approx \frac{1}{g}.
\end{eqnarray}
$$

由此将有效作用量化简为：

$$
	S_{eff}
	= \int_0^\beta d\tau \int d^d r 
	\left[
		\frac{1}{2g} (\partial_\tau \theta)^2 + \frac{\rho_0}{2m}(\nabla\theta)^2
	\right].
$$

令 $v = \sqrt{\rho_0 g/m}$，我们看到描述相位自由度的有效理论拉氏量满足波动方程：

$$
\begin{eqnarray}
	\mathcal L_{eff} = \frac{1}{2g} \left[(\partial_\tau \theta)^2+v^2(\nabla \theta)^2 \right].
\end{eqnarray}
$$


## XY 模型


### 模型哈密顿量

BEC 的有效哈密顿量实际上对应了一个经典自旋模型。首先，我们对实空间坐标重标度，使得：

$$
\begin{eqnarray}
	x \rightarrow x/v,\ v^2(\nabla\theta)^2\rightarrow(\nabla\theta)^2,
\end{eqnarray}
$$

作用量因此化为了 $d+1$ 维欧几里德空间内的积分：

$$
\begin{eqnarray}
	S_{eff} = \frac{1}{2g} \int d^{d+1}r (\partial_\mu \theta)^2.
\end{eqnarray}
$$

考虑到 $\theta$ 的周期性，可以选取 $\phi=e^{i\theta}$ 作为场量，将作用量改写为：

$$
\begin{eqnarray}
	S_{eff} = \frac{1}{2g} \int d^{d+1}r (\partial_\mu \phi^*\partial_\mu \phi),
\end{eqnarray}
$$

现考虑场的离散化，即将场放在 $d+1$ 维正方晶格上，导数离散化为：

$$
	\partial_\mu \phi_r \simeq \frac{e^{i\theta_{r+\mu}}-e^{i\theta_r}}{a},
$$

其中 $a$ 是晶格常数。最终作用量为：

$$
\begin{eqnarray}
	S_{eff} = \frac{1}{ga^2} \sum_{\langle i,j \rangle}[1-\cos(\theta_i-\theta_j)].
\end{eqnarray}
$$

此作用量对应了 $d+1$ 维的经典 XY 模型哈密顿量：

$$
	H = - J \sum_{\langle i,j \rangle} \cos(\theta_i - \theta_j).
$$

其中忽略了一个常数，并取 $J = T/ga^2$. 注意此时自旋是在 $x-y$ 平面内，大小为 1 的矢量。以下的讨论中，我们主要考虑 2 维模型(即对应 $1+1$ 维 BEC 有效模型)。


### 低温自旋关联

我们现在考虑模型自旋在低温下的关联。在低温区自选模型近似地处在一个铁磁态，即经典基态存在自旋的长程关联。当记入涨落后，需考虑自旋波激发对关联的影响。而自旋波模式用连续场更容易写出来。我们实际上需要考虑的是关联函数

$$
	C(\vec r - \vec r') \equiv \left\langle \phi(\vec r)\phi(\vec r')\right\rangle
	= \left\langle \exp[i\theta(\vec r)-i\theta(\vec r')] \right\rangle.
$$

利用等式：

$$
\begin{eqnarray}
	\left\langle e^{i\theta} \right\rangle 
	&=& \sum_n \frac{(-1)^n}{(2n)!} \langle \theta^{2n} \rangle \\
	&=& \sum_n \frac{(-1)^n}{(2n)!} \frac{(2n)!}{n!} \langle \theta^2 \rangle^n \\
	&=& \exp\left[{-\frac{1}{2} \langle \theta^2 \rangle}\right].
\end{eqnarray}
$$

再令 $\theta \rightarrow \theta(\vec r)-\theta(\vec r')$，得到：

$$
\begin{eqnarray}
	C(\vec r-\vec r') &=&  \exp \left[-\frac{1}{2} \left\langle [\theta(\vec r)-\theta(\vec r')]^2\right\rangle \right] \\
	&=& e^{G(\vec r-\vec r')-G(0)} \\
\end{eqnarray}
$$

其中 $G(|\vec r-\vec r'|)\equiv \langle\theta(\vec r)\theta(\vec r')\rangle$. 在自旋波近似下，场量 $\theta$ 可以看作一个普通波色场(无需考虑其 $2\pi$ 周期)。首先将作用量写在动量空间：

$$
	S_{eff} = \frac{1}{2g}\sum_{\vec k} \vec k^2 \theta_{\vec k}\theta_{-\vec k}.
$$

动量空间格林函数为：

$$
	G(\vec k) = \frac{2g}{\vec k^2}.
$$

变换回实空间：

$$
	G(\vec r) = 2g\int \frac{d^{2}k}{(2\pi)^{2}} \frac{e^{i\vec k \cdot \vec r}}{\vec k^2}
	=2g\int \frac{d^{2}k}{(2\pi)^{2}} \frac{\cos(\vec k \cdot \vec r)}{\vec k^2}.
$$

此积分是红外发散的，主要的发散部分来源于：

$$
\begin{eqnarray}
	G(0) = 2g\int \frac{d^{2}k}{(2\pi)^{2}} \frac{1}{\vec k^2}.
\end{eqnarray}
$$

而我们最终要求的关联函数会减去这个发散积分，得到在零点附近的行为为：

$$
\begin{eqnarray}
	G(0)-G(\vec r) = 2g\int \frac{d^2 k}{(2\pi)^2} \frac{1-\cos(\vec k \cdot \vec r)}{\vec k^2}
	\lesssim 2g|\vec r|^2\int \frac{dk}{2\pi} k.
\end{eqnarray}
$$

由于 $1-\cos(\vec k\cdot \vec r)$ 贡献的因子 $|\vec k|^2$，此积分变为收敛，此时可以近似将因子$1-\cos(\vec k\cdot \vec r)$看作 $|\vec r|^{-1}$ 处的红外截断。这样我们得到了估计式：

$$
\begin{eqnarray}
	G(0)-G(\vec r) 
	\simeq G_c + 2g\int_{|\vec r|^-1}^{a^{-1}}\frac{dk}{2\pi} \frac{1}{|\vec k|} 
	= G_c + \frac{g}{\pi} \ln\left(\frac{|\vec r|}{a} \right).
\end{eqnarray}
$$

其中 $G_c$ 是截断区域内非发散的积分值。这样，我们得到了自旋关联函数：

$$
\begin{eqnarray}
	C(\vec r - \vec r') &=& \exp\left[-(G(0)-G(\vec r-\vec r'))\right] \nonumber \\
	&\simeq & e^{-G_c} \left(\frac{|\vec r-\vec r'|}{a} \right)^{g/\pi}.
\end{eqnarray}
$$

我们看到在只考虑自旋波激发时，自旋关联函数是按多项式衰减的。


### 高温关联函数

在高温区展开，相位 $\theta$ 就可能在整个 $2 \pi$ 区间取值，此时就不能简单的做自旋波近似，这时在格点上讨论更为方便。格点上自旋关联函数写为：

$$
	C(\vec r_1 - \vec r_1) = \frac{1}{Z} \mathrm{Tr}\left[e^{-\beta H}\cos(\theta_1-\theta_2)\right].
$$

其实求迹运算实际为：

$$
\begin{eqnarray}
	\mathrm{Tr} = \prod_i \int_{-\pi}^{\pi} d\theta_i.
\end{eqnarray}
$$

在高温极限下，$\beta \ll 1$，关联函数展开为：

$$
\begin{eqnarray}
	C(\vec r_1 - \vec r_1) = \frac{\mathrm{Tr} \left[ \cos(\theta_1-\theta_2)\sum_{m=1}^{\infty}\frac{1}{m!}(\beta J)^m\left\{\sum_{\langle i,j \rangle}\cos(\theta_i-\theta_j) \right\}^m \right]}{\mathrm{Tr} \left[\sum_{m=1}^{\infty}\frac{1}{m!}(\beta J)^m\left\{\sum_{\langle i,j \rangle}\cos(\theta_i-\theta_j) \right\}^m \right]}.
\end{eqnarray}
$$

表达式中的 $\cos(\theta_i-\theta_j)$ 可写为：

$$
\begin{eqnarray}
	\cos(\theta_i-\theta_j) = \frac{1}{2}\left[e^{i(\theta_i-\theta_j)}-e^{-i(\theta_i-\theta_j)}\right].
\end{eqnarray}
$$

注意到

$$
\begin{eqnarray}
	\int_{-\pi}^{\pi} d\theta e^{i\theta} = 0.
\end{eqnarray}
$$

即求迹的表达式中，单独出现 $e^{i\theta_i}$ 的项一定为0，有贡献的项来源于相位彼此抵消的项。回头看分母的表达式，其中$\cos(\theta_1-\theta_2)$ 带有两个外源相位 $e^{\pm i\theta_1}, e^{\pm i \theta_2}$，要抵消这两个外源相位，需要用

$$
\begin{eqnarray}
	\left\{\sum_{\langle i,j \rangle}\cos(\theta_i-\theta_j) \right\}^m
	= \left\{\frac{1}{2}\sum_{\langle i,j \rangle}\left(e^{i\theta_i-i\theta_j}+e^{-i\theta_i+i\theta_j}\right) \right\}^m
\end{eqnarray}
$$

展开式中的相位将这两个外源相位“连接”起来，完成这个连接至少需要展开至 $|\vec r_1-\vec r_2|/a$ 项，这样就会带上系数

$$
\begin{eqnarray}
	C(\vec r_1-\vec r_2) \sim \left(\frac{\beta J}{2}\right)^{|\vec r_1-\vec r_2|/a}
\end{eqnarray}
$$

即高温极限下自旋关联指数衰减，衰减长度为：

$$
\begin{eqnarray}
	\xi = \frac{1}{a}\ln\left(\frac{2}{\beta J}\right).
\end{eqnarray}
$$


## KT 相变

对于二维经典 XY 模型。我们已经看到在高温和低温极限下，自旋关联的衰减方式不同，这意味着在某个临界温度发生了某种相变，称之为 KT(Kosterlitz–Thouless) 相变。

注意到在低温展开时，我们只用到了自旋波激发，其中的推导过程本身不依赖于低温。由此我们可知 KT 相变不是由自旋波导致的，而是来源于 $\theta$ 的 $2n\pi$ 相位。$\theta$ 的这种 $2\pi$ 整数倍的相位改变对应着涡旋激发。接下来我们讨论涡旋激发对模型自由能的影响，从而确定相变点。

### 单涡旋激发自由能

我们首先考虑产生一个涡旋激发的自由能改变。单个涡旋激发的相位分布可以写为：

$$
\begin{eqnarray}
	\theta(\vec r) = \pm \mathrm{Im} \ln(z-z_0).
\end{eqnarray}
$$

此构型的能量为：

$$
\begin{eqnarray}
	E_{vor} = \frac{J}{2} \int_a^{L} dr\frac{2\pi r}{r^2}
	= \pi J \ln\left(\frac{L}{a} \right) + E_{core}.
\end{eqnarray}
$$

注意此原积分紫外发散，但晶格常数给出自然的紫外截断，同时我们用 $E_{core}$ 表示涡旋靠近中心的能量。

对自由能而言，除了能量，还需考虑熵的影响。单个涡旋由于位置的任意选取会产生 $\frac{L^2}{a^2}$ 的不同微观状态，对应自由能减少为：

$$
\begin{eqnarray}
	\Delta F = -T S = -2T \ln \left(\frac{L}{a} \right)
\end{eqnarray}
$$

因此，产生单个涡旋的自由能改变为：

$$
\begin{eqnarray}
	\Delta F = (\pi J - 2T)\ln \left(\frac{L}{a} \right) + E_{core}.
\end{eqnarray}
$$

当 $L \gg 1$ 时，自由能主要由第一项控制，由此得到相变点为：

$$
\begin{eqnarray}
	T_c = \frac{\pi J}{2}.
\end{eqnarray}
$$

当 $T<T_c$ 时，单个涡旋激发增加自由能，因此只需考虑自旋波激发，关联函数多项式衰减。当 $T>T_c$，单个涡旋激发减少自由能，这时体系就会激发涡旋，直到自由能不增加，涡旋导致自旋关联指数衰减。

以上讨论基于单涡旋激发，实际在 $T>T_c$ 时，系统有多涡旋激发。接下来我们将此模型用一个对偶变化变为关于涡旋的配分函数表达式，从而计算多涡旋激发情形的自由能。

### 对偶变换

注意到配分函数求迹可以近似为不同涡旋构型上自旋波激发的求和。考虑近邻的两自旋，其自旋的差值主要分布在 $2\pi$ 整数倍附近：

$$
	\theta_i - \theta_j = 2\pi m + \epsilon.
$$

其中 $\epsilon$ 是小量，这对应某个拓扑构型上的自旋波激发。这样，我们将作用量写为：

$$
	S = -\sum_{\langle i,j \rangle} \beta J \left[1-\frac{1}{2}(\theta_i-\theta_j-2\pi m_{i,j})^2 \right].
$$

此时场的构型被分割成相差 $2\pi m$ 的分立拓扑构型，此时配分函数需要对其求和：

$$
	Z = \sum_{\{m_{i,j}\}}\int D[\theta] \exp\left\{\sum_{\langle i,j \rangle} \beta J \left[1-\frac{1}{2}(\theta_i-\theta_j-2\pi m_{i,j})^2 \right] \right\}.
$$

对 $m$ 求和可利用泊松求和公式：

$$
	\sum_{m=-\infty}^{+\infty} h(m) = \sum_{l=-\infty}^{+\infty} \int_{-\infty}^{+\infty} d\phi h(\phi) e^{2\pi il\phi}.
$$

利用此公式：

$$
\begin{eqnarray}
	e^{\beta J \cos(\theta_i-\theta_j)} 
	& \simeq & \sum_{m_{i,j}} e^{\beta J} \exp\left[-\frac{\beta J}{2}(\theta_i-\theta_j-2\pi m_{i,j})^2\right] \nonumber \\
	&=& \sum_{l_{i,j}}e^{\beta J} \int d\phi \exp\left[-\frac{\beta J}{2}(\theta_i-\theta_j-2\pi \phi)^2+2\pi i l_{i,j}\phi \right] \nonumber \\
	&=& \sum_{l_{i,j}}e^{\beta J} \int d\phi \exp\left[
		-2\pi^2\beta J\phi^2-2\pi(\beta J\theta_i-\beta J\theta_j+il_{i,j})\phi-\frac{\beta J}{2}(\theta_i-\theta_j)^2
		\right] \nonumber \\
	&=& \frac{e^{\beta J}}{\sqrt{2\pi^2\beta J}}\sum_{l_{i,j}} \exp\left[-\frac{l_{i,j}^2}{2\beta J} + il_{i,j}(\theta_i-\theta_j)\right]
\end{eqnarray}
$$

配分函数化为(相差常数因子)：

$$
	Z = \sum_{\{l_{i,j}\}}\int D[\theta] \exp\left\{-\sum_{i,j}\left[\frac{l_{i,j}^2}{2\beta J} - il_{i,j}(\theta_i-\theta_j)\right] \right\}.
$$

我们接下去采用一个简便的指标记法，将 $l_{i,j}$ 记为 $l_\mu(r)$ 其中 $\mu=x,y$ 是代表 $l_{i,j}$ 的方向，而 $r$ 代表位置。此时指数上的第二项可以将求和改写为：

$$
\begin{eqnarray}
	\sum_{r,\mu} l_\mu(r)(\theta_r - \theta_{r+\mu})
	= \sum_{r,\mu} (l_\mu(r)-l_\mu(r-\mu))\theta_r.
\end{eqnarray}
$$

此时可以完成对参数 $\theta_r$ 的积分，得到：

$$
	Z = \sum_{\{l_\mu(r)\}}\exp\left(-\sum_{r,\mu}\frac{l_\mu^2(r)}{2\beta J}\right)\prod_r \delta\left(\sum_\mu (l_\mu(r)-l_\mu(r-\mu))\right).
$$

其中 delta 函数相当于对 $l_\mu(r)$ 构型做出了限制，要求

$$
	\sum_\mu (l_\mu(r)-l_\mu(r-\mu)) = 0
$$

这实际上是离散情形的无散度条件。对于无散场，我们可以将其写为某个场的旋度(类比磁场写为矢势旋度)：

$$
	\vec l(r) = \nabla \times \vec n(r),
$$

对平面而言，在一定的规范选取下，可让矢量场 $\vec n(r)$ 只有 $z$ 分量，这时可将 $\vec n(r)$ 记为一个标量场。其与 $\vec l(r)$ 的关系为：

$$
\begin{eqnarray}
	l_x(r) &=& \partial_y n(r) \simeq n(r) - n(r-y), \nonumber \\
	l_y(r) &=& -\partial_x n(r) \simeq -n(r) + n(r-x).
\end{eqnarray}
$$

以新引入的矢量场做场变量，配分函数写为：

$$
\begin{eqnarray}
	Z = \sum_{\{n(r)\}}\exp\left(-\sum_{r,\mu}\frac{1}{2\beta J} (n(r)-n(r-\mu))^2 \right).
\end{eqnarray}
$$

再用一次泊松求和公式：

$$
\begin{eqnarray}
	Z = \int D[\phi(r)] \sum_{m(r)} \exp\left[-\frac{1}{2 \beta J}\sum_{r,\mu} (\nabla \phi)^2 + 2\pi i\sum_r m(r) \phi(r)\right]
\end{eqnarray}
$$

完成其中对场 $\phi(r)$ 的高斯积分：

$$
\begin{eqnarray}
	Z = Z_{SW}\sum_{m(r)} \exp\left[-2\pi^2 \beta J \sum_{r,r'}m(r) G(r,r') m(r')\right]
\end{eqnarray}
$$

其中高斯积分结果 $Z_{SW}$ 可看作自旋波贡献，$G(r,r')$ 是 $\phi(r)$ 的格林函数：

$$
	G(r-r') = \int \frac{d^2 k}{(2\pi)^2} \frac{e^{i k (r-r')}}{k^2}
			= \int \frac{d^2 k}{(2\pi)^2} \frac{\cos(k(r-r'))}{k^2}.
$$

同样，我们在此格林函数上减去发散部分

$$
\begin{eqnarray}
	G(0) = \int \frac{d^2 k}{(2\pi)^2} \frac{1}{k^2}.
\end{eqnarray}
$$

去掉发散的格林函数相当于在动量积分中引入红外截断(晶格常数 $a^{-1}$ 是自然的紫外截断)：

$$
\begin{eqnarray}
	G'(r-r') \sim G_c-\int_{|r-r'|^{-1}}^{a^{-1}} \frac{dk}{2\pi} \frac{1}{k}
		= G_c-\frac{1}{2\pi} \ln\left(\frac{|r-r'|}{a}\right).
\end{eqnarray}
$$

其中 $G_c$ 是截断区域内非发散的积分值。最终配分函数为：

$$
\begin{eqnarray}
	Z = Z_{SW}\sum_{\{m(r)\}}\exp\left\{-2\pi^2\beta J \left[G(0)\left(\sum_r m(r)\right)^2+\sum_{r,r'} m(r)G'(r-r')m(r') \right]\right\}.
\end{eqnarray}
$$

此配分函数从形式上有较明确的物理意义。首先，由于 $G(0)$ 是一个发散值，这限制了

$$
	\sum_r m(r) = 0,
$$

即 $m(r)$ 正值和负值必须相等保证其互相抵消。另外，配分函数第二项的形式是一个库伦相互作用。我们继续将配分函数化简为：

$$
\begin{eqnarray}
	Z = Z_{SW}\sum_{\{m(r)\}} \exp\left\{ \pi \beta J\sum_{r,r'} m(r)\ln\left(\frac{|\vec r-\vec r'|}{a}\right) m(r') -2\pi^2\beta J G_c \sum_{r} m^2(r) \right\}.
\end{eqnarray}
$$

其中利用了 $(\sum_r m(r))^2 = 0$ 的推论：

$$
\begin{eqnarray}
	\sum_{r,r'}m(r)m(r') = \sum_{r} m^2(r).
\end{eqnarray}
$$


### 多个涡旋自由能

现在给出自由能的简单估计。我们将对偶模型中的场量 $m(r)$ 视为涡旋，$m(r)=1$ 称为在 $r$ 处有一个正涡旋，$m(r)=-1$ 称为在 $r$ 处有一个反涡旋。我们这里考虑低密度情形，即忽略 $|m(r)|>1$ 的情况。从对偶模型的自由能表达式中，我们已经看出正负涡旋数量相等。我们可以首先将配分函数改写为不同正负涡旋对数量的求和：

$$
	Z = Z_{SW} \sum_n \frac{1}{(n!)^2} e^{-S}.
$$

其中系数 $(n!)^{-2}$ 来源于微观状态数，即可以置换正涡旋和负涡旋位置，各自有系数 $n!$，当体系共有 $n$ 对正反涡旋时，其平均距离为 $L/\sqrt n$，库伦作用贡献作用量为：

$$
\begin{eqnarray}
	S_{coul} = -\pi \beta J n\ln(n) + 2\pi \beta J n\ln\left(\frac{L}{a} \right).
\end{eqnarray}
$$

将微观状态数因子放进指数上(相当于加入了熵对自由能的贡献)：

$$
\begin{eqnarray}
	S_{eff} = (2-\pi \beta J) n\ln(n) + 2\pi \beta J n \left[ \ln\left(\frac{L}{a} \right)-\pi G_c \right].
\end{eqnarray}
$$

同样，我们看到相变点 $T_c = \pi J/2$. 作用量的最小值可以给出了涡旋数的估计。


## Reference

1. N. Nagaosa, Quantum Field Theory in Condensed Matter Physics.
2. Xiao-Gang Wen, Quantum Field Theory of Many-Body System.
3. Altland, Simons, Condensed Matter Field Theory.

