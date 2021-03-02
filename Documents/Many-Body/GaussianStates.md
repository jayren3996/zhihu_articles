# 费米子高斯态简介

费米系统中，高斯态指那些在 Grassmann 表示下具有高斯型的密度矩阵。对于自由费米体系，我们所考虑的态几乎都属于高斯态。用 Grassmann 数高斯型表示自由费米子密度矩阵不但形式上简洁，同时也简化了许多与密度矩阵相关物理量的计算。

## Majorana 算符的 Grassmann 表示

我们曾经介绍过，对于费米子的二次量子化哈密顿量， Majorana 算符和费米子算符是一组等价的算符基，互相相差一个线性变换：
$$
\hat{\omega}^a_j =\hat{c}_{i}+\hat{c}_{i}^{\dagger},\ 
\hat{\omega}^b_j = i(\hat{c}_{i}-\hat{c}_{i}^{\dagger}).
$$
我们把上标 $a,b$ 吸收到下标中。一般形式的哈密顿量可写为 Majorana 二次型：
$$
\hat H = \sum_{ij} H_{ij} \hat\omega_i \hat\omega_k,
$$
其中系数 $H_{ij}$ 为纯虚反对称矩阵。由于 Majorana 构成厄米算符完备基底，一般的厄米算符均可展开为 Majorana 算符的多项式形式：
$$
\hat{X}=\alpha\hat{I}+\sum_{p=1}^{2n}\sum_{1\le a_{1}<\cdots<a_{p}\le2n}\alpha_{a_{1}\cdots a_{p}}\hat{\omega}_{a_{1}}\cdots\hat{\omega}_{a_{p}}.
$$

这样的多项式全体同样构成一个代数，称为 Grassmann 代数 $\mathcal{G}_{2n}$. 我们可以定义 Majorana 算符多项式到 Grassmann 数间的一个线性同构映射 $\omega$，此映射相当于做替换 $\hat{\omega}_{i}\rightarrow\theta_{i}$:
$$
\omega:\ 
\hat X \mapsto \alpha + \sum_{1\le a_{1}<\cdots<a_{p}\le2n}\alpha_{a_{1}\cdots a_{p}}\theta_{a_{1}}\cdots \theta_{a_{p}}.
$$
称之为算符 $\hat X$ 的 Grassmann 表示，注意这个映射虽然是两个线性空间的同构，但它们内部的乘法关系是不同的，比如 
$$
\hat{\omega}_{i}^{2}=\mathbb I,\ 
\theta_{i}^{2}=0.
$$
因此这两种代数结构是不同的。

Grassmann 代数的意义在于可以在其上定义微积分：
$$
\begin{eqnarray}
	\frac{\partial}{\partial\theta_{i}}\theta_{j} &=& \int d\theta_{i}\theta_{j}=\delta_{ij}, \\
	\frac{\partial}{\partial\theta_{i}}1 &=& \int d\theta_{i}1=0.
\end{eqnarray}
$$
和我们在处理费米子路径积分问题类似，引入 Grassmann 数可以将一些算符运算转化为对 Grassmann 数的微积分。其中尤其有用的一个公式为：
$$
Tr\left(\hat{X}\hat{Y}\right)=\left(-2\right)^{n}\int D\theta D\mu e^{\theta^{T}\mu}\omega\left(\hat{X},\theta\right)\omega\left(\hat{Y},\mu\right)
$$
其中
$$
\int D\theta=\int d\theta_{n}\cdots\int d\theta_{1},\ 
\int D\mu =\int d\mu_{n}\cdots\int d\mu_{1}
$$
我们针对多项式中的一项证明此公式：
$$
Tr[\hat\omega_1 \cdots \hat\omega_m \hat\omega_1 \cdots \hat\omega_m] = 2^{n} (-1)^{m(m-1)/2}.
$$
而相应 Grassmann 积分中非零成分为：
$$
\begin{eqnarray}
I &=& 
\int D\theta D\mu \ \theta_1\cdots\theta_m (\theta_{m+1}\mu_{m+1}\cdots \theta_{2n}\mu_{2n})\mu_1 \cdots \mu_m \\
&=& \int D\theta D\mu \ \theta_1\cdots\theta_{2n} \mu_{m+1}\cdots\mu_{2n}\mu_1\cdots\mu_{m} \\
&=& (-1)^{4n^2} \int D\mu \ \mu_{m+1}\cdots\mu_{2n}\mu_1\cdots\mu_{m} \\
&=& (-1)^{(m+2n-1)(2n-m)/2}
\end{eqnarray}
$$
两者系数之比为：
$$
2^n (-1)^{(4n^2-m^2-2n+m-m^2+m)/2} = (-2)^n.
$$
证毕。

