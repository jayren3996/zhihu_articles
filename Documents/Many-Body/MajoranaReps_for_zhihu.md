# Bogoliubov 变换与 Majorana 表示

在处理费米子二次型哈密顿量中，有时会遇到成对出现产生或湮灭算符  <img src="https://www.zhihu.com/equation?tex=c_i c_j, c_i^\dagger c_j^\dagger" alt="c_i c_j, c_i^\dagger c_j^\dagger" class="ee_img tr_noresize" eeimg="1"> ，其中最常见的是 BCS 平均场理论中的超导配对项。对于这一类哈密顿量，我们可以用 Bogoliubov 变换求得系统的准粒子态以及能谱。在 BCS 模型中我们只引入了一组产生湮灭算符的组合。本文我们将考虑一般形式的含配对项 (BdG) 哈密顿量的对角化方法，并通过引入 Majorana 算符给出更为简单的算法。

## 从 BCS 模型到多粒子 BdG 型哈密顿量

BCS 平均场模型相当于在自由费米子球模型基础上加入了一超导配对项项的微扰作用。平移不变性未被破坏的前提下在动量空间的哈密顿量可记为 BdG 形式：


<img src="https://www.zhihu.com/equation?tex=\hat{H} = \frac{1}{2}\sum_k \underline \Psi_k^\dagger 
\left(\begin{array}{cc}
	\epsilon_k & \Delta_k \\
	\Delta_{k} & -\epsilon_{k}
\end{array}\right)
\underline \Psi_k,
" alt="\hat{H} = \frac{1}{2}\sum_k \underline \Psi_k^\dagger 
\left(\begin{array}{cc}
	\epsilon_k & \Delta_k \\
	\Delta_{k} & -\epsilon_{k}
\end{array}\right)
\underline \Psi_k,
" class="ee_img tr_noresize" eeimg="1">

其中  <img src="https://www.zhihu.com/equation?tex=\underline\Psi_k = (c_k, c_{-k}^\dagger)^T" alt="\underline\Psi_k = (c_k, c_{-k}^\dagger)^T" class="ee_img tr_noresize" eeimg="1">  称为 Nambu spinor. 此哈密顿量的特征是满足粒子-空穴对称性  <img src="https://www.zhihu.com/equation?tex=C=\sigma_x K" alt="C=\sigma_x K" class="ee_img tr_noresize" eeimg="1"> ， <img src="https://www.zhihu.com/equation?tex=K" alt="K" class="ee_img tr_noresize" eeimg="1">  是复共轭操作。此对称性在算符基底上的作用为：


<img src="https://www.zhihu.com/equation?tex=C \cdot \underline\Psi_k = \sigma^x \cdot \underline\Psi_{-k}^*
" alt="C \cdot \underline\Psi_k = \sigma^x \cdot \underline\Psi_{-k}^*
" class="ee_img tr_noresize" eeimg="1">

在哈密顿量上，表现为：


<img src="https://www.zhihu.com/equation?tex=C H_{k}C^{-1}=\sigma^x \cdot H^*_{k} \cdot\sigma^x=-H_{-k}.
" alt="C H_{k}C^{-1}=\sigma^x \cdot H^*_{k} \cdot\sigma^x=-H_{-k}.
" class="ee_img tr_noresize" eeimg="1">

我们需要在此动量  <img src="https://www.zhihu.com/equation?tex=k" alt="k" class="ee_img tr_noresize" eeimg="1">  子空间内寻找一个幺正变换  <img src="https://www.zhihu.com/equation?tex=T_k" alt="T_k" class="ee_img tr_noresize" eeimg="1"> ，满足：

1. 保持费米算符的反对易关系;
2. 满足此哈密顿量的粒子-空穴对称性 ( <img src="https://www.zhihu.com/equation?tex=C T_k C^{-1} = T_{-k}" alt="C T_k C^{-1} = T_{-k}" class="ee_img tr_noresize" eeimg="1"> );
3. 哈密顿量是完全对角化的。

满足条件 1, 2 的变换的一般形式为：


<img src="https://www.zhihu.com/equation?tex=\tilde{\underline{\Psi}}_k =
\left(\begin{array}{c}
	d_k \\
	d_{-k}^\dagger
\end{array}\right) = 
\left(\begin{array}{cc}
	u_k & v_{-k}^* \\
	v_k & u_{-k}^*
\end{array}\right)
\left(\begin{array}{c}
	c_k \\
	c_{-k}^\dagger
\end{array}\right),
" alt="\tilde{\underline{\Psi}}_k =
\left(\begin{array}{c}
	d_k \\
	d_{-k}^\dagger
\end{array}\right) = 
\left(\begin{array}{cc}
	u_k & v_{-k}^* \\
	v_k & u_{-k}^*
\end{array}\right)
\left(\begin{array}{c}
	c_k \\
	c_{-k}^\dagger
\end{array}\right),
" class="ee_img tr_noresize" eeimg="1">

