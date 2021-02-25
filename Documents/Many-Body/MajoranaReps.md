# Bogoliubov 变换与 Majorana 表示

在处理费米子二次型哈密顿量中，有时会遇到成对出现产生或湮灭算符 $c_i c_j, c_i^\dagger c_j^\dagger$，其中最常见的是 BCS 平均场理论中的超导配对项。对于这一类哈密顿量，我们可以用 Bogoliubov 变换求得系统的准粒子态以及能谱。在 BCS 模型中我们只引入了一组产生湮灭算符的组合。本文我们将考虑一般形式的含配对项 (BdG) 哈密顿量的对角化方法，并通过引入 Majorana 算符给出更为简单的算法。

## 从 BCS 模型到多粒子 BdG 型哈密顿量

BCS 平均场模型相当于在自由费米子球模型基础上加入了一超导配对项项的微扰作用。平移不变性未被破坏的前提下在动量空间的哈密顿量可记为 BdG 形式：

$$
\hat{H} = \frac{1}{2}\sum_k \underline \Psi_k^\dagger 
\left(\begin{array}{cc}
	\epsilon_k & \Delta_k \\
	\Delta_{k} & -\epsilon_{k}
\end{array}\right)
\underline \Psi_k,
$$

其中 $\underline\Psi_k = (c_k, c_{-k}^\dagger)^T$ 称为 Nambu spinor. 此哈密顿量的特征是满足粒子-空穴对称性 $C=\sigma_x K$，$K$ 是复共轭操作。此对称性在算符基底上的作用为：

$$
C \cdot \underline\Psi_k = \sigma^x \cdot \underline\Psi_{-k}^*
$$

在哈密顿量上，表现为：

$$
C H_{k}C^{-1}=\sigma^x \cdot H^*_{k} \cdot\sigma^x=-H_{-k}.
$$

我们需要在此动量 $k$ 子空间内寻找一个幺正变换 $T_k$，满足：

1. 保持费米算符的反对易关系;
2. 满足此哈密顿量的粒子-空穴对称性 ($C T_k C^{-1} = T_{-k}$);
3. 哈密顿量是完全对角化的。

满足条件 1, 2 的变换的一般形式为：

$$
\tilde{\underline{\Psi}}_k =
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
$$

其中 $|u_k|^2+|v_k|^2 = 1$. 将上述形式代回，令非对角元为零，确定对角化条件为：

$$
\begin{eqnarray} 
u_k &=& \sqrt{\frac{1}{2}+\frac{\epsilon_{k}}{2\sqrt{\epsilon_{k}^{2}+\Delta_{k}^{2}}}}, \\ 
v_k &=& -\sqrt{\frac{1}{2}-\frac{\epsilon_{k}}{2\sqrt{\epsilon_{k}^{2}+\Delta_{k}^{2}}}}.
\end{eqnarray}
$$

最终哈密顿量在准粒子算符下变为简单的对角形式：

$$
H_k = \left(\begin{array}{cc}
	\sqrt{\epsilon_k^2+\Delta_k^2} & 0 \\
	0 & -\sqrt{\epsilon_k^2+\Delta_k^2}
\end{array}\right).
$$

需要注意的是，超导配对项的引入破坏了粒子数守恒。直接的结果是真空态发生移动，即准粒子的真空态，也是 BCS 基态，不再是原先费米子算符的真空态。而是由方程 $d_{k}\left|G\right\rangle =0,\ \forall k$ 确定的态。

以上的讨论仅涉及两分量场内部的正则变化，我们直接利用待定系数法就确定了正则变换的系数。然而对于更一般的情况，即场分量较多的情形，我们需要一个更为系统的手续。一下我们将讨论一般 BdG 型哈密顿量的对角化方案，我们首先讨论实空间情形，再考虑有平移不变性的体系。
## 实空间 BdG 型哈密顿量及其对角化

实空间 BdG 格点哈密顿量一般形式为：

