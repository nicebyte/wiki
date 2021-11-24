
# Definition

_Barycentric coordinates_ are a special kind of coordinate system defined on a
triangle. 

Given a non-degenerate triangle $ABC$, any point $p$ can be expressed as
a linear combination of the triangle's vertices:

$$
p = A + \beta (B - A) + \gamma (C - A)
$$

Opening the parentheses and simplifying further, we obtain:

$$
p = (1 - \beta - \gamma) A + \beta B + \gamma C
$$

The coefficients $\alpha = 1 - \beta - \gamma$, $\beta$ and $\gamma$ are called
the _barycentric coordinates_ of $p$.

# Properties

Barycentric coordinates of a point _always_ sum up to one. Additionally, if the
point is strictly inside the triangle, $0 < \alpha < 1$, $0 < \beta < 1$ and
$0 < \gamma < 1$ all hold.

# Computing Barycentric Coordinates

Assume we are given a triangle a point $p = (p_{x}, p_{y}, p_{z})$ and a
triangle with vertices

$$
a = (a_{x}, a_{y}, a_{z}) \\
b = (b_{x}, b_{y}, b_{z}) \\
c = (c_{x}, c_{y}, c_{z}) \\
$$

How can we find the barycentric coordinates of $p$?

We know that if $\alpha$, $\beta$ and $\gamma$ are the barycentrics of $p$,
then:

$$
p = \alpha \overline{a} + \beta \overline{b} + \gamma \overline{c}
$$

The above vector equation can be rewritten as a system of linear equations:

$$
\begin{align*}
\alpha a_{x} + \beta b_{x} + \gamma c_{x} &= p_{x} \\
\alpha a_{y} + \beta b_{y} + \gamma c_{y} &= p_{y} \\
\alpha a_{z} + \beta b_{z} + \gamma c_{z} &= p_{z}
\end{align*}
$$

According to [[CramersRule]],

$$
\alpha = \frac {\det \begin{bmatrix} p_{x} b_{x} c_{x} \\  p_{y} b_{y} c_{y} \\  p_{z} b_{z} c_{z} \end{bmatrix}}{\det \begin{bmatrix} a_{x} b_{x} c_{x} \\  a_{y} b_{y} c_{y} \\  a_{x} b_{z} c_{z} \end{bmatrix}}, 

\beta = \frac {\det \begin{bmatrix} a_{x} p_{x} c_{x} \\  a_{y} p_{y} c_{y} \\  a_{x} p_{z} c_{z} \end{bmatrix}}{\det \begin{bmatrix} a_{x} b_{x} c_{x} \\  a_{y} b_{y} c_{y} \\  a_{x} b_{z} c_{z} \end{bmatrix}},

\gamma = \frac{\det \begin{bmatrix} a_{x} b_{x} p_{x} \\  a_{y} b_{y} p_{y} \\  a_{x} b_{z} p_{z} \end{bmatrix}}{\det \begin{bmatrix} a_{x} b_{x} c_{x} \\  a_{y} b_{y} c_{y} \\  a_{x} b_{z} c_{z} \end{bmatrix}}
$$

Note that the determinant in these denominators is proportional to the area of
the triangle formed by vertices $a$, $b$ and $c$, while the determinants in the
numerators are proportional to the areas of triangles $pbc$, $apc$ and $abp$
respectively.

Thus, the barycentric coordinates of $p$ are ratios of the areas of trinagles
that $p$ forms with the other vertices to the area of the original triangle:

$$
\alpha = S_{pbc} / S_{abc} \\
\beta = S_{apc} / S_{abc} \\
\gamma = S_{abp} / S_{abc}
$$

Categories: [[:Mathematics]], [[:Geometry]]