其中  <img src="https://www.zhihu.com/equation?tex=|u_k|^2+|v_k|^2 = 1" alt="|u_k|^2+|v_k|^2 = 1" class="ee_img tr_noresize" eeimg="1"> . 将上述形式代回，令非对角元为零，确定对角化条件为：


<img src="https://www.zhihu.com/equation?tex=\begin{eqnarray} 
u_k &=& \sqrt{\frac{1}{2}+\frac{\epsilon_{k}}{2\sqrt{\epsilon_{k}^{2}+\Delta_{k}^{2}}}}, \\ 
v_k &=& -\sqrt{\frac{1}{2}-\frac{\epsilon_{k}}{2\sqrt{\epsilon_{k}^{2}+\Delta_{k}^{2}}}}.
\end{eqnarray}
" alt="\begin{eqnarray} 
u_k &=& \sqrt{\frac{1}{2}+\frac{\epsilon_{k}}{2\sqrt{\epsilon_{k}^{2}+\Delta_{k}^{2}}}}, \\ 
v_k &=& -\sqrt{\frac{1}{2}-\frac{\epsilon_{k}}{2\sqrt{\epsilon_{k}^{2}+\Delta_{k}^{2}}}}.
\end{eqnarray}
" class="ee_img tr_noresize" eeimg="1">

最终哈密顿量在准粒子算符下变为简单的对角形式：


<img src="https://www.zhihu.com/equation?tex=H_k = \left(\begin{array}{cc}
	\sqrt{\epsilon_k^2+\Delta_k^2} & 0 \\
	0 & -\sqrt{\epsilon_k^2+\Delta_k^2}
\end{array}\right).
" alt="H_k = \left(\begin{array}{cc}
	\sqrt{\epsilon_k^2+\Delta_k^2} & 0 \\
	0 & -\sqrt{\epsilon_k^2+\Delta_k^2}
\end{array}\right).
" class="ee_img tr_noresize" eeimg="1">

需要注意的是，超导配对项的引入破坏了粒子数守恒。直接的结果是真空态发生移动，即准粒子的真空态，也是 BCS 基态，不再是原先费米子算符的真空态。而是由方程  <img src="https://www.zhihu.com/equation?tex=d_{k}\left|G\right\rangle =0,\ \forall k" alt="d_{k}\left|G\right\rangle =0,\ \forall k" class="ee_img tr_noresize" eeimg="1">  确定的态。

以上的讨论仅涉及两分量场内部的正则变化，我们直接利用待定系数法就确定了正则变换的系数。然而对于更一般的情况，即场分量较多的情形，我们需要一个更为系统的手续。一下我们将讨论一般 BdG 型哈密顿量的对角化方案，我们首先讨论实空间情形，再考虑有平移不变性的体系。
## 实空间 BdG 型哈密顿量及其对角化

实空间 BdG 格点哈密顿量一般形式为：


<img src="https://www.zhihu.com/equation?tex=\hat H = \sum_{ij}A_{ij}c_i^\dagger c_j+\frac{1}{2}\sum_{ij}(B_{ij}c_i^\dagger c_j^\dagger-B_{ij}^*c_ic_j).
" alt="\hat H = \sum_{ij}A_{ij}c_i^\dagger c_j+\frac{1}{2}\sum_{ij}(B_{ij}c_i^\dagger c_j^\dagger-B_{ij}^*c_ic_j).
" class="ee_img tr_noresize" eeimg="1">

其中  <img src="https://www.zhihu.com/equation?tex=A" alt="A" class="ee_img tr_noresize" eeimg="1">  为厄米矩阵， <img src="https://www.zhihu.com/equation?tex=B" alt="B" class="ee_img tr_noresize" eeimg="1">  为反对称矩阵。对此我们将 Nambu spinor 扩展为：


<img src="https://www.zhihu.com/equation?tex=\underline\Psi = (c_1,\cdots,c_N,c_1^\dagger,\cdots,c_N^\dagger)^T.
" alt="\underline\Psi = (c_1,\cdots,c_N,c_1^\dagger,\cdots,c_N^\dagger)^T.
" class="ee_img tr_noresize" eeimg="1">

此时哈密顿量可形式化记为：


<img src="https://www.zhihu.com/equation?tex=\hat H = \frac{1}{2}\sum_{i,j=1}^{2N} \Psi_i^\dagger H_{ij} \Psi_j + \frac{1}{2}Tr[A].
" alt="\hat H = \frac{1}{2}\sum_{i,j=1}^{2N} \Psi_i^\dagger H_{ij} \Psi_j + \frac{1}{2}Tr[A].
" class="ee_img tr_noresize" eeimg="1">

其中哈密顿量矩阵有分块形式：


<img src="https://www.zhihu.com/equation?tex=H = 
\left(\begin{array}{cc}
	A & B \\
	-B^* & -A^*
\end{array}\right).
" alt="H = 
\left(\begin{array}{cc}
	A & B \\
	-B^* & -A^*
\end{array}\right).
" class="ee_img tr_noresize" eeimg="1">

实空间粒子-空穴对称性  <img src="https://www.zhihu.com/equation?tex=\mathcal C" alt="\mathcal C" class="ee_img tr_noresize" eeimg="1">  再 Nambu spinor 上作用为：


