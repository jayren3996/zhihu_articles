# 路径积分量子化

## 路径积分的建立
### 拆分配分函数

考虑 $d$ 维格电系统，格点数为 $N^d$，哈密顿量可表达为格点上升降算符函数：

$$
	\hat H = H(\hat c_i^\dagger, \hat c_j).
$$

场论中的核心问题是计算体系的热力学配分函数，即：

$$
	Z \equiv \mathrm{Tr}(e^{-\beta \hat H} ).
$$

以上求迹表达式中，逆温度 $\beta$ 可拆分为 $M$ 等份，求迹表达式变为：

$$
	Z = \mathrm{Tr} \left[e^{-\frac{\beta}{M}\hat H} \cdots e^{-\frac{\beta}{M}\hat H} \right].
$$

求迹过程可引入任意一组完备基底 $|\psi_\alpha \rangle $，要求：

$$
	\sum_{\alpha} |\psi_\alpha \rangle\langle \psi_\alpha | = \vec 1.
$$

这样，配分函数可变为矩阵连乘形式：

$$
	Z = \sum_{\alpha_1,\cdots, \alpha_M} \mathcal M_{\alpha_1,\alpha_2} \cdots \mathcal M_{\alpha_M,\alpha_1}.
$$

其中 $\mathcal M$ 的矩阵元为：

$$
	\mathcal M_{\alpha,\beta} \equiv 
	\exp \left[ - \frac{\beta}{M} \langle\psi_\alpha| \hat H |\psi_\beta \rangle \right]
	\simeq 1- \frac{\beta}{M} \langle\psi_\alpha| \hat H |\psi_\beta \rangle.
$$

路径积分中采用相干态作为(超)完备基底。这里相干态可以指波色相干态、费米相干态以及自旋相干态。它们的性质略有不同，下面分情况讨论。


### 波色相干态
波色场相干态(未归一化)定义为：

$$
	|\phi\rangle \equiv \exp\left(\sum_i \phi_i \hat c_i^\dagger \right)|0\rangle.
$$

这里态的标记 $\phi$ 是一个 $N^d$ 维矢量，即这个波函数是全部格点相干态的直积。两个相干态内积为：

$$
	\langle \theta | \phi \rangle = \exp\left(\bar\theta \phi \right).
$$

对相干态的完备关系为：

$$
	\vec 1 = \int e^{-\bar\phi\phi} |\phi\rangle \langle \phi| \prod_i \frac{d\bar\phi_i d\phi_i}{\pi}.
$$

这组超完备基的积分测度来源于复数高斯积分：

$$
	\int d\bar\phi d\phi\ e^{-\bar\phi a \phi} = \frac{\pi}{a}.
$$

由于相干态满足的关系：

$$
	\hat c_i |\phi \rangle = \phi_i |\phi \rangle,
$$

上述求迹表达式可插入 $M$ 组完备关系：

$$
	Z = \int e^{-\sum_m \bar\phi_m\phi_m }
		\left[ \mathcal M(\phi_{1},\phi_{M}) \cdots \mathcal M(\phi_{2},\phi_{1}) \right]
		\prod_{m=1}^{M}\prod_{i_m} \frac{d\bar\phi_{m}^{i_m} d\phi_{m}^{i_m}}{\pi}.
$$

矩阵元为：

$$
\begin{eqnarray}
	M(\phi_{m+1},\phi_{m}) 
	&\simeq & \langle \phi_{m+1}| 1-\frac{\beta}{M} \hat H(\hat c_i^\dagger, \hat c_j) |\phi_{m} \rangle. \nonumber \\
	&=& \langle \phi_{m+1}| \phi_{m} \rangle -\frac{\beta}{M} H(\bar\phi_{m+1}, \phi_m) \nonumber \\
	&\simeq & 1 + \bar\phi_{m+1}\phi_{m} - \frac{\beta}{M} H(\bar\phi_{m+1}, \phi_m) \nonumber \\
	&\simeq & \exp\left[\bar\phi_{m+1}\phi_{m} - \frac{\beta}{M} H(\bar\phi_{m+1}, \phi_m) \right].
