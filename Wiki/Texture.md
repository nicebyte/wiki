For the purposes of rendering we are often interested in various properties of an
object's surface, such as its base color, roughness, or the direction of the
surface normal at that point.

Generally speaking, these properties are defined for each of the
infinitely many surface points of the object.

In some cases, these properties
can be represented analytically. For example: given a point on the surface of
a sphere, it is trivial to reconstruct the normal at that point using the formula

$$  \bar{n} = \frac{\bar{p} - \bar{o}}{r} $$

where $\bar{p}$ is the surface point, $\bar{o}$ is the origin of the sphere,
and $r$ is the radius of the sphere.

However, in the general case, there is no convenient mathematical function
describing the relevant properties of the surface. It is also impossible to
store every value at every point on the surface, because the surface has
infinitely many points.

To cope with these constraints, we can take a finite subset of the surface
points, and record the properties of the surface at those points only. 
We shall refer to such snapshots as "surface textures". "Volume textures"
shall be used to refer to similar snapshots describing the properties of a 
_volume_.

Texture data is typically stored as images, and the pixels of those images
are referred to as _texels_.

Categories: [[:ComputerGraphics]], [[:TextureMapping]]
