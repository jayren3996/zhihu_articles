# Bogoliubov 变换与 Majorana 表示

在处理费米子二次型哈密顿量中，有时会遇到成对出现产生或湮灭算符 $c_i c_j, c_i^\dagger c_j^\dagger$，其中最常见的是 BCS 平均场理论中的超导配对项。对于这一类哈密顿量，我们可以用 Bogoliubov 变换求得系统的准粒子态以及能谱。在 BCS 模型中我们只引入了一组产生湮灭算符的组合。本文我们将考虑更一般的含配对项哈密顿量的对角化方法，并通过引入 Majorana 算符给出形式较为简单的算法。

## 从 BCS 模型到多粒子 BdG 型哈密顿量

BCS 平均场模型相当于在自由费米子球模型基础上加入了一超导配对项项的微扰作用。平移不变性未被破坏的前提下在动量空间的哈密顿量为：

$$
\hat{H}\left(k\right)=\epsilon_{k}\left(c_{k}^{\dagger}c_{k}+c_{-k}^{\dagger}c_{-k}\right)+\Delta_{k}\left(c_{k}^{\dagger}c_{-k}^{\dagger}+c_{-k}c_{k}\right)
$$

对每个 $k$  值，构造算符：

$$
\begin{cases} 
    \tilde{c}_{k} & =u_{k}c_{k}-v_{k}c_{-k}^{\dagger} \\ 
    \tilde{c}_{k}^{\dagger} & =u_{k}^*c_{k}^{\dagger}-v_{k}^*c_{-k} 
\end{cases},\ 
\begin{cases} 
    \tilde{c}_{-k} & =u_{k}c_{-k}+v_{k}c_{k}^{\dagger} \\ 
    \tilde{c}_{-k}^{\dagger} & =u_{k}^*c_{-k}^{\dagger}+v_{k}^*c_{k} 
\end{cases}
$$

Bogoliubov 变换保持费米子对易关系：