<img src="https://www.zhihu.com/equation?tex=\mathcal C \cdot \underline\Psi = \sigma^x \cdot \underline\Psi^*.
" alt="\mathcal C \cdot \underline\Psi = \sigma^x \cdot \underline\Psi^*.
" class="ee_img tr_noresize" eeimg="1">

在哈密顿矩阵上的作用为：


<img src="https://www.zhihu.com/equation?tex=C H C^{-1} = \sigma^x\cdot H^* \cdot \sigma^x = -H.
" alt="C H C^{-1} = \sigma^x\cdot H^* \cdot \sigma^x = -H.
" class="ee_img tr_noresize" eeimg="1">

满足粒子-空穴对称性的幺正变换的一般形式为：


<img src="https://www.zhihu.com/equation?tex=\tilde{\underline\Psi} =
\left(
\begin{array}{c}
	\vec d \\
	\vec d^\dagger
\end{array}
\right) = 
\left(
\begin{array}{cc}
	U & V^* \\
	V & U^*
\end{array}
\right)
\left(
\begin{array}{c}
	\vec c \\
	\vec c^\dagger
\end{array}
\right),
" alt="\tilde{\underline\Psi} =
\left(
\begin{array}{c}
	\vec d \\
	\vec d^\dagger
\end{array}
\right) = 
\left(
\begin{array}{cc}
	U & V^* \\
	V & U^*
\end{array}
\right)
\left(
\begin{array}{c}
	\vec c \\
	\vec c^\dagger
\end{array}
\right),
" class="ee_img tr_noresize" eeimg="1">

下面我们讨论如何找到这样的幺正变换  <img src="https://www.zhihu.com/equation?tex=T" alt="T" class="ee_img tr_noresize" eeimg="1"> 。首先，粒子-空穴对称性保证了能谱的正负对称性：


<img src="https://www.zhihu.com/equation?tex=T^\dagger H T = \mathrm{diag}(\lambda_1,\cdots,\lambda_N,-\lambda_1,\cdots,-\lambda_N).
" alt="T^\dagger H T = \mathrm{diag}(\lambda_1,\cdots,\lambda_N,-\lambda_1,\cdots,-\lambda_N).
" class="ee_img tr_noresize" eeimg="1">

我们可以首先找到  <img src="https://www.zhihu.com/equation?tex=H_{ij}" alt="H_{ij}" class="ee_img tr_noresize" eeimg="1">  全部的本征值为正的本征向量  <img src="https://www.zhihu.com/equation?tex=\{\vec \psi_i\}" alt="\{\vec \psi_i\}" class="ee_img tr_noresize" eeimg="1"> ，将其堆成矩阵：


<img src="https://www.zhihu.com/equation?tex=\left[\vec\psi_1 \right| \cdots \left|\vec\psi_N \right] = 
\left[\begin{array}{c}
	U \\
	V
\end{array}\right],\ 
n=1,2,\cdots,N,
" alt="\left[\vec\psi_1 \right| \cdots \left|\vec\psi_N \right] = 
\left[\begin{array}{c}
	U \\
	V
\end{array}\right],\ 
n=1,2,\cdots,N,
" class="ee_img tr_noresize" eeimg="1">

由此  <img src="https://www.zhihu.com/equation?tex=N" alt="N" class="ee_img tr_noresize" eeimg="1">  个本征向量能够确定矩阵  <img src="https://www.zhihu.com/equation?tex=U,V" alt="U,V" class="ee_img tr_noresize" eeimg="1"> ，通过变换  <img src="https://www.zhihu.com/equation?tex=\tilde{\underline\Psi} = T^\dagger \cdot \underline\Psi" alt="\tilde{\underline\Psi} = T^\dagger \cdot \underline\Psi" class="ee_img tr_noresize" eeimg="1"> ，哈密顿量变为对角形式：


<img src="https://www.zhihu.com/equation?tex=\begin{eqnarray}
\hat H &=& \frac{1}{2} \sum_n \lambda_n (d_n^\dagger d_n- d_n d_n^\dagger) \\
&=& \sum_n \lambda_n\left(d_n^\dagger d_n-\frac{1}{2}\right).
\end{eqnarray}
" alt="\begin{eqnarray}
\hat H &=& \frac{1}{2} \sum_n \lambda_n (d_n^\dagger d_n- d_n d_n^\dagger) \\
&=& \sum_n \lambda_n\left(d_n^\dagger d_n-\frac{1}{2}\right).
\end{eqnarray}
" class="ee_img tr_noresize" eeimg="1">

算法实现为 (Julia)：

```julia
function bdg_eigen(A::AbstractMatrix, B::AbstractMatrix)
    n = size(A, 1)
	H = [A B; -conj(B) -conj(A)]
    vals, vecs = eigen(Hermitian(H))
    λ = real(vals[n+1:2n])
    U, V = vecs[1:n, n+1:2n], vecs[n+1:2n, n+1:2n]
    T = [U conj(V); V conj(U)]
    λ, T
end
```