\end{eqnarray}
$$

其中令$M+1=1$，即$\phi_m$满足周期边界条件。现在将积分测度项分配给每一个矩阵$\mathcal M$：

$$
	e^{-\bar\phi_{m+1}\phi_{m+1}}\mathcal M(\phi_{m+1},\phi_m)
	\simeq \exp\left[-\bar\phi_{m+1}(\phi_{m+1}-\phi_m) - \frac{\beta}{M} H(\bar\phi_{m+1}, \phi_m) \right].
$$

在极限 $M \rightarrow \infty$ 下，求和变积分：

$$
	\frac{\beta}{M}\sum_m \simeq \int_0^\beta d\tau,
$$

差分变微分：

$$
	\phi_{m+1}-\phi_m \simeq \frac{\beta}{M}\partial_\tau \phi(\tau).
$$

因此配分函数的表达式为：

$$
	Z = \int D[\bar\phi,\phi] \exp\left[-\bar\phi\partial_\tau \phi-H(\bar\phi,\phi) \right].
$$

其中泛函积分测度应理解成极限：

$$
	\int D[\bar\phi,\phi] = \lim_{M\rightarrow \infty} \prod_{m=1}^{M}\prod_{i_m} \frac{d\bar\phi_{m}^{i_m} d\phi_{m}^{i_m}}{\pi}.
$$

注意极限只对虚时间分割做连续化，而实空间指标可以是连续也可以是离散的，取决于哈密顿量是连续模型还是格点模型。我们这里将哈密顿量视作格点模型，但可以取连续极限化为连续模型。


### 费米相干态
费米子相干态(未归一化)定义为：

$$
	|\psi\rangle \equiv \exp\left(-\sum_i \psi_i \hat c_i^\dagger \right)|0\rangle = \bigotimes_i \left(|0\rangle_i - \psi_i|1\rangle_i \right).
$$

其中 $\psi_i$ 是 Grassmann 数，相干态之间的内积为：

$$
	\langle \psi_1 | \psi_2 \rangle = \exp(\bar\psi_1 \psi_2).
$$

相干态完备关系为：

$$
	\vec 1 = \int e^{-\bar\psi \psi} |\psi\rangle\langle\psi| \prod_i d\bar\psi_i d\psi_i.
$$

测度来源于 Grassmann 高斯积分：

$$
	\int \exp(-\bar\psi a \psi) d\bar\psi d\psi = a.
$$

同样的方法插入完备关系，最后配分函数的形式与波色情况相同：

$$
	Z = \int D[\bar\psi,\psi] \exp\left[-\bar\psi\partial_\tau \psi-H(\bar\psi,\psi) \right].
$$

不同之处在于泛函积分测度：

$$
	\int D[\bar\psi,\psi] = \lim_{M\rightarrow \infty} \prod_{m=1}^{M}\prod_{i_m} d\bar\psi_{m}^{i_m} d\psi_{m}^{i_m}.
$$

同时注意，费米场泛函积分中所取的场满足反周期边界条件。


### 自旋相干态
我们首先考虑单个自旋相干态，其定义为：

$$
	|g(\theta,\phi) \rangle \equiv e^{-i\phi \hat S_3} e^{-i\theta \hat S_2} \left|\uparrow \right\rangle.
$$

注意自旋相干态是归一化的。选择 SU(2) 的 Haar 测度 $dg$，完备关系为：

$$
	\vec 1 = \int dg\ |g(\theta,\phi)\rangle\langle g(\theta,\phi)|.
$$

自旋相干态的角参数 $(\theta,\phi)$ 是经典角动量方向，满足关系：

$$
	\langle g(\theta,\phi)|\hat{\vec S} |g(\theta,\phi)\rangle 
	= S \vec n(\theta,\phi)
	= S(\sin\theta \cos\phi,\sin\theta \sin\phi,\cos\theta).