$$
\begin{eqnarray}
\{ \tilde{c}_{k},\tilde{c}_{k'}^{\dagger}\} &=&\delta_{kk'},\\
\left\{ \tilde{c}_{k},\tilde{c}_{k'}\right\} &=& 0.
\end{eqnarray}
$$

因此要求

$$
\left|u_{k}\right|^{2}+\left|v_{k}\right|^{2}=\left|u_{-k}\right|^{2}+\left|v_{-k}\right|^{2}=1
$$

代入原哈密顿量，并令非对角项系数为 0，我们得到关系：

$$
\Delta_{k}\left(u_{k}^{2}-v_{k}^{2}\right)=2\epsilon_{k}u_{k}v_{k}
$$

联立解得：

$$
\begin{cases} u_{k}^{2} & =\frac{1}{2}\left(1+\frac{\epsilon_{k}}{\sqrt{\epsilon_{k}^{2}+\Delta_{k}^{2}}}\right)\\ v_{k}^{2} & =\frac{1}{2}\left(1-\frac{\epsilon_{k}}{\sqrt{\epsilon_{k}^{2}+\Delta_{k}^{2}}}\right) \end{cases}
$$

最终哈密顿量在准粒子算符下变为简单的对角形式：

$$
\hat{H}\left(k\right)=\sqrt{\epsilon_{k}^{2}+\Delta_{k}^{2}}\left(\tilde{c}_{k}^{\dagger}\tilde{c}_{k}+\tilde{c}_{-k}^{\dagger}\tilde{c}_{-k}\right)+const.
$$

需要注意的是，超导配对项的引入破话了粒子数守恒。直接的结果是真空态发生移动，即准粒子的真空态，也是 BCS 基态，不再是原先费米子算符的真空态。而是方程

$$
\tilde{c}_{k}\left|G\right\rangle =0,\ \forall k
$$

确定的态。以上的讨论仅限于一个 k-sector 内部的正则变化，当我们考虑一个更一般的耦合时，一个普遍的二次型哈密顿量为：

$$
\hat{H}=\sum_{i,j=1}^{N}\left(
    A_{ij}c_{i}^{\dagger}c_{j} + 
    \frac{1}{2} B_{ij}c_{i}^{\dagger}c_{j}^{\dagger} -
    \frac{1}{2} B_{ij}^*c_{i}c_{j}
\right).
$$

其中 $A_{ij}$ 为厄米矩阵，$B_{ij}$ 为反对称矩阵，这种形式的哈密顿量称作 Bogoliubov de Genes 哈密顿量。此时准粒子算符也应是原费米子产生湮灭算符的线性组合，可以写作：

$$
\begin{cases} \tilde{c}_{i} & =\sum_{j=1}^{N}\left(U_{ij}c_{j}+V_{ij}c_{j}^{\dagger}\right)\\ \tilde{c}_{i}^{\dagger} & =\sum_{j=1}^{N}\left(V_{ij}^{*}c_{j}+U_{ij}^{*}c_{j}^{\dagger}\right) \end{cases}
$$

这组线性变换保持费米子对易关系，因此矩阵 $U,V$ 满足：

$$
UU^{\dagger}+VV^{\dagger}=\mathbb{I}
$$

对于算符数量较少的情形，如 BCS 模型中每个 k-secter 中只含 2 个费米子算符，我们可以将逆变换式代入哈密顿量消去非对角项找到相应系数。但对于算符较多情形，我们需要一个更为系统化的手续。我们接下来会看到，引入 Majorana 算符能将 BdG 型哈密顿量化为更为简单的形式。

## Majorana 算符的引入

Majorana 是一类特殊的算符，它和费米子有直接的转换关系,任意一个费米子可以拆成两个 Majorana 算符:

$$
\begin{eqnarray} 
    \omega^{A}_j &=& c_j + c_j^{\dagger}, \\ 
    \omega^{B}_j &=& -i(c_j-c_j^{\dagger}).
\end{eqnarray}
$$

同时任何两个 Majorana 算符可以组合成费米子算符：

$$
\begin{eqnarray} 
    c &=& \frac{\omega_1+i\omega_2}{2}, \\ 
    c^\dagger &=& \frac{\omega_1-i\omega_2}{2}.
\end{eqnarray}
$$

从上面的表达式中我们可以看到， Majorana 算符某种程度上可以看作费米子的实部和虚部。它有和费米子类似的反对易关系：

$$
\{\omega_i,\omega_j\} = 2\delta_{ij},
$$

与费米子算符不同之处在于 Majorana 算符是厄米的：

$$
\omega^\dagger = \omega.
$$

现在我们考虑将一般的 BdG 形哈密顿量写为 Majorana 算符形式。首先考虑第一部分，即费米子 hopping 项：

$$
H_1 = \sum_{ij} c_i^\dagger A_{ij} c_j.
$$

将费米算符代换为 Majorana 算符得到：

$$
\begin{eqnarray}
H_1 
&=& \frac{1}{4}\sum_{ij} (\omega_i^A-i\omega_i^B) A_{ij} (\omega_j^A+i\omega_{j}^B) \\
&=& \frac{1}{4}\sum_{ij} A_{ij}(\omega_i^A \omega_j^A + \omega_i^B \omega_j^B +i\omega_i^A \omega_j^B+i\omega_j^A \omega_i^B).
\end{eqnarray}
$$

注意系数矩阵 $A_{ij}$ 是厄米的，我们可以将其分解为：

$$
\begin{eqnarray}
A_{ij} &=& A_{ij}^R + i A_{ij}^I, \\
A_{ij}^R &=& \frac{1}{2}(A_{ij} + A_{ij}^*), \\
A_{ij}^I &=& \frac{1}{2i}(A_{ij} - A_{ij}^*),
\end{eqnarray}
$$

其中 $A^R$ 是实对称矩阵，$A^I$ 是实反对称矩阵。利用系数矩阵的对称关系，$H_1$ 继续化简为：

$$
H_1 = i \sum_{ij} \left[ 
    \frac{1}{4}A_{ij}^I (\omega_i^A \omega_j^A + \omega_i^B \omega_j^B)
    +\frac{1}{2}A_{ij}^R \omega_i^A \omega_j^B
\right]+\frac{1}{2}Tr[A].
$$

现在考虑第二部分，即费米子 pairing 项：

$$
H_2 = \frac{1}{2}\sum_{ij} B_{ij}c_i^\dagger c_j^\dagger +h.c.
$$

代换为 Majorana 算符，并将反对称系数矩阵 $B_{ij}$ 分解为实部和虚部，得到：

$$
\begin{eqnarray}
H_2 
&=& \frac{1}{8}\sum_{ij}B_{ij} (\omega_i^A - i\omega_i^B)(\omega_j^A - i\omega_j^B)+h.c. \\
&=& \frac{1}{8}\sum_{ij}B_{ij} (\omega_i^A \omega_j^A - \omega_i^B\omega_j^B -i \omega_i^A\omega_j^B+i\omega_j^A\omega_i^B)+h.c. \\
&=& i\sum_{ij} \left[
  \frac{1}{4} B^I_{ij} (\omega_i^A \omega_j^A - \omega_i^B\omega_j^B) - 
  \frac{1}{2} B^R_{ij} \omega_i^A \omega_j^B
\right].
\end{eqnarray}
$$

将两部分和在一起，我们可将哈密顿量写为：

$$
H = \underline{\Omega}\cdot \underline{H} \cdot \underline{\Omega}
$$

其中将算符组记作向量

$$
\underline\Omega = (\omega_i^A,\cdots,\omega_N^A,\omega_1^B,\cdots,\omega_N^B).
$$

矩阵为

$$
\underline{H} = \frac{i}{4} 
\left(
\begin{array}{cc}
    A^I + B^I & A^R - B^R \\
    - A^R-B^R &  A^I - B^I
\end{array}
\right)
$$

注意这个矩阵是 $2N \times 2N$ 维的纯虚反对称矩阵。接下来我们将讨论这种形式的矩阵的谱性质。

##  实数 BdG 型的奇异值分解

我们首先讨论一种简单的情形，即系数 $A_{ij}, B_{ij} $ 均为实矩阵的情况。此时将费米子算符拆成 Majorana 算符后，哈密顿量变为：

$$
H = \frac{i}{2} \sum_{i,j=1}^{N}M_{ij} \omega_i^A \omega_j^B + \frac{1}{2}Tr[A],
$$

其中系数矩阵 $M=A^R-B^R$. 此时 BdG 型哈密顿量变为一个 $N\times N$ 维的实矩阵，哈密顿量的谱可以通过对系数矩阵做奇异值分解得到：

$$
M_{ij} = \sum_k U_{ik} \lambda_k V^T_{kj}.
$$

其中 $U,V$ 为两个实正交矩阵。我们可以定义一组新的 Majorana 算符：

$$
\begin{eqnarray}
\gamma^A_k &=& \sum_j \omega_j^A U_{jk} , \\
\gamma^B_k &=& \sum_j \omega_j^B V_{jk} .
\end{eqnarray}
$$

容易验证，实正交变换后的算符 $\gamma^A, \gamma^B$ 还是 Majorana 算符，而哈密顿量变为对角形式：

$$
H = \frac{i}{2}\sum_k \lambda_k \gamma_k^A \gamma_k^B + \frac{1}{2}Tr[A].
$$

这样的形式事实上已经是 Majorana 算符表示下的准粒子形式，如果我们想回到熟悉的费米子表示，只需将两个 Majorana 算符重新配对：

$$
\begin{eqnarray}
\frac{i}{2}\gamma_{k}^{A}\gamma_{k}^{B}
&=&\frac{1} {2}\left(\tilde{c}_{k}+\tilde{c}_{k}^{\dagger}\right)\left(\tilde{c}_{k}-\tilde{c}_{k}^{\dagger}\right) \\
&=&\tilde{c}_{k}^{\dagger}\tilde{c}_{k}-\frac{1}{2}.
\end{eqnarray}
$$

带回对角形的 Majorana 哈密顿量，得到对角形费米子哈密顿量：

$$
H = \sum_k \lambda_k \tilde{c}_k^\dagger \tilde{c}_k.
$$

## 复数 BdG 型的舒尔分解

对一般复数 BdG 型，我们需要考虑纯虚反对称矩阵

$$
\underline{H} = \frac{i}{4} 
\left(
\begin{array}{cc}
    A^I + B^I & A^R - B^R \\
    -A^R - B^R &  A^I - B^I
\end{array}
\right)
$$

的谱分解。我们将要说明一下 3 点：

1. 反对称矩阵的本征值一定成对出现(互为相反数)。
2. 实反对称矩阵可以通过一正交变换化为标准型，数值上可由矩阵的舒尔分解得到。
3. 复数 BdG 型谱完全由实反对称矩阵标准型确定。

我们首先证明本征值成对出现。注意对于任意(右)本征向量 $\vec v_k$, 有：

$$
\underline{M}\cdot \vec{v}_k = \lambda_k \vec{v}_k
$$

对其取转置：

$$
\vec{v}_k^T\cdot \underline{M}^T = - \vec{v}_k^T\cdot \underline{M} = \vec{v}_k^T.
$$

意味着 $\vec{v}_k^T$ 是本征值为 $-\lambda_k$ 的左本征向量。根据矩阵本征值分解的一般性质，这意味着一定存在一本征值为 $-\lambda_k$ 的右边本征向量。

现在我们考虑实反对称矩阵标准型。其定义为：

$$
\underline M = \underline O \cdot \underline\Sigma \cdot \underline O^T.
$$

其中

$$
\underline\Sigma = \bigoplus_{i=1}^{N}
\left(
\begin{array}{cc}
     0 & \lambda_i \\
    -\lambda_i & 0 
\end{array}
\right).
$$

此形式可直接通过矩阵的舒尔分解得到。

现在，我们又能通过正交变换定义新的 Majorana 算符：

$$
\begin{eqnarray}
\gamma^A_k &=& \sum_{j=1}^N \left[\omega_j^A O_{j,2k-1}+\omega_j^B O_{j,2k-1}\right], \\
\gamma^B_k &=& \sum_{j=1}^N \left[\omega_j^A O_{j,2k}+\omega_j^B O_{j,2k}\right],
\end{eqnarray}
$$

得到：

$$
\begin{eqnarray}
H &=& \frac{i}{4} \sum_{k} \lambda_k (\gamma_k^A\gamma_k^B-\gamma_k^B\gamma_k^A) \\
&=& \frac{i}{2} \sum_{k} \lambda_k \gamma_k^A\gamma_k^B.
\end{eqnarray}
$$

我们得到了和实数情形同样的形式。

## 简单的算法实现 (Julia)

这里我们给出一个简单的 Julia 代码实现上述两种情况下的谱分解。返回的是能谱和相应 Majorana 的正交变换。

```julia
using LinearAlgebra

function majorana_real(
    A::AbstractMatrix{<:AbstractFloat},
    B::AbstractMatrix{<:AbstractFloat}
)
    M = A - B
    U, λ, V = svd(M)
    λ, U, V
end

function majorana_complex(
    A::AbstractMatrix{<:Number},
    B::AbstractMatrix{<:Number}
)
    n = size(A, 1)
    energy = Array{Float64}(undef, n)
    temp = Array{Float64}(undef, 2*n)
    H = begin
        AR = real.(A)
        AI = imag.(A)
        BR = real.(B)
        BI = imag.(B)
        [AI+BI AR-BR; -AR-BR AI-BI]
    end
    F = schur(H)
    S = F.T
    O = F.Z
    for i=1:n
        Si = S[2i-1, 2i]
        if Si < 0
            energy[i] = -Si
            temp .= O[:, 2i-1]
            O[:, 2i-1] .= O[:, 2i]
            O[:, 2i] .= temp
        else
            energy[i] = Si
        end
    end
    sortinds = sortperm(energy, rev=true)
    sortinds2 = vcat(([2i-1, 2i] for i in sortinds)...)
    λ = energy[sortinds]
    O = O[:, sortinds2]
    λ, O
end
```