所有格点 BdG 哈密顿量原则上都可由此求解，我们接下来讨论另一种对角化方法，即引入 Majorana 算符。Majorana 算符可以看作厄米矩阵一组自然的算符基，哈密顿量在此算符基下系数总是实数，我们因此(数值上)可以在实数域计算本征解。这在许多情况下能化简问题的计算复杂度。

## Majorana 算符的引入

Majorana 是一类费米产生湮灭算符的一种特殊线性组合：


<img src="https://www.zhihu.com/equation?tex=\omega^{A}_j = c_j + c_j^{\dagger},\ 
\omega^{B}_j = i(c_j-c_j^\dagger).
" alt="\omega^{A}_j = c_j + c_j^{\dagger},\ 
\omega^{B}_j = i(c_j-c_j^\dagger).
" class="ee_img tr_noresize" eeimg="1">

同时，费米算符可以表达为 Majorana 的叠加：


<img src="https://www.zhihu.com/equation?tex=c_j = \frac{\omega_j^A-i\omega_j^B}{2},\ 
c_j^\dagger = \frac{\omega_j^A+i\omega_j^B}{2}.
" alt="c_j = \frac{\omega_j^A-i\omega_j^B}{2},\ 
c_j^\dagger = \frac{\omega_j^A+i\omega_j^B}{2}.
" class="ee_img tr_noresize" eeimg="1">

实际上，在 Jordan-Wigner 变换下：

<img src="https://www.zhihu.com/equation?tex=\omega_j^A \Leftrightarrow P_j \sigma_j^x, \ 
\omega_j^B \Leftrightarrow P_j \sigma_j^y.
" alt="\omega_j^A \Leftrightarrow P_j \sigma_j^x, \ 
\omega_j^B \Leftrightarrow P_j \sigma_j^y.
" class="ee_img tr_noresize" eeimg="1">
Majorana 算符之间有和费米子类似的反对易关系  <img src="https://www.zhihu.com/equation?tex=\{\omega_i,\omega_j\} = 2\delta_{ij}" alt="\{\omega_i,\omega_j\} = 2\delta_{ij}" class="ee_img tr_noresize" eeimg="1"> ，与费米子算符不同之处在于 Majorana 算符是厄米的。现在我们考虑将一般的 BdG 形哈密顿量写为 Majorana 算符形式。我们将 Majorana 基形式化记为：

<img src="https://www.zhihu.com/equation?tex=\begin{eqnarray}
\underline\Omega &=& (\omega_i^A,\cdots,\omega_N^A,\omega_1^B,\cdots,\omega_N^B)^T \\
&=& \left(\begin{array}{cc}
	\mathbb{I} & \mathbb{I} \\
	i\mathbb{I} & -i\mathbb{I}
\end{array}\right)
\cdot \underline\Psi.
\end{eqnarray}
" alt="\begin{eqnarray}
\underline\Omega &=& (\omega_i^A,\cdots,\omega_N^A,\omega_1^B,\cdots,\omega_N^B)^T \\
&=& \left(\begin{array}{cc}
	\mathbb{I} & \mathbb{I} \\
	i\mathbb{I} & -i\mathbb{I}
\end{array}\right)
\cdot \underline\Psi.
\end{eqnarray}
" class="ee_img tr_noresize" eeimg="1">

逆变换为：


<img src="https://www.zhihu.com/equation?tex=\underline\Psi = \frac{1}{2}
\left(\begin{array}{cc}
	\mathbb{I} & -i\mathbb{I} \\
	\mathbb{I} & i\mathbb{I}
\end{array}\right)
\cdot \underline\Omega.
" alt="\underline\Psi = \frac{1}{2}
\left(\begin{array}{cc}
	\mathbb{I} & -i\mathbb{I} \\
	\mathbb{I} & i\mathbb{I}
\end{array}\right)
\cdot \underline\Omega.
" class="ee_img tr_noresize" eeimg="1">

这样，我们可以将原先的哈密顿量矩阵做基变换：


<img src="https://www.zhihu.com/equation?tex=\begin{eqnarray}
\hat H &=& \frac{1}{4} \underline\Omega 
\left(\begin{array}{cc}
	\mathbb{I} & \mathbb{I} \\
	i\mathbb{I} & -i\mathbb{I}
\end{array}\right)
\cdot
\left(\begin{array}{cc}
	A & B \\
	-B^* & -A^*
\end{array}\right)
\cdot
\left(\begin{array}{cc}
	\mathbb{I} & -i\mathbb{I} \\
	\mathbb{I} & i\mathbb{I}
\end{array}\right)
\underline\Omega \\
&=& \frac{i}{2} 
\underline\Omega 
\left(
\begin{array}{cc}
    A^I + B^I & -A^R + B^R \\
    A^R + B^R &  A^I - B^I
\end{array}
\right)
\underline\Omega.
\end{eqnarray}
" alt="\begin{eqnarray}
\hat H &=& \frac{1}{4} \underline\Omega 
\left(\begin{array}{cc}
	\mathbb{I} & \mathbb{I} \\
	i\mathbb{I} & -i\mathbb{I}
\end{array}\right)
\cdot
\left(\begin{array}{cc}
	A & B \\
	-B^* & -A^*
\end{array}\right)
\cdot
\left(\begin{array}{cc}
	\mathbb{I} & -i\mathbb{I} \\
	\mathbb{I} & i\mathbb{I}
\end{array}\right)
\underline\Omega \\
&=& \frac{i}{2} 
\underline\Omega 
\left(
\begin{array}{cc}
    A^I + B^I & -A^R + B^R \\
    A^R + B^R &  A^I - B^I
\end{array}
\right)
\underline\Omega.
\end{eqnarray}
" class="ee_img tr_noresize" eeimg="1">