$$

其中 $S$ 是自旋角动量大小，$\vec n$ 是自旋对应经典单位矢量。对单体哈密顿量 $\hat H(\hat S_i)$，仿照前面的方法，得到配分函数为：

$$
	Z = \int dg \exp\left[-\langle g|\partial_\tau g\rangle -S\cdot H(\vec n) \right].
$$

其中，含有虚时间的导数项有特殊的几何意义，记为：

$$
	S_{top}=\int_0^\beta \langle g|\partial_\tau g \rangle.
$$

为此项作用量贡献，首先考虑时间导数：

$$
\begin{eqnarray}
	\partial_\tau |g\rangle = -i \dot{\phi} \hat S_3 |g\rangle
	-i \dot{\theta} e^{-i\phi \hat S_3} \hat S_2 e^{i\phi \hat S_3}|g\rangle.
\end{eqnarray}
$$

利用自旋算符满足的关系：

$$
	e^{-i\phi\hat S_i} \hat S_j e^{i\phi\hat S_i}
	= \hat S_j \cos\phi + \epsilon_{ijk}\hat S_k \sin\phi.
$$

得到：

$$
	\int_0^\beta d\tau \langle g|\partial_\tau |g\rangle
	= -i S \int_0^\beta d\tau \dot{\phi} \cos\theta
	= i S \int_0^\beta d\tau \dot{\phi} (1-\cos\theta).
$$

注意上式中含有 $\dot\theta$ 的项互相抵消，第二个等号利用了周期边界条件。因此，作用量写为：

$$
	S[g] = S\int_0^\beta d\tau \left[H(\vec n)+i(1-\cos\theta)\dot{\phi} \right].
$$

以上的讨论可完全平行地推广到多自旋体系，相应地自旋多体相干态为单体相干态的直积：

$$
	|g(\theta,\phi)\rangle = \bigotimes_i |g(\theta_i,\phi_i )\rangle
$$

此时 $\theta,\phi$ 是 $N^d$ 个分量的矢量。配分函数为：

$$
	Z = \int D[g] e^{-S[g]},
$$

作用量为：

$$
	S[g] = S\int_0^\beta d\tau \left[H(\vec n)+i(1-\cos\theta)\partial_\tau \phi \right].
$$

形式与单体情形保持一致，至少相应的单分量函数 $\vec n,\theta,\phi$ 都变为了多分量函数。


## 时空傅立叶变换
对不显含时间、平移不变的哈密顿量，在动量空间考虑会大大化简问题。这时我们会用到傅立叶变换，然而傅立叶变换前面的归一化系数在不同的地方有着不同的规定。完全不加区分可能在计算过程中算错系数。因此我们在此采用 Atland & Simons, *Condensed Matter Field Theory* 书中的规定。

对于非相对论的多体系统而言，空间分量和时间分量的地位是不同的。特别的，场的时间分量是真正的连续函数，只是在建立路径积分是为了处理方便将其暂时离散化。而空间分量，本质上是离散的格点，当考虑长波低能行为时，将晶格常数视为无穷小量：$a \rightarrow 0$ ，由此将系统连续化。


### 函数的傅立叶系数
首先考虑函数的傅立叶变换，这里通常考虑的是有限体积内定义的连续函数。设函数 $f(\vec r,\tau)$ 是 $d+1$ 维空间的一个函数，其中 $\vec r$ 定义域为 $L^d$ 空间内，$\tau$ 定义域为 $[0,\beta]$，且函数满足周期边界条件(对费米场，满足反周期边界条件)。因此，其动量-频率空间的分量是离散的。傅立叶变换系数规定为：

$$
\begin{eqnarray}
	f_q &=& \int_0^\beta d\tau \int d^d r \ f(\vec r,\tau)e^{-iq\cdot r}, \\
	f(\vec r,\tau) &=& \frac{1}{\beta L^d} \sum_q f_q e^{i q\cdot r}。
\end{eqnarray}
$$