$$
\hat H = \sum_{ij}A_{ij}c_i^\dagger c_j+\frac{1}{2}\sum_{ij}(B_{ij}c_i^\dagger c_j^\dagger-B_{ij}^*c_ic_j).
$$

其中 $A$ 为厄米矩阵，$B$ 为反对称矩阵。对此我们将 Nambu spinor 扩展为：

$$
\underline\Psi = (c_1,\cdots,c_N,c_1^\dagger,\cdots,c_N^\dagger)^T.
$$

此时哈密顿量可形式化记为：

$$
\hat H = \frac{1}{2}\sum_{i,j=1}^{2N} \Psi_i^\dagger H_{ij} \Psi_j + \frac{1}{2}Tr[A].
$$

其中哈密顿量矩阵有分块形式：

$$
H = 
\left(\begin{array}{cc}
	A & B \\
	-B^* & -A^*
\end{array}\right).
$$

实空间粒子-空穴对称性 $\mathcal C$ 再 Nambu spinor 上作用为：

$$
\mathcal C \cdot \underline\Psi = \sigma^x \cdot \underline\Psi^*.
$$

在哈密顿矩阵上的作用为：

$$
C H C^{-1} = \sigma^x\cdot H^* \cdot \sigma^x = -H.
$$

满足粒子-空穴对称性的幺正变换的一般形式为：

$$
\tilde{\underline\Psi} =
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
$$

下面我们讨论如何找到这样的幺正变换 $T$。首先，粒子-空穴对称性保证了能谱的正负对称性：

$$
T^\dagger H T = \mathrm{diag}(\lambda_1,\cdots,\lambda_N,-\lambda_1,\cdots,-\lambda_N).
$$

我们可以首先找到 $H_{ij}$ 全部的本征值为正的本征向量 $\{\vec \psi_i\}$，将其堆成矩阵：

$$
\left[\vec\psi_1 \right| \cdots \left|\vec\psi_N \right] = 
\left[\begin{array}{c}
	U \\
	V
\end{array}\right],\ 
n=1,2,\cdots,N,
$$

由此 $N$ 个本征向量能够确定矩阵 $U,V$，通过变换 $\tilde{\underline\Psi} = T^\dagger \cdot \underline\Psi$，哈密顿量变为对角形式：

$$
\begin{eqnarray}
\hat H &=& \frac{1}{2} \sum_n \lambda_n (d_n^\dagger d_n- d_n d_n^\dagger) \\
&=& \sum_n \lambda_n\left(d_n^\dagger d_n-\frac{1}{2}\right).
\end{eqnarray}
$$

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

$$
\omega^{A}_j = c_j + c_j^{\dagger},\ 
\omega^{B}_j = i(c_j-c_j^\dagger).
$$

同时，费米算符可以表达为 Majorana 的叠加：

$$
c_j = \frac{\omega_j^A-i\omega_j^B}{2},\ 
c_j^\dagger = \frac{\omega_j^A+i\omega_j^B}{2}.
$$

实际上，在 Jordan-Wigner 变换下：
$$
\omega_j^A \Leftrightarrow P_j \sigma_j^x, \ 
\omega_j^B \Leftrightarrow P_j \sigma_j^y.
$$
Majorana 算符之间有和费米子类似的反对易关系 $\{\omega_i,\omega_j\} = 2\delta_{ij}$，与费米子算符不同之处在于 Majorana 算符是厄米的。现在我们考虑将一般的 BdG 形哈密顿量写为 Majorana 算符形式。我们将 Majorana 基形式化记为：
$$
\begin{eqnarray}
\underline\Omega &=& (\omega_i^A,\cdots,\omega_N^A,\omega_1^B,\cdots,\omega_N^B)^T \\
&=& \left(\begin{array}{cc}
	\mathbb{I} & \mathbb{I} \\
	i\mathbb{I} & -i\mathbb{I}
\end{array}\right)
\cdot \underline\Psi.
\end{eqnarray}
$$