其中


<img src="https://www.zhihu.com/equation?tex=\begin{eqnarray}
A^R &=& \mathrm{Re}[A],\ A^I = \mathrm{Im}[A], \\
B^R &=& \mathrm{Re}[B],\ B^I = \mathrm{Im}[B].
\end{eqnarray}
" alt="\begin{eqnarray}
A^R &=& \mathrm{Re}[A],\ A^I = \mathrm{Im}[A], \\
B^R &=& \mathrm{Re}[B],\ B^I = \mathrm{Im}[B].
\end{eqnarray}
" class="ee_img tr_noresize" eeimg="1">

注意上述  <img src="https://www.zhihu.com/equation?tex=2N \times 2N" alt="2N \times 2N" class="ee_img tr_noresize" eeimg="1">  维哈密顿量矩阵

<img src="https://www.zhihu.com/equation?tex=H = \frac{i}{2}\left(
\begin{array}{cc}
    A^I + B^I & -A^R + B^R \\
    A^R + B^R &  A^I - B^I
\end{array}
\right)
" alt="H = \frac{i}{2}\left(
\begin{array}{cc}
    A^I + B^I & -A^R + B^R \\
    A^R + B^R &  A^I - B^I
\end{array}
\right)
" class="ee_img tr_noresize" eeimg="1">
为纯虚反对称矩阵。接下来我们将讨论这种形式的矩阵的谱性质。

##  实数 BdG 型：SVD 分解

我们首先讨论一种简单的情形，即系数  <img src="https://www.zhihu.com/equation?tex=A_{ij}, B_{ij} " alt="A_{ij}, B_{ij} " class="ee_img tr_noresize" eeimg="1">  均为实矩阵的情况。此时将费米子算符拆成 Majorana 算符后，哈密顿量变为：


<img src="https://www.zhihu.com/equation?tex=H = -i \sum_{ij} (A-B)_{ij} \omega_i^A \omega_j^B,
" alt="H = -i \sum_{ij} (A-B)_{ij} \omega_i^A \omega_j^B,
" class="ee_img tr_noresize" eeimg="1">

此时 BdG 型哈密顿量由变为一个  <img src="https://www.zhihu.com/equation?tex=N\times N" alt="N\times N" class="ee_img tr_noresize" eeimg="1">  维的实矩阵  <img src="https://www.zhihu.com/equation?tex=(A-B)" alt="(A-B)" class="ee_img tr_noresize" eeimg="1">  刻画，对此系数矩阵做奇异值(SVD)分解得到：


<img src="https://www.zhihu.com/equation?tex=A-B = U \Lambda V^T.
" alt="A-B = U \Lambda V^T.
" class="ee_img tr_noresize" eeimg="1">

其中  <img src="https://www.zhihu.com/equation?tex=U,V" alt="U,V" class="ee_img tr_noresize" eeimg="1">  为两个实正交矩阵。我们可以定义一组新的 Majorana 算符：

<img src="https://www.zhihu.com/equation?tex=\begin{eqnarray}
\gamma^A_n &=& \sum_j \omega_j^A U_{jn} , \\
\gamma^B_n &=& \sum_j \omega_j^B V_{jn} .
\end{eqnarray}
" alt="\begin{eqnarray}
\gamma^A_n &=& \sum_j \omega_j^A U_{jn} , \\
\gamma^B_n &=& \sum_j \omega_j^B V_{jn} .
\end{eqnarray}
" class="ee_img tr_noresize" eeimg="1">

容易验证，实正交变换后的算符  <img src="https://www.zhihu.com/equation?tex=\gamma^A, \gamma^B" alt="\gamma^A, \gamma^B" class="ee_img tr_noresize" eeimg="1">  还是 Majorana 算符，而哈密顿量变为对角形式：


<img src="https://www.zhihu.com/equation?tex=H = -\frac{i}{2}\sum_n \lambda_n \gamma_n^A \gamma_n^B.
" alt="H = -\frac{i}{2}\sum_n \lambda_n \gamma_n^A \gamma_n^B.
" class="ee_img tr_noresize" eeimg="1">

这样的形式事实上已经是 Majorana 算符表示下的准粒子形式，如果我们想回到熟悉的费米子表示，只需将两个 Majorana 算符重新配对：