其中4动量 $q\equiv(\vec q,\omega_n)$，内积 $q\cdot r \equiv \vec q\cdot \vec r - \omega_n \tau$，对 $q$ 求和代表对 4 动量求和。

采用这种规定的一个优势是当取热力学极限 $L \rightarrow \infty$ 时，动量积分会变为一个紧凑的形式：

$$
	\frac{1}{L^d}\sum_{\vec q} = \int \frac{d^d q}{(2\pi)^d}
$$

同时，频率求和也往往带上系数 $1/\beta$：

$$
	\frac{1}{\beta}\sum_{\omega_n}h(\omega_n)
	= \frac{\xi}{2\pi i} \oint dz\ n_{\xi}(z) h(-iz).
$$


### 场的傅立叶系数
场 $\phi(\vec r,\tau)$ 的傅立叶变换系数定义与函数不同。我们将分别考虑空间和时间的傅立叶变换。对于空间变换，首先重申我们讨论的模型本质是格点模型，场的“空间”坐标本质上是离散的，即：

$$
	\phi(\vec r, \tau) = \phi(\vec r_i,\tau),
$$

其中 $i$ 是格点指标，而场的取值由降算符作用

$$
	\hat c_i |\phi(\tau) \rangle = \phi(\vec r_i,\tau) |\phi(\tau) \rangle
$$

来确定。因此场的傅立叶变换可以由算符的傅立叶变换得到：

$$
	\hat c_{\vec p}|\phi(\tau) \rangle = \phi(\vec p,\tau) |\phi(\tau) \rangle.
$$

而格点升降算符的傅立叶变换的约定为：

$$
\begin{eqnarray}
	\hat c_{\vec p} &=& \frac{1}{N^{d/2}}\sum_i e^{-i\vec p\cdot \vec r_i} \hat c_i, \\
	\hat c_i &=& \frac{1}{N^{d/2}}\sum_{\vec p} e^{i\vec p\cdot \vec r_i} \hat c_{\vec p}.
\end{eqnarray}
$$

这种约定保持了算符的正则对易关系，因此几乎是一种“canonical”的约定。在这种规定下，格点场的空间傅立叶变换规定为：

$$
\begin{eqnarray}
	\phi_{\vec p}(\tau) &=& \frac{1}{N^{d/2}}\sum_i e^{-i\vec p\cdot \vec r_i} \phi(\vec r_i,\tau), \\
	\phi(\vec r_i,\tau) &=& \frac{1}{N^{d/2}}\sum_{\vec p} e^{i\vec p\cdot \vec r_i} \phi_{\vec p}(\tau).
\end{eqnarray}
$$

现在考虑连续模型，这时我们对格点模型做连续近似：

$$
\begin{eqnarray}
	\phi(\vec r,\tau) &\simeq & \frac{1}{a^{d/2}}\phi(\vec r_i,\tau), \\
	a^d \sum_i &\simeq & \int d^d r.
\end{eqnarray}
$$

其中第一个等式中的归一化由

$$
	\sum_i \bar\phi(\vec r_i,\tau) \phi(\vec r_i, \tau) = \int d^d r \bar\phi(\vec r,\tau)\phi(\vec r, \tau)
$$

确定，由此连续场的傅立叶变换：

$$
\begin{eqnarray}
	\phi_{\vec p}(\tau) &=& \frac{1}{L^{d/2}} \int d^d r\ \phi(\vec r,\tau) e^{-i \vec p \cdot \vec r}, \\
	\phi(\vec r,\tau) &=& \frac{1}{L^{d/2}} \sum_{\vec p} \phi_{\vec p}(\tau) e^{i \vec p \cdot \vec r}.
\end{eqnarray}
$$

注意连续极限只改变了场 $\phi(\vec r_i,\tau)$，其傅立叶分量仍然是相同的离散值。

下面考虑频率空间的傅立叶变换。频率空间的傅立叶变换由不同的规定，Atland \& Simons 书中规定为：

