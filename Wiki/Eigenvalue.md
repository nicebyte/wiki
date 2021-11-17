# Definition

If for a matrix $\boldsymbol{M}$ and a nonzero vector $\overline{a}$,
$\boldsymbol{M}\overline{a} = \lambda \overline{a}$, then $\overline{a}$ is
called $\boldsymbol{M}$'s _eigenvector_, and $\lambda$ is called
$\boldsymbol{M}$'s _eigenvalue_.

To put it another way, eigenvectors of a matrix are vectors that don't change
direction when the transform represented by the said matrix is applied to them.

# Finding Eigenvalues

Let $\overline{a}$ be an eigenvector of a matrix $\boldsymbol{M}$:

$$
\boldsymbol{M}\overline{a} = \lambda \overline{a}
$$

$$
\boldsymbol{M}\overline{a} = \lambda \boldsymbol{I} \overline{a}
$$

$$
\boldsymbol{M}\overline{a} - \lambda \boldsymbol{I} \overline{a} = \overline{0}
$$

$$
(\boldsymbol{M} - \lambda \boldsymbol{I}) \overline{a} = \overline{0}
$$

which is only possible when the matrix
$(\boldsymbol{M} - \lambda \boldsymbol{I})$ is singular (i.e. has a
[[Determinant]] equal to $0$). The determinant of said matrix is a polynomial
function of $\lambda$ and the roots of that polynomial are the eigenvalues.

# Eigendecomposition

According to the defining property of eigenvectors,

$$
\boldsymbol{M}\overline{a} = \lambda \overline{a}
$$

Let $\boldsymbol{Q}$ be the matrix where each column is one of $\boldsymbol{M}$'s
eigenvectors. The matrix $\boldsymbol{M}\boldsymbol{Q}$ then is the same as
$\boldsymbol{Q}$, but with each column multiplied by the corresponding eigenvalue.
We can write $\boldsymbol{M}\boldsymbol{Q}$ as $\boldsymbol{Q}\boldsymbol{\Lambda}$,
where $\boldsymbol{\Lambda}$ is a diagonal matrix that has the eigenvalues of
$\boldsymbol{M}$ on the main diagonal.

If we assume that the eigenvectors of $\boldsymbol{M}$ are linearly independent,
then $\boldsymbol{Q}$ is invertible, and therefore:

$$
\boldsymbol{M}\boldsymbol{Q}\boldsymbol{Q^{-1}} = \boldsymbol{Q}\boldsymbol{\Lambda}\boldsymbol{Q^{-1}}
$$

which gives us a factorization of $\boldsymbol{M}$ called the _eigendecomposition_:

$$
\boldsymbol{M} = \boldsymbol{Q}\boldsymbol{\Lambda}\boldsymbol{Q^{-1}}
$$



Categories: [[:Mathematics]], [[:LinearAlgebra]]
