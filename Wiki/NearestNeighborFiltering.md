*Nearest-neighbor filtering* is the simplest and fastest form of
[[TextureFiltering]]. The texel coordinates produced as part of the
[[TexturePipeline]] have a fractional part, the nearst-neighbor filter ignores
it, rounding the coordinates to the nearest integer and reading from the texture
at the resulting integer coords.

The result of magnification with this filter appears blocky and crisp, which
might actually be desireable in certain cases.

On the other hand, nearest-neighbor filtering is almost never what one would use
for minification. During minification, many elements of the source texture
(texels) affect the sampling result, yet the nearest-neigbor filter throws away
all of them except just one, which results in aliasing / shimmering.

![512x512 original vs. versions minified with nearest-neighbor (top) and bicubic (bottom) filters.](/Media/Lena.png)

![32x32 original vs. upscaled to 128x128 with nearest-neighbor filtering.](/Media/Contra.png)

Categories: [[:ComputerGraphics]], [[:TextureMapping]], [[:TextureFiltering]], [[:ImageProcessing]]