<img src="https://www.zhihu.com/equation?tex=\begin{eqnarray}
-\frac{i}{2}\gamma_{n}^{A}\gamma_{n}^{B}
&=&\frac{1} {2}\left(d_{n}+d_{n}^{\dagger}\right)\left(d_{n}-d_{n}^{\dagger}\right) \\
&=& d_{n}^{\dagger}d_{n}-\frac{1}{2}.
\end{eqnarray}
" alt="\begin{eqnarray}
-\frac{i}{2}\gamma_{n}^{A}\gamma_{n}^{B}
&=&\frac{1} {2}\left(d_{n}+d_{n}^{\dagger}\right)\left(d_{n}-d_{n}^{\dagger}\right) \\
&=& d_{n}^{\dagger}d_{n}-\frac{1}{2}.
\end{eqnarray}
" class="ee_img tr_noresize" eeimg="1">

带回对角形的 Majorana 哈密顿量，得到对角形费米子哈密顿量：


<img src="https://www.zhihu.com/equation?tex=H = \sum_n \lambda_n d_n^\dagger d_n + const.
" alt="H = \sum_n \lambda_n d_n^\dagger d_n + const.
" class="ee_img tr_noresize" eeimg="1">

算法实现为 (Julia)：

```julia
function majorana_real(A::AbstractMatrix{<:Real}, B::AbstractMatrix{<:Real})
    U, λ, V = svd(A - B)
    λ, U, V
end
```

## 复数 BdG 型：Schur 分解

对一般复数 BdG 型，我们将考虑实反对称矩阵


<img src="https://www.zhihu.com/equation?tex=2iH = 
\left(\begin{array}{cc}
    -A^I - B^I & A^R - B^R \\
    -A^R - B^R &  -A^I + B^I
\end{array}\right).
" alt="2iH = 
\left(\begin{array}{cc}
    -A^I - B^I & A^R - B^R \\
    -A^R - B^R &  -A^I + B^I
\end{array}\right).
" class="ee_img tr_noresize" eeimg="1">

可以证明，实反对称矩阵均能化为标准型：


<img src="https://www.zhihu.com/equation?tex=2iH = \underline O \cdot \underline\Sigma \cdot \underline O^T.
" alt="2iH = \underline O \cdot \underline\Sigma \cdot \underline O^T.
" class="ee_img tr_noresize" eeimg="1">

其中


<img src="https://www.zhihu.com/equation?tex=\underline\Sigma = i\sigma_y\otimes diag(\lambda_1,\cdots,\lambda_n)
" alt="\underline\Sigma = i\sigma_y\otimes diag(\lambda_1,\cdots,\lambda_n)
" class="ee_img tr_noresize" eeimg="1">

数值上，实反对称矩阵的舒尔(Schur)分解可以直接给出以上形式( <img src="https://www.zhihu.com/equation?tex=\lambda_i" alt="\lambda_i" class="ee_img tr_noresize" eeimg="1">  正负可能交换)。将矩阵化为标准型后，我们又能通过正交变换定义新的 Majorana 算符

<img src="https://www.zhihu.com/equation?tex=\underline{\Gamma} = (\gamma_1^A,\cdots,\gamma_N^A,\gamma_1^B,\cdots,\gamma_N^B).
" alt="\underline{\Gamma} = (\gamma_1^A,\cdots,\gamma_N^A,\gamma_1^B,\cdots,\gamma_N^B).
" class="ee_img tr_noresize" eeimg="1">
在变换  <img src="https://www.zhihu.com/equation?tex=\Gamma_n = \sum_j \Omega_j O_{j,n}" alt="\Gamma_n = \sum_j \Omega_j O_{j,n}" class="ee_img tr_noresize" eeimg="1">  下，哈密顿量变为对角型：

<img src="https://www.zhihu.com/equation?tex=\begin{eqnarray}
H &=& \frac{i}{4} \sum_{n} \lambda_n (\gamma_n^A\gamma_n^B-\gamma_n^B\gamma_n^A) \\
&=& \frac{i}{2} \sum_{n} \lambda_n \gamma_n^A\gamma_n^B.
\end{eqnarray}
" alt="\begin{eqnarray}
H &=& \frac{i}{4} \sum_{n} \lambda_n (\gamma_n^A\gamma_n^B-\gamma_n^B\gamma_n^A) \\
&=& \frac{i}{2} \sum_{n} \lambda_n \gamma_n^A\gamma_n^B.
\end{eqnarray}
" class="ee_img tr_noresize" eeimg="1">

我们得到了和实数情形同样的形式。算法实现为 (Julia):

```julia
function majorana_complex(A::AbstractMatrix, B::AbstractMatrix)
    n = size(A, 1)
    S, V, vals = begin
        AR, AI, BR, BI = real(A), imag(A), real(B), imag(B)
        H = [AI+BI AR-BR; -AR-BR AI-BI]
        schur(H)
    end
    λ = abs.(imag(vals))
    O = Matrix{Float64}(undef, 2n, 2n)
    for i=1:n
        if S[2i-1, 2i] > 0
            O[:, i] = V[:, 2i-1]
            O[:, i+n] = V[:, 2i]
        else
            O[:, i] = V[:, 2i]
            O[:, i+n] = V[:, 2i-1]
        end
    end
    λ, O
end
```