$$
\begin{eqnarray}
	\phi_n &=& \frac{1}{\sqrt \beta} \int_0^\beta d\tau\ \phi(\tau) e^{i\omega_n \tau}, \\
	\phi(\tau) &=& \frac{1}{\sqrt \beta} \sum_{n} \phi_n e^{-i\omega_n \tau}.
\end{eqnarray}
$$

在这种规定下，自由粒子作用量

$$
	S = \int_0^\beta d\tau \ \bar\phi(\tau)(\partial_\tau + \epsilon) \phi(\tau)
$$

的傅立叶变换为：

$$
	S = \sum_n \bar\phi_n (-i\omega_n + \epsilon) \phi_n.
$$

注意此时傅立叶分量 $\phi_n$ 带有量纲 $[E^{-1/2}]$，高斯积分时需平衡量纲：

$$
	\int D[\bar\phi,\phi]\ e^{-S[\bar\phi,\phi]}
	\simeq \prod_n[\beta(-i\omega_n+\epsilon)]^{-\zeta}.
$$

以上的等价过程中，我们没有仔细考虑积分测度。由于积分测度可以相差任意大的(无量纲)系数。


### 算符在动量空间求迹
对于多个场的路径积分，有时会将部分高斯型的场积掉，在将结果放到指数上，得到有效作用量。考虑某个高斯型场泛函积分：

$$
	\int_0^\beta d\tau \int d^d r\ \bar\phi(\vec r,\tau) \hat F \phi(\vec r,\tau),
$$

其中算符 $\hat F$ 一般含有其他场。我们可以将这个高斯形的场积掉，结果为

$$
	\det[\beta \hat F ]^{-\zeta}.
$$

将行列式放到指数上，相当于在作用量上加上：

$$
	\Delta S
	= \ln\det\left[\beta \hat F \right]
	= \mathrm{Tr} \ln \left[\beta \hat F \right].
$$

在很多时候，我们都可以省略对数中的 $\beta$ 项。因为所需计算的量往往都依赖于对数项的导数，如当我们对算符 $\hat F$ 中包含的某参数 $\alpha$ 求导：

$$
	\frac{\partial}{\partial \alpha}\Delta S
	= \mathrm{Tr} \left[\hat F^{-1}\cdot \frac{\partial \hat F}{\partial \alpha}  \right].
$$

对于求迹的计算，我们采用正交完备基底：

$$
	|\vec p, \omega_n \rangle = \frac{1}{\sqrt{\beta L^d}} e^{i\vec p\cdot \vec r - i\omega_n \tau}.
$$

对任意算符 $\hat F$，其矩阵元为：

$$
	\langle \vec p_1, \omega_n| \hat F |\vec p_2, \omega_m \rangle
	= \frac{T}{L^d} \int_0^\beta d\tau \int d^d r\ e^{-i\vec p_1 \cdot \vec r+i\omega_n \tau} \hat F e^{i\vec p_2 \cdot \vec r-i\omega_m \tau}
$$

比如，对于时空求导算符 $\partial_\tau, \nabla$，其矩阵元为：

$$
\begin{eqnarray}
	\langle \vec p_1, \omega_n| \partial_\tau |\vec p_2, \omega_m \rangle
	&=& -i\omega_n \delta_{mn}\delta{\vec p_1 \vec p_2}, \\
	\langle \vec p_1, \omega_n| \nabla |\vec p_2, \omega_m \rangle
	&=& i\vec p_1 \delta_{mn}\delta{\vec p_1 \vec p_2}.
\end{eqnarray}
$$

而对于函数 $f(\vec r,\tau)$，矩阵元为：

$$
	\langle \vec p_1, \omega_n| f(\vec r,\tau) |\vec p_2, \omega_m \rangle
	= \frac{T}{L^d} f_{\vec p_1-\vec p_2, n-m}.
$$

其中 $f_{\vec p_1-\vec p_2, n-m}$ 是前面定义的普通函数的傅立叶分量。写下算符在动量空间中具体矩阵元，就可以将求迹表达式具体写下来。
