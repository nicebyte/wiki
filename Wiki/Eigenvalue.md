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

Categories: [[:Mathematics]], [[:LinearAlgebra]]