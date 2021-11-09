# Definition

A _matrix_ is a rectangular array of values. The values can be of any nature:
real or complex numbers, or something else entirely - as long as they belong to
an algebraic [[Ring]]. The values are referred to as the _elements_ or
_coefficients_ of the matrix.

# Matrix Operations

## Addition

If $\boldsymbol{A}$ and $\boldsymbol{B}$ are both $m \times n$ matrices, their
sum $\boldsymbol{C} = \boldsymbol{A} + \boldsymbol{B}$ is defined as a matrix
where each element is equal to the sum of the corresponding elements of
$\boldsymbol{A}$ and $\boldsymbol{B}$.

## Multiplication

Given an $n \times m$ matrix $\boldsymbol{A}$ and a scalar value $\alpha$, 
$\boldsymbol{C} = \alpha \boldsymbol{A}$ is the matrix where each element is
equal to the corresponding element of $\boldsymbol{A}$ multiplied by $\alpha$.

Given an $n \times m$ matrix $\boldsymbol{A}$ and an $m \times k$ matrix
$\boldsymbol{B}$, their product is defined as the matrix
$\boldsymbol{C} = \boldsymbol{A}\boldsymbol{B}$ where each coefficient is equal
to the inner product of the corresponding row from $\boldsymbol{A}$ and column
from $\boldsymbol{B}$. Note that matrix multiplication is noncommutative, and
requires the second matrix to have as many columns as the first one has rows.

## Transpose

Given a matrix $\boldsymbol{A}$, its _transpose_ $\boldsymbol{A}^T$ is defined
as a matrix obtained from $\boldsymbol{A}$ by rewriting its rows as columns.

## Inverse

### The Identity Matrix

An identity matrix is any $n \times n$ matrix that has unit values along its
main diagonal and zeroes everywhere else. An example of a $2 \times 2$ identity
matrix:

$$
\begin{matrix}
1 && 0 \\
0 && 1
\end{matrix}
$$

Identity matrices are denoted as $\boldsymbol{I}$.

### Definition of the Inverse Matrix

A matrix $\boldsymbol{B}$ is said to be the _inverse_ of $\boldsymbol{A}$ if
$\boldsymbol{AB} = \boldsymbol{BA} = \boldsymbol{I}$.
The inverse of $\boldsymbol{A}$ is denoted $\boldsymbol{A}^{-1}$.

Only square matrices can have an inverse.

### Computing the Inverse

#### Cofactor Matrix

The _cofactor matrix_ of $\boldsymbol{A}$ is the matrix

$$
\begin{matrix}
(-1)^{1+1}\boldsymbol{A}_{11} && (-1)^{1+2}\boldsymbol{A}_{12} && 
(-1)^{1+3}\boldsymbol{A}_{13} && ... \\
(-1)^{2+1}\boldsymbol{A}_{21} && (-1)^{2+2}\boldsymbol{A}_{22} &&  ... \\
... \\
(-1)^{n+1}\boldsymbol{A}_{n1} && ... && (-1)^{n+n}\boldsymbol{A}_{nn}
\end{matrix}
$$

where $\boldsymbol{A}_{ij}$ are the first-order [[Minor]]s of $\boldsymbol{A}$
corresponding to the given row and column.

#### Adjoint Matrix

The _adjoint matrix_ of $\boldsymbol{A}$, denoted $adj(\boldsymbol{A})$ is
the transpose of the cofactor matrix.

$$
\boldsymbol{A}^{-1} = \frac{1}{\det \boldsymbol{A}}adj(\boldsymbol{A})
$$

When $\det \boldsymbol{A} = 0$, an inverse does not exist.

# Matrices As Representations of Linear Transforms

A matrix represents a transformation from one linear space to another. The
columns of the matrix are the basis vectors of the source space expressed
in the destination space.

If $\overline{a}$ is a vector in the source space, and the matrix
$\boldsymbol{M}$ represents a transformation from the source space to the
destination space, then $\overline{b}=\boldsymbol{M}\overline{a}$ is 
$\overline{a}$ expressed in destination space.

If $\boldsymbol{A}$ represents a transform form space $1$ to space $2$, and
$\boldsymbol{B}$ represents a transform from space $2$ to space $3$, then
$\boldsymbol{C}=\boldsymbol{B}\boldsymbol{A}$ represents a transform from space
$1$ to space $3$.

## Orthogonal Matrices

If the column vectors of a matrix are all unit length and orthogonal to each
other, the matrix is called _orthogonal_.

If a matrix is orthogonal, its row vectors are also necessarily unit length and
orthogonal to each other.

The transpose of an orthogonal matrix is its inverse.

The [[Determinant]] of an orthogonal matrix is $1$. Transforms specified by
orthogonal matrices preserve volume.

Categories: [[:Mathematics]], [[:LinearAlgebra]] 
