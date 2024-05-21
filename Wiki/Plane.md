# Plane Equation

A plane with a normal vector $\boldsymbol{\overline{N}}$ that is at the distance $D$ from the origin is the set of all points whose projection onto the 
normal $\boldsymbol{\overline{N}}$ is $D$ units long. In other words, it is the set of points $P$ for which
$P \cdot \boldsymbol{\overline{N}} = D$, or, written out in coordinates: $P_{x}N_{x} + P_{y}N_{y} + P_{z}N_{z} - D = 0$.

To test whether a particular point $P$ is on the plane, it is enough to compute
$\langle P_{x}, P_{y}, P_{z}, 1 \rangle \cdot \langle N_{x}, N_{y}, N_{z}, -D \rangle$. The result is the distance from the point to the plane,
which is $0$ when the point lies exactly on the plane, positive when the point is in front of the plane and negative when 
the point is behind the plane.

# Transforming Planes

Assume we have a plane in coordinate space $A$ with a normal vector $\boldsymbol{\overline{N}}$, $D$ units asway from the origin. We
want to transform this representation into its equivalent for coordinate space $B$.

Assume $M_{AB}$ is the matrix representing the transformation from $A$ to $B$. $M_{AB}\boldsymbol{\overline{N}}$ would be the normal in
the new coordinate space.
The distance from the new origin will be $M_{AB}\boldsymbol{\overline{N}} \cdot M_{AB}D\boldsymbol{\overline{N}}$
(because $D\boldsymbol{\overline{N}}$ lies exactly on the plane).


Categories: [[:Mathematics]], [[:Geometry]]
