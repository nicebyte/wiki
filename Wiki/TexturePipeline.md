**************************************************************************************
*                                _____________                                       *
*     .-------------------.     /            /   .---------------.                   *
*     |Object-space coords+-+->/  Projector +-+->|UV-space coords|                   *
*     '-------------------'   /____________/     '-------+-------'                   *
*                                                        |                           *
*                                                        +---------+                 *
*      __________________                         _______________  |                 *
*     /                 /   .--------------.     /              /  |                 *
*    /                 /<-+-+ Texel coords |<-+-+ Corresponder /<--+                 *
*   /  Texture filter /     '--------------'   /______________/                      *
*  /                 /<--+                                                           *
* /_________________/    | .-------------------------.                               *
*           |            +-+ Additional texture data |                               *
*           |              '-------------------------'                               *
*           v                                                                        *
*  .-------------------.                                                             *
*  |  Resulting value  |                                                             *
*  '-------------------'                                                             *
**************************************************************************************


The following assumes we're dealing with surface textures of three-dimensional
objects.

The texturing process starts with a point on the object's surface. Since surface textures
of 3D objects are defined on a 2D domain, the first thing that needs to happen is mapping
the three-dimensional point from object space onto a two-dimensional _texture space_ (also
referred to as _UV space_). Intuitively this process can be thought of as cutting the object
along some seams and "flattening it out". This mapping is known as the _projector function_ 
in some literature.

In some cases, the projector function may be defined analytically. However, most of the time
the mapping is defined manually, via the process of [[UvMapping]].

Once the UV space coordinates corresponding to our point are obtained, we need to convert them
into texel coordinates. This is done by means of a _corresponder function_. Usually, a corresponder
function will map $0$ and $1$ values to the edges of a texture image, and the main difference is
how it handles UVs outside of the $[0; 1]$ range. The possible behaviors include:

- repreating the texture;
- repeating with mirroring;
- clamping to the texel values at the edge of the image;

Once we know which texel our point maps to, we can use [[TextureFiltering]] to obtain the value
of the surface property that interests us.

Categories: [[:ComputerGraphics]], [[:TextureMapping]]
