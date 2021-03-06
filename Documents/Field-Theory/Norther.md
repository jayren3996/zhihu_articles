# 场论中的对称性


## 连续对称性与守恒律
### 无穷小变换
对称性可以被定义为坐标和场的一组变换，这组变换使得系统在任何区间内的作用量不变，因此在对称变换下，系统的运动规律不变。我们这里只考虑连续对称性，考虑坐标和场的无穷小变换： 

$$
\begin{eqnarray}
x^{\mu} & \rightarrow & x'^{\mu}=x^{\mu}+\delta x^{\mu},\\
\phi_{r}\left(x\right) & \rightarrow & \phi'_{r}\left(x'\right)=\phi_{r}\left(x\right)+\delta\phi_{r}\left(x\right),
\end{eqnarray}
$$

注意场的变换定义成由坐标变换前后对应的同一点上，因此与坐标变换无关。也就是说一个连续对称性包含坐标和场这两个独立的无穷小变换，其中如果一个对称变换完全由坐标变换造成，我们称之为时空对称性；反之，如果一个对称变换完全由场变化造成，我们称之为内秉对称性。
一个连续对称性要求，在一组无穷小变换下，作用量积分在任何区域内不变，即： 

$$
\int_{\Omega'}d^{4}x'\mathcal{L}'\left(x'\right)=\int_{\Omega}d^{4}x\mathcal{L}\left(x\right),
$$

其中： 

$$
\mathcal{L}'\left(x'\right)=\mathcal{L}\left(\phi'_{r}\left(x'\right),\partial\phi'_{r}/\partial x'^{\mu}\right),
$$

上式中 $\Omega'$ 是原区域 $\Omega$ 经过坐标变换后对应的区域。 


### 诺特定理
诺特定理告诉我们一个连续对称性对应一个守恒量。我们在这一节中将证明这点。为了证明的方便，我们对场定义一个总变分： 

$$
\tilde{\delta}\phi_{r}\left(x\right):=\phi'_{r}\left(x\right)-\phi_{r}\left(x\right),
$$

这个变分实际上包含了场的内秉变化和坐标变换，它和场内秉变化的关系为(保留至一阶意义下)： 

