# Definition

A determinant can be thought of as an operation on $n$ $n$-dimensional vectors.
Given the vectors $\overline{a}_1 = (a_{11}, a_{12}, ... a_{1n})$,
$\overline{a}_2 = (a_{20}, a_{21}, ... a_{2n})$, $...$,
$\overline{a}_n = (a_{n1}, a_{n2}, ..., a_{nn})$, we define the determinant as
follows:

$$
 \det \boldsymbol{A} = \sum_{\sigma \in S_n} (sgn(\sigma)\prod_{i=1}^n a_{i \sigma_i})
$$ 

where $\boldsymbol{A}$ is the [[Matrix]] whose columns are the vectors
$\overline{a}_1, \overline{a}_2, ... \overline{a}_n$, and $S_n$ is the set of
[[Permutation]]s over $n$ (Leibniz formula).

A determinant can also be thought of as a property of a matrix, however  only
square matrices have that property.

The definition is rather unwieldy, and in practice it might be easier to
remember the recursive method for computing the determinant (see below).

# Examples

For two two-dimensional vectors:

$$
\det \begin{bmatrix}a && c \\ b && d \end{bmatrix} = ad - cb
$$

For three three-dimensional vectors:

$$
\det \begin{bmatrix} a && d && g \\ b && e && h \\ c && f && i \end{bmatrix} =
a(ei-hf)-d(bi-he)+g(bf-ec)
$$

# Computing the Determinant

Given a $n \times n$  matrix $ \boldsymbol{A}  $, we define
$ \boldsymbol{A}_{ij} $ as the determinant of the matrix obtained from
$ \boldsymbol{A} $ by removing the $i$-th column and $j$-th row.

The determinant can be computed as follows:

$$
\det \boldsymbol{A} = \sum_{i=1}^n (-1)^{k+i} a_{ki} \boldsymbol{A}_{ki} =
\sum_{i=1}^n (-1)^{i+p} a_{ip} \boldsymbol{A}_{ip}
$$

where $k$ and $p$ are an arbitrary column or row, respectively.

# Connection to Eigenvalues

If $\lambda_1, \lambda_2, ... \lambda_n$ are the [[Eigenvalue]]s of the matrix
$\boldsymbol{A}$, then
$\det \boldsymbol{A} = \lambda_1 \lambda_2 ... \lambda_n$.

Since eigenvalues represent how much the transform corresponding to
$\boldsymbol{A}$ stretches or compresses the space in corresponding directions,
$\det \boldsymbol{A} = 1$ implies that the transform preserves volume.

Categories: [[:Mathematics]], [[:LinearAlgebra]]