## 动量空间 BdG 型哈密顿量对角化

对平移不变体系，做傅立叶变换后， 将 Nambu spinor 扩展为：


<img src="https://www.zhihu.com/equation?tex=\underline\Psi_k = (c_{k,1},\cdots,c_{k,N},c_{-k,1}^\dagger,\cdots,c_{-k,N}^\dagger)^T.
" alt="\underline\Psi_k = (c_{k,1},\cdots,c_{k,N},c_{-k,1}^\dagger,\cdots,c_{-k,N}^\dagger)^T.
" class="ee_img tr_noresize" eeimg="1">

哈密顿量矩阵可分块写为(同样满足粒子-空穴对称性)：


<img src="https://www.zhihu.com/equation?tex=H_k = 
\left(
\begin{array}{cc}
	A_k & B_k \\
	-B^*_{-k} & -A_{-k}^*
\end{array}
\right),
" alt="H_k = 
\left(
\begin{array}{cc}
	A_k & B_k \\
	-B^*_{-k} & -A_{-k}^*
\end{array}
\right),
" class="ee_img tr_noresize" eeimg="1">

厄米性保证了矩阵满足：

<img src="https://www.zhihu.com/equation?tex=A_k = A_{k}^\dagger,\ 
B_{k} = -B_{-k}^T.
" alt="A_k = A_{k}^\dagger,\ 
B_{k} = -B_{-k}^T.
" class="ee_img tr_noresize" eeimg="1">
同时动量空间中的矩阵也满足同样的粒子-空穴对称性：

<img src="https://www.zhihu.com/equation?tex=\sigma_x H_k^*\sigma_x = -H_k.
" alt="\sigma_x H_k^*\sigma_x = -H_k.
" class="ee_img tr_noresize" eeimg="1">
满足粒子-空穴对称型的幺正变换可以形式化记为：

<img src="https://www.zhihu.com/equation?tex=\tilde{\underline\Psi}_{k,i} = 
\left(
\begin{array}{c}
	\vec d_{k} \\
	\vec d_{-k}^\dagger
\end{array}
\right) = 
\left(
\begin{array}{cc}
	U_k & V_{-k}^*  \\
	V_k & U_{-k}^*
\end{array}
\right)
\left(
\begin{array}{c}
	c_{k,j} \\
	c_{-k,j}^\dagger
\end{array}
\right).
" alt="\tilde{\underline\Psi}_{k,i} = 
\left(
\begin{array}{c}
	\vec d_{k} \\
	\vec d_{-k}^\dagger
\end{array}
\right) = 
\left(
\begin{array}{cc}
	U_k & V_{-k}^*  \\
	V_k & U_{-k}^*
\end{array}
\right)
\left(
\begin{array}{c}
	c_{k,j} \\
	c_{-k,j}^\dagger
\end{array}
\right).
" class="ee_img tr_noresize" eeimg="1">

其中矩阵  <img src="https://www.zhihu.com/equation?tex=U_k,U_k" alt="U_k,U_k" class="ee_img tr_noresize" eeimg="1">  满足  <img src="https://www.zhihu.com/equation?tex=U_k U_k^{\dagger} + V_k V_k^{\dagger}=\mathbb{I}" alt="U_k U_k^{\dagger} + V_k V_k^{\dagger}=\mathbb{I}" class="ee_img tr_noresize" eeimg="1"> . 此形式的对角化方案和实空间情形类似。

## 动量空间的 Majorana 算符

考虑 Majorana 算符的傅立叶变换：


<img src="https://www.zhihu.com/equation?tex=\omega_{k} = \frac{1}{\sqrt{2N}}\sum_j e^{-i k \cdot R_j} \omega_j.
" alt="\omega_{k} = \frac{1}{\sqrt{2N}}\sum_j e^{-i k \cdot R_j} \omega_j.
" class="ee_img tr_noresize" eeimg="1">

由于复系数的存在， <img src="https://www.zhihu.com/equation?tex=\omega_{k}" alt="\omega_{k}" class="ee_img tr_noresize" eeimg="1">  不再是厄米的，而满足：


<img src="https://www.zhihu.com/equation?tex=\omega_{k}^\dagger = \omega_{- k}.
" alt="\omega_{k}^\dagger = \omega_{- k}.
" class="ee_img tr_noresize" eeimg="1">

与动量空间费米子的关系为：


<img src="https://www.zhihu.com/equation?tex=\begin{eqnarray}
	\omega_{k}^A &=& \frac{c_{k}+c_{-k}^\dagger}{\sqrt 2}, \\
	\omega_{k}^B &=& i\frac{c_{k}-c_{-k}^\dagger}{\sqrt 2}.
\end{eqnarray}
" alt="\begin{eqnarray}
	\omega_{k}^A &=& \frac{c_{k}+c_{-k}^\dagger}{\sqrt 2}, \\
	\omega_{k}^B &=& i\frac{c_{k}-c_{-k}^\dagger}{\sqrt 2}.