$$
\begin{eqnarray}
\tilde{\delta}\phi_{r}\left(x\right) & = & \phi'_{r}\left(x\right)-\phi'_{r}\left(x'\right)+\phi'_{r}\left(x'\right)-\phi_{r}\left(x\right)\nonumber \\
 & = & \delta\phi_{r}\left(x\right)-\delta x^{\mu}\frac{\partial}{\partial x^{\mu}}\phi'\left(x\right)\nonumber \\
 & \eqsim & \delta\phi_{r}\left(x\right)-\delta x^{\mu}\frac{\partial}{\partial x^{\mu}}\phi\left(x\right),
\end{eqnarray}
$$

这个变分定义在坐标的同一点上，因此可以和微分算符对易，这使得数学处理更加方便。接下来我们写出作用力积分： 

$$
\begin{eqnarray}
\delta S & = & \int_{\Omega'}d^{4}x'\mathcal{L}'\left(x'\right)-\int_{\Omega}d^{4}x\mathcal{L}\left(x\right)\nonumber \\
 & = & \int_{\Omega}d^{4}x\delta\mathcal{L}\left(x\right)+\int_{\Omega'}d^{4}x'\mathcal{L}\left(x\right)-\int_{\Omega}d^{4}x\mathcal{L}\left(x\right).
\end{eqnarray}
$$

为计算第二第三项，我们需要首先计算雅可比矩阵(保留至一阶意义下)： 

$$
\left|\frac{\partial x'^{\mu}}{\partial x^{\nu}}\right|=\left|\delta_{\nu}^{\mu}+\frac{\partial\delta x^{\mu}}{\partial x^{\nu}}\right|=\left(1+\frac{\partial\delta x^{\mu}}{\partial x^{\mu}}\right).
$$

因此第二第三项可以化简为: 

$$
\begin{eqnarray}
\int_{\Omega'}d^{4}x'\mathcal{L}\left(x\right)-\int_{\Omega}d^{4}x\mathcal{L}\left(x\right) & = & \int_{\Omega}d^{4}x\left(1+\frac{\partial\delta x^{\mu}}{\partial x^{\mu}}\right)\mathcal{L}\left(x\right)-\int_{\Omega}d^{4}x\mathcal{L}\left(x\right)\nonumber \\
 & = & \int_{\Omega}d^{4}x\frac{\partial\delta x^{\mu}}{\partial x^{\mu}}\mathcal{L}\left(x\right).
\end{eqnarray}
$$

我们将上述变分式写成包含总变分的形式: 

$$
\begin{eqnarray}
\delta S & = & \int_{\Omega}d^{4}x\left[\delta\mathcal{L}\left(x\right)+\frac{\partial\delta x^{\mu}}{\partial x^{\mu}}\mathcal{L}\left(x\right)\right]\nonumber \\
 & = & \int_{\Omega}d^{4}x\left[\tilde{\delta}\mathcal{L}\left(x\right)+\delta x^{\mu}\frac{\partial}{\partial x^{\mu}}\mathcal{L}\left(x\right)+\frac{\partial\delta x^{\mu}}{\partial x^{\mu}}\mathcal{L}\left(x\right)\right]\nonumber \\
 & = & \int_{\Omega}d^{4}x\left[\tilde{\delta}\mathcal{L}\left(x\right)+\frac{\partial}{\partial x^{\mu}}\left(\mathcal{L}\left(x\right)\delta x^{\mu}\right)\right].
\end{eqnarray}
$$

上面定义的总变分表现地像一个“真正的”变分，将它作用于拉氏量密度上得到: 

$$
\begin{eqnarray}
\tilde{\delta}\mathcal{L}\left(x\right) & = & \frac{\partial\mathcal{L}}{\partial\left(\partial_{\mu}\phi_{r}\right)}\tilde{\delta}\left(\partial_{\mu}\phi_{r}\right)+\frac{\partial\mathcal{L}}{\partial\phi_{r}}\tilde{\delta}\phi_{r}\left(x\right)\\
 & = & \partial_{\mu}\left[\frac{\partial\mathcal{L}}{\partial\left(\partial_{\mu}\phi_{r}\right)}\tilde{\delta}\phi_{r}\left(x\right)\right]+\left[\frac{\partial\mathcal{L}}{\partial\phi_{r}}-\partial_{\mu}\left(\frac{\partial\mathcal{L}}{\partial\left(\partial_{\mu}\phi_{r}\right)}\right)\right]\tilde{\delta}\phi_{r}\left(x\right).
 \end{eqnarray}
$$

代入上式，并利用欧拉-拉格朗日方程化简: 

$$
\begin{eqnarray}
\delta S & = & \int_{\Omega}d^{4}x\partial_{\mu}\left[\frac{\partial\mathcal{L}}{\partial\left(\partial_{\mu}\phi_{r}\right)}\tilde{\delta}\phi_{r}\left(x\right)+\mathcal{L}\left(x\right)\delta x^{\mu}\right]\nonumber \\
 & = & \int_{\Omega}d^{4}x\partial_{\mu}\left[\frac{\partial\mathcal{L}}{\partial\left(\partial_{\mu}\phi_{r}\right)}\delta\phi_{r}\left(x\right)-\left(\frac{\partial\mathcal{L}}{\partial\left(\partial_{\mu}\phi_{r}\right)}\frac{\partial\phi_{r}}{\partial x^{\nu}}\delta x^{\nu}-\mathcal{L}\left(x\right)\delta x^{\mu}\right)\right]\nonumber \\
 & = & \int_{\Omega}d^{4}x\partial_{\mu}\left[\frac{\partial\mathcal{L}}{\partial\left(\partial_{\mu}\phi_{r}\right)}\delta\phi_{r}\left(x\right)-\left(\frac{\partial\mathcal{L}}{\partial\left(\partial_{\mu}\phi_{r}\right)}\frac{\partial\phi_{r}}{\partial x^{\nu}}-{\delta^{\mu}}_{\nu}\mathcal{L}\left(x\right)\right)\delta x^{\nu}\right].
\end{eqnarray}
$$

对称性要求对所有 $\Omega$ ，$\delta S=0$ ，所以被积函数应为 0 ，这样，我们就得到了一个无散度的流： 

$$
f^{\mu}:=\frac{\partial\mathcal{L}}{\partial\left(\partial_{\mu}\phi_{r}\right)}\delta\phi_{r}\left(x\right)-\left(\frac{\partial\mathcal{L}}{\partial\left(\partial_{\mu}\phi_{r}\right)}\frac{\partial\phi_{r}}{\partial x^{\nu}}-{\delta^{\mu}}_{\nu}\mathcal{L}\left(x\right)\right)\delta x^{\nu},
$$


$$
\partial_{\mu}f^{\mu}=\partial_{t}f^{0}+\nabla\cdot\mathbf{f}=0.
$$

这个无散流给出了系统守恒量： 

$$
Q:=\int d^{3}xf^{0}.
$$


## 能量-动量张量
### 时空平移不变性
第一个例子是我们提到过的时空对称性，这个对称性只由时空平移不变形生成，无穷小变换可以写为： 

$$
\begin{cases}
\delta x^{\mu} & =\epsilon^{\mu\nu}\alpha_{\nu}\\
\delta\phi_{r} & =0
\end{cases}.
$$

考虑一个沿着 $x^{\nu}$ 方向的无穷小平移，对称性给出的守恒流为： 

$$
f^{\mu}=-\left(\frac{\partial\mathcal{L}}{\partial\left(\partial_{\mu}\phi_{r}\right)}\frac{\partial\phi_{r}}{\partial x^{\nu}}-{\delta^{\mu}}_{\nu}\mathcal{L}\left(x\right)\right)\alpha_{\nu}.
$$

我们据此定义能量-动量张量: 

$$
{\Theta^{\mu}}_{\nu}:=\frac{\partial\mathcal{L}}{\partial\left(\partial_{\mu}\phi_{r}\right)}\frac{\partial\phi_{r}}{\partial x^{\nu}}-{\delta^{\mu}}_{\nu}\mathcal{L}\left(x\right),
$$

能量量张量可以直接给出守恒量，时间方向的平移不变性给出守恒量： 

$$
E=\int d^{3}x{\Theta^{0}}_{0}=\int d^{3}x\left[\pi_{r}\left(x\right)\dot{\phi}_{r}\left(x\right)-\mathcal{L}\left(x\right)\right].
$$

这正是哈密顿量密度在空间积分，也即能量守恒。而空间方向平移不变性给出另外3个守恒量： 

$$
P_{\nu}=\int d^{3}x{\Theta^{0}}_{\nu}=\int d^{3}x\pi_{r}\left(x\right)\partial_{\nu}\phi_{r}\left(x\right).
$$

这是场的动量密度积分，即动量守恒。 


### 电磁场中的能动张量
电磁场(无源)的拉氏量密度定义为：

$$
\mathcal{L}=-\frac{1}{4}F_{\mu\nu}F^{\mu\nu}.
$$

其中电磁场张量

$$
\begin{eqnarray}
F^{\mu\nu} & = & \partial^{\mu}A^{\nu}-\partial^{\nu}A^{\mu}.\\
 & = & \left(\begin{array}{cccc}
0 & -E^{1} & -E^{2} & -E^{3}\\
E^{1} & 0 & -B^{3} & B^{2}\\
E^{2} & B^{3} & 0 & -B^{1}\\
E^{3} & -B^{2} & B^{1} & 0
\end{array}\right)
\end{eqnarray}
$$

以 $A^{\mu}$ 为正则坐标，经过同样的计算可以得到电磁场的能动张量：

$$
\Theta^{\mu\nu}=\frac{1}{4}g^{\mu\nu}F_{\rho\sigma}F^{\rho\sigma}-F^{\mu\sigma}\partial^{\nu}A_{\sigma}.
$$

该能动张量给出了电磁场的能量和动量：

$$
\begin{eqnarray}
E & = & \int d^{3}x\Theta^{00}=\int d^{3}x\frac{\vec{E}^{2}+\vec{B}^{2}}{2},\\
P^{i} & = & \int d^{3}x\Theta^{0i}=\int d^{3}x\left(\vec{E}\times\vec{B}\right)^{i}.
\end{eqnarray}
$$


## 守恒荷
### 内秉对称性
第二个例子是场本身的内秉对称性。考虑场本身的无穷小变换： 

$$
\phi\left(x\right)\rightarrow\phi'\left(x'\right)=\phi\left(x\right)+i\epsilon\lambda_{rs}\phi_{s}\left(x\right).
$$

该变换对应的守恒流为：

$$
f^{\mu}=\frac{\partial\mathcal{L}}{\partial\left(\partial_{\mu}\phi_{r}\right)}\delta\phi_{r}=i\epsilon\frac{\partial\mathcal{L}}{\partial\left(\partial_{\mu}\phi_{r}\right)}\lambda_{rs}\phi_{s}\left(x\right).
$$

相应的守恒量为： 

$$
Q=\int d^{3}x\pi_{r}\left(x\right)\lambda_{rs}\phi_{s}\left(x\right).
$$


### U(1) 守恒荷
其中一个重要的情况就是一些复场中的 $U\left(1\right)$ 对称性:

$$
\begin{eqnarray}
\phi' & = & e^{-i\epsilon}\phi,\\
\phi'^{*} & = & e^{i\epsilon}\phi^{*}.
\end{eqnarray}
$$

这种变换对应的守恒量称为场携带的守恒荷: 

$$
Q=\left(-i\right)\int d^{3}x\left[\pi\left(x\right)\phi\left(x\right)-\pi^{*}\left(x\right)\phi^{*}\left(x\right)\right].
$$


## 角动量
### 洛伦兹对称性
一个洛伦兹协变的理论要求作用量积分在洛伦兹变换下不变。洛伦兹变换对应的无穷小变换为：

$$
\begin{eqnarray}
x'^{\mu} & = & x^{\mu}+\delta\omega^{\mu\nu}x_{\nu}.\\
\phi'_{r}\left(x'\right) & = & \left(1-\frac{i}{2}\delta\omega_{\mu\nu}\left(J^{\mu\nu}\right)_{rs}\right)\phi_{s}\left(x\right),
\end{eqnarray}
$$

注意其中既有坐标的变换，又有场的变换。对坐标的洛伦兹变换保持内积不变，因此：

$$
\begin{eqnarray}
x'^{\mu}x'_{\mu} & = & \left(x^{\mu}+\delta\omega^{\mu\nu}x_{\nu}\right)\left(x_{\mu}+\delta{\omega_{\mu}}^{\sigma}x_{\sigma}\right)\nonumber \\
 & = & x^{\mu}x_{\mu}+\left(\delta\omega_{\mu\nu}+\delta\omega_{\nu\mu}\right)x_{\mu}x_{\nu}+O\left(\delta^{2}\right),
\end{eqnarray}
$$

这说明 $\delta\omega_{\mu\nu}$ 是反对称的。相应的，场变换的生成元 $\mathcal{J}^{\mu\nu}$
也是反对称的。因此洛伦兹群只包含6个生成元，对应3个空间转动和三个方向的boost. 代入诺特流表达式中：

$$
\begin{eqnarray}
f^{\mu} & = & -\frac{i}{2}\frac{\partial\mathcal{L}}{\partial\left(\partial_{\mu}\phi_{r}\right)}\delta\omega_{\nu\lambda}\left(J^{\nu\lambda}\right)_{rs}\phi_{s}\left(x\right)-\Theta^{\mu\nu}\delta\omega_{\nu\lambda}x^{\lambda}\nonumber \\
 & = & \frac{1}{2}\delta\omega_{\nu\lambda}\left[-i\frac{\partial\mathcal{L}}{\partial\left(\partial_{\mu}\phi_{r}\right)}\left(J^{\nu\lambda}\right)_{rs}\phi_{s}\left(x\right)-\Theta^{\mu\nu}x^{\lambda}+\Theta^{\mu\nu}x^{\lambda}\right]\nonumber \\
 & := & \frac{1}{2}\delta\omega_{\nu\lambda}M^{\mu\nu\lambda},
\end{eqnarray}
$$

我们得到了一个守恒流：

$$
M^{\mu\nu\lambda}:=-i\frac{\partial\mathcal{L}}{\partial\left(\partial_{\mu}\phi_{r}\right)}\left(J^{\nu\lambda}\right)_{rs}\phi_{s}\left(x\right)-\Theta^{\mu\nu}x^{\lambda}+\Theta^{\mu\nu}x^{\lambda}.
$$

相应的守恒量为： 

$$
\begin{eqnarray}
M^{\nu\lambda} & = & \int d^{3}xM^{0\nu\lambda}\nonumber \\
 & = & \int d^{3}x\left[-i\pi_{r}\left(J^{\nu\lambda}\right)_{rs}\phi_{s}-\Theta^{0\nu}x^{\lambda}+\Theta^{0\nu}x^{\lambda}\right]\nonumber \\
 & = & \int d^{3}x\left[-i\pi_{r}\left(J^{\nu\lambda}\right)_{rs}\phi_{s}-\left(\pi_{r}x^{\lambda}\partial^{\nu}\phi_{r}-x^{\lambda}g^{0\nu}\mathcal{L}\right)+\left(\pi_{r}x^{\nu}\partial^{\lambda}\phi_{r}-x^{\nu}g^{0\lambda}\mathcal{L}\right)\right]\nonumber \\
 & = & \int d^{3}x\left[-i\pi_{r}\left(J^{\nu\lambda}\right)_{rs}\phi_{s}+\pi_{r}\left(x^{\nu}\partial^{\lambda}-x^{\lambda}\partial^{\nu}\right)\phi_{r}+\left(x^{\lambda}g^{0\nu}-x^{\lambda}g^{0\mu}\right)\mathcal{L}\right].
\end{eqnarray}
$$

考虑空间分量，此守恒量对应场的角动量，其中我们还可以将角动量拆成坐标部分和内秉部分，分别对应轨道角动量和自旋角动量：

$$
\begin{eqnarray}
L^{ij} & := & \int d^{3}x\left[\pi_{r}\left(x\right)\left(x^{i}\partial^{j}-x^{j}\partial^{i}\right)\phi_{r}\left(x\right)\right],\\
S^{ij} & := & \left(-i\right)\int d^{3}x\left[\pi_{r}\left(x\right)\left(J^{ij}\right)_{rs}\phi_{s}\left(x\right)\right].
\end{eqnarray}
$$


### 电磁场的自旋角动量
电磁场拉氏量密度代入角动量表达式后得到：

$$
M^{ij}=\Theta^{0i}x^{j}-\Theta^{0j}x^{i}+\left(F^{0j}A^{i}-F^{0i}A^{j}\right).
$$

其中内秉自旋部分角动量为：

$$
\begin{eqnarray}
S^{ij} & = & \int d^{3}x\left(E^{i}A^{j}-E^{j}A^{i}\right),\\
\vec{S} & = & \int d^{3}\vec{E}\times\vec{A}.
\end{eqnarray}
$$