## 费米子高斯态

如果一个密度算符的 Grassmann 表示具有高斯型：
$$
\omega\left(\hat{\rho},\theta\right)=\frac{1}{2^{n}}\exp\left(\frac{i}{2}\theta^{T}M\theta\right)
$$
其中 $M$  是一个实反对称矩阵，我们称具有这种态为高斯态。注意此高斯形式是在 Grassmann 表示下写出的，不能直接将此形式下的 Grassmann 变量换回 Majorana 算符。

首先我们要说明高斯态是怎样的一些态。为更好说明这点，我们将系数矩阵化为标准形式。对于实反对称矩阵 $M$，我们可以找到一组实正交矩阵 $R$ 将矩阵 $M$ 化为标准型：
$$
RMR^{T} = i\sigma_y \otimes 
\mathrm{diag}(\lambda_1,\cdots,\lambda_n).
$$
在对应的变换基底 $\mu = R\theta$ 下，高斯态写为：
$$
\omega\left(\hat{\rho},\theta\right)
=\frac{1}{2^{n}}\prod_{j}\exp\left(i\lambda_j\mu_{j}^a \mu_{j}^b\right)
=\frac{1}{2^{n}}\prod_{j}\left(1+i\lambda_{j} \mu_{j}^a \mu_{j}^b\right).
$$
换到占据表象，定义新的费米子算符：
$$
\tilde c_i = \frac{\mu_i^a-\mu_i^b}{2},\ 
\tilde c_i^\dagger = \frac{\mu_i^a+\mu_i^b}{2}.
$$
此时密度算符为：
$$
\begin{eqnarray}
\hat{\rho}
&=&\frac{1}{2^{n}}\prod_{j}\left(1-\lambda_{j}\tilde{c}_{j}^{\dagger}\tilde{c}_{j}+\lambda_{j}\tilde{c}_{j}\tilde{c}_{j}^{\dagger}\right) \\
&=&\bigotimes_j \left(\frac{1+\lambda_j}{2}|0\rangle\langle 0|+\frac{1-\lambda_j}{2}|1\rangle\langle 1|\right)
\end{eqnarray}
$$
从这里我们看到高斯态与无相互作用系统的关系。在准粒子表象下，无相互作用费米子哈密顿量写为：
$$
\hat H = \sum_n \epsilon_n \tilde c_n^\dagger \tilde c_n.
$$
零温基态对应 $\lambda_n=0$，有限温混态对应 $\lambda_n = \frac{1}{2} \tanh(\frac{1}{2}\beta\epsilon_n)$. 即所有自由费米子的基态和有限温态均是高斯态。

## 高斯态性质

**关联函数**

按定义积分，可验证高斯态两点关联函数为：
$$
\left\langle \hat{\omega}_{i} \hat{\omega}_{j}\right\rangle-\delta_{ij} = -iM_{ij}.
$$
也就是说，对于高斯态，我们只需要计算体系的关联函数就可以完全确定这个态的密度矩阵。

**含时演化**

另外，在 Majorana 表示下，哈密顿量在标准算符基底下写为分块形式：
$$
\hat H = i\lambda_n \hat\omega_n^a \hat\omega_n^b.
$$
此时时间演化相当于在每个子空间做 $SO(2)$ 转动，这样的转动保持密度算符的高斯型。

**约化密度矩阵**

现在我们考虑对高斯态做 partial trace 得到子系统的密度矩阵。Partial trace 在 Grassmann 表示下相当于做积分：
$$
\frac{(-1)^m}{2^{n-m}}\int D \theta_BD\mu_B \ e^{\theta_B^T\mu_B}e^{i\theta^TM \theta}
=\frac{1}{2^{n-m}} e^{i\theta_A^T M_A \theta_A},
$$
其中 $\theta_A$ 代表除去系统 $B$ 的剩余指标。因此子系统也为高斯态。同时，高斯态的熵可写为：
$$
S=\sum_n S_n = -\sum_n
\left(\frac{1+\lambda_n}{2}\right)\ln\left(\frac{1+\lambda_n}{2}\right)
+ \left(\frac{1-\lambda_n}{2}\right)\ln\left(\frac{1-\lambda_n}{2}\right).
$$
也就是说，对高斯态，大系统的两点关联完全确定了子系统纠缠熵。