\end{eqnarray}
" class="ee_img tr_noresize" eeimg="1">

因此，在算符基


<img src="https://www.zhihu.com/equation?tex=\underline\Omega_k = (\omega_{k,1}^A,\cdots,\omega_{k,N}^A,\omega_{k,1}^B,\cdots,\omega_{k,N}^B)^T.
" alt="\underline\Omega_k = (\omega_{k,1}^A,\cdots,\omega_{k,N}^A,\omega_{k,1}^B,\cdots,\omega_{k,N}^B)^T.
" class="ee_img tr_noresize" eeimg="1">

下，哈密顿量矩阵为：


<img src="https://www.zhihu.com/equation?tex=\begin{eqnarray}
\hat H_k &=& \frac{1}{2} 
\underline\Omega_{-k}
\left(\begin{array}{cc}
	\mathbb{I} & \mathbb{I} \\
	i\mathbb{I} & -i\mathbb{I}
\end{array}\right)
\cdot
\left(\begin{array}{cc}
	A_k & B_k \\
	-B^*_{-k} & -A^*_{-k}
\end{array}\right)
\cdot
\left(\begin{array}{cc}
	\mathbb{I} & -i\mathbb{I} \\
	\mathbb{I} & i\mathbb{I}
\end{array}\right)
\underline\Omega_k \\
&=& \frac{1}{2} 
\underline\Omega_{-k} 
\left(
\begin{array}{cc}
    A_k-A^*_{-k} + B_k-B^*_{-k} & -iA_k-iA_{-k}^* + i B_k + i B_{-k}^* \\
    iA_k+iA_{-k}^* + i B_k + i B_{-k}^* & A_k-A^*_{-k} - B_k+B^*_{-k}
\end{array}
\right)
\underline\Omega_k.
\end{eqnarray}
" alt="\begin{eqnarray}
\hat H_k &=& \frac{1}{2} 
\underline\Omega_{-k}
\left(\begin{array}{cc}
	\mathbb{I} & \mathbb{I} \\
	i\mathbb{I} & -i\mathbb{I}
\end{array}\right)
\cdot
\left(\begin{array}{cc}
	A_k & B_k \\
	-B^*_{-k} & -A^*_{-k}
\end{array}\right)
\cdot
\left(\begin{array}{cc}
	\mathbb{I} & -i\mathbb{I} \\
	\mathbb{I} & i\mathbb{I}
\end{array}\right)
\underline\Omega_k \\
&=& \frac{1}{2} 
\underline\Omega_{-k} 
\left(
\begin{array}{cc}
    A_k-A^*_{-k} + B_k-B^*_{-k} & -iA_k-iA_{-k}^* + i B_k + i B_{-k}^* \\
    iA_k+iA_{-k}^* + i B_k + i B_{-k}^* & A_k-A^*_{-k} - B_k+B^*_{-k}
\end{array}
\right)
\underline\Omega_k.
\end{eqnarray}
" class="ee_img tr_noresize" eeimg="1">

这是一个复幺正矩阵，对角化得到：


<img src="https://www.zhihu.com/equation?tex=H = T_k\cdot \mathrm{diag}(\vec\lambda,-\vec\lambda) \cdot T_k^\dagger.
" alt="H = T_k\cdot \mathrm{diag}(\vec\lambda,-\vec\lambda) \cdot T_k^\dagger.
" class="ee_img tr_noresize" eeimg="1">

相应新算符基为：


<img src="https://www.zhihu.com/equation?tex=\tilde{\underline\Omega}_{k} = T_k^\dagger \cdot \underline\Omega_k,
" alt="\tilde{\underline\Omega}_{k} = T_k^\dagger \cdot \underline\Omega_k,
" class="ee_img tr_noresize" eeimg="1">

其中

此算符基底同样满足 Majorana 的正则对易关系：

<img src="https://www.zhihu.com/equation?tex=\{\tilde\omega_{-k_1,i},\tilde\omega_{k_2,j}\} = \delta_{k_1,k_2}\delta_{ij}.
" alt="\{\tilde\omega_{-k_1,i},\tilde\omega_{k_2,j}\} = \delta_{k_1,k_2}\delta_{ij}.
" class="ee_img tr_noresize" eeimg="1">

对角化哈密顿量为：


<img src="https://www.zhihu.com/equation?tex=\hat H_k = \sum_n \lambda_n \omega_{-k,n}\omega_{k,n}.
" alt="\hat H_k = \sum_n \lambda_n \omega_{-k,n}\omega_{k,n}.
" class="ee_img tr_noresize" eeimg="1">

## 参考文献

1. E. Lieb, T. Schultz, D. Mattis, *Two soluble models of an antiferromagnetic chain*, Annals of Physics: 16, 407-466 (1961).
2. M. V. Regemortel, D. Sels, M. Wouters, *Information propagation and equilibration in long-range Kitaev chains*, Phys. Rev. A 93, 032311 (2016).