逆变换为：

$$
\underline\Psi = \frac{1}{2}
\left(\begin{array}{cc}
	\mathbb{I} & -i\mathbb{I} \\
	\mathbb{I} & i\mathbb{I}
\end{array}\right)
\cdot \underline\Omega.
$$

这样，我们可以将原先的哈密顿量矩阵做基变换：

$$
\begin{eqnarray}
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
$$

其中

$$
\begin{eqnarray}
A^R &=& \mathrm{Re}[A],\ A^I = \mathrm{Im}[A], \\
B^R &=& \mathrm{Re}[B],\ B^I = \mathrm{Im}[B].
\end{eqnarray}
$$

注意上述 $2N \times 2N$ 维哈密顿量矩阵
$$
H = \frac{i}{2}\left(
\begin{array}{cc}
    A^I + B^I & -A^R + B^R \\
    A^R + B^R &  A^I - B^I
\end{array}
\right)
$$
为纯虚反对称矩阵。接下来我们将讨论这种形式的矩阵的谱性质。

##  实数 BdG 型：SVD 分解

我们首先讨论一种简单的情形，即系数 $A_{ij}, B_{ij} $ 均为实矩阵的情况。此时将费米子算符拆成 Majorana 算符后，哈密顿量变为：

$$
H = -i \sum_{ij} (A-B)_{ij} \omega_i^A \omega_j^B,
$$

此时 BdG 型哈密顿量由变为一个 $N\times N$ 维的实矩阵 $(A-B)$ 刻画，对此系数矩阵做奇异值(SVD)分解得到：

$$
A-B = U \Lambda V^T.
$$

其中 $U,V$ 为两个实正交矩阵。我们可以定义一组新的 Majorana 算符：
$$
\begin{eqnarray}
\gamma^A_n &=& \sum_j \omega_j^A U_{jn} , \\
\gamma^B_n &=& \sum_j \omega_j^B V_{jn} .
\end{eqnarray}
$$

容易验证，实正交变换后的算符 $\gamma^A, \gamma^B$ 还是 Majorana 算符，而哈密顿量变为对角形式：

$$
H = -\frac{i}{2}\sum_n \lambda_n \gamma_n^A \gamma_n^B.
$$

这样的形式事实上已经是 Majorana 算符表示下的准粒子形式，如果我们想回到熟悉的费米子表示，只需将两个 Majorana 算符重新配对：

$$
\begin{eqnarray}
-\frac{i}{2}\gamma_{n}^{A}\gamma_{n}^{B}
&=&\frac{1} {2}\left(d_{n}+d_{n}^{\dagger}\right)\left(d_{n}-d_{n}^{\dagger}\right) \\
&=& d_{n}^{\dagger}d_{n}-\frac{1}{2}.
\end{eqnarray}
$$

带回对角形的 Majorana 哈密顿量，得到对角形费米子哈密顿量：

$$
H = \sum_n \lambda_n d_n^\dagger d_n + const.
$$

算法实现为 (Julia)：

```julia
function majorana_real(A::AbstractMatrix{<:Real}, B::AbstractMatrix{<:Real})
    U, λ, V = svd(A - B)
    λ, U, V
end
```

## 复数 BdG 型：Schur 分解

对一般复数 BdG 型，我们将考虑实反对称矩阵

$$
2iH = 
\left(\begin{array}{cc}
    -A^I - B^I & A^R - B^R \\
    -A^R - B^R &  -A^I + B^I
\end{array}\right).
$$

可以证明，实反对称矩阵均能化为标准型：

$$
2iH = \underline O \cdot \underline\Sigma \cdot \underline O^T.
$$

其中

$$
\underline\Sigma = i\sigma_y\otimes diag(\lambda_1,\cdots,\lambda_n)
$$

数值上，实反对称矩阵的舒尔(Schur)分解可以直接给出以上形式($\lambda_i$ 正负可能交换)。将矩阵化为标准型后，我们又能通过正交变换定义新的 Majorana 算符
$$
\underline{\Gamma} = (\gamma_1^A,\cdots,\gamma_N^A,\gamma_1^B,\cdots,\gamma_N^B).
$$
在变换 $\Gamma_n = \sum_j \Omega_j O_{j,n}$ 下，哈密顿量变为对角型：
$$
\begin{eqnarray}
H &=& \frac{i}{4} \sum_{n} \lambda_n (\gamma_n^A\gamma_n^B-\gamma_n^B\gamma_n^A) \\
&=& \frac{i}{2} \sum_{n} \lambda_n \gamma_n^A\gamma_n^B.
\end{eqnarray}
$$

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

$$
\underline\Psi_k = (c_{k,1},\cdots,c_{k,N},c_{-k,1}^\dagger,\cdots,c_{-k,N}^\dagger)^T.
$$

哈密顿量矩阵可分块写为(同样满足粒子-空穴对称性)：

$$
H_k = 
\left(
\begin{array}{cc}
	A_k & B_k \\
	-B^*_{-k} & -A_{-k}^*
\end{array}
\right),
$$

厄米性保证了矩阵满足：
$$
A_k = A_{k}^\dagger,\ 
B_{k} = -B_{-k}^T.
$$
同时动量空间中的矩阵也满足同样的粒子-空穴对称性：
$$
\sigma_x H_k^*\sigma_x = -H_k.
$$
满足粒子-空穴对称型的幺正变换可以形式化记为：
$$
\tilde{\underline\Psi}_{k,i} = 
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
$$

其中矩阵 $U_k,U_k$ 满足 $U_k U_k^{\dagger} + V_k V_k^{\dagger}=\mathbb{I}$. 此形式的对角化方案和实空间情形类似。

## 动量空间的 Majorana 算符

考虑 Majorana 算符的傅立叶变换：

$$
\omega_{k} = \frac{1}{\sqrt{2N}}\sum_j e^{-i k \cdot R_j} \omega_j.
$$

由于复系数的存在，$\omega_{k}$ 不再是厄米的，而满足：

$$
\omega_{k}^\dagger = \omega_{- k}.
$$

与动量空间费米子的关系为：

$$
\begin{eqnarray}
	\omega_{k}^A &=& \frac{c_{k}+c_{-k}^\dagger}{\sqrt 2}, \\
	\omega_{k}^B &=& i\frac{c_{k}-c_{-k}^\dagger}{\sqrt 2}.
\end{eqnarray}
$$

因此，在算符基

$$
\underline\Omega_k = (\omega_{k,1}^A,\cdots,\omega_{k,N}^A,\omega_{k,1}^B,\cdots,\omega_{k,N}^B)^T.
$$

下，哈密顿量矩阵为：

$$
\begin{eqnarray}
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
$$

这是一个复幺正矩阵，对角化得到：

$$
H = T_k\cdot \mathrm{diag}(\vec\lambda,-\vec\lambda) \cdot T_k^\dagger.
$$

相应新算符基为：

$$
\tilde{\underline\Omega}_{k} = T_k^\dagger \cdot \underline\Omega_k,
$$

其中

此算符基底同样满足 Majorana 的正则对易关系：
$$
\{\tilde\omega_{-k_1,i},\tilde\omega_{k_2,j}\} = \delta_{k_1,k_2}\delta_{ij}.
$$

对角化哈密顿量为：

$$
\hat H_k = \sum_n \lambda_n \omega_{-k,n}\omega_{k,n}.
$$

## 参考文献

1. E. Lieb, T. Schultz, D. Mattis, *Two soluble models of an antiferromagnetic chain*, Annals of Physics: 16, 407-466 (1961).
2. M. V. Regemortel, D. Sels, M. Wouters, *Information propagation and equilibration in long-range Kitaev chains*, Phys. Rev. A 93, 032311 (2016).