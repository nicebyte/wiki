Consider a quad with a 512x64 px texture applied to it. Assume the camera is 
looking at the quad head-on, and is placed so that the quad occupies a screen
area that is exactly 512 pixels wide and 64 pixels tall. In this case, one
screen pixel corresponds to exactly one texture texel.

If we move the camera closer, so that the quad occupies an area of the
screen that is 1024 pixels wide and 128 pixels tall, we now have a single texel
covering 4 screen pixels. When the texel-to-pixel ratio is larger than one,
we say that the texture is _magnified_.

On the other hand, if we move the camera further away from the quad, so that
the screen area of the quad becomes 64x32 pixels, we will have a single screen
pixel covering multiple texels, i.e. the texel-to-pixel ratio becomes less than
one. In this case, we say that the texture is _minified_.

A [[Texture]] is the result of sampling a signal at a certain rate. Texture
magnification means that we are effectively attempting to sample that signal
at a _higher_ rate than that of the texture, whereas minification means we're
attempting to sample at a _lower_ rate. 

We have to _filter_ the available texture data to approximate how the signal
would appear if it was sampled at a higher (or lower) rate. There are many
filters one could use.

[[NearestNeighborFiltering]] and [[BilinearFiltering]] are used for
magnification.
The same filters can be used for minification as well, but typically give much
worse results. Better results for minification can be obtained with
[[TrilinearFiltering]]. 

Since objects in 3D space can be viewed from a variety of angles, it is possible
to end up with a situation where the texture is magnified along some direction,
but minified along another others. [[AnisotropicFiltering]] helps address this
case.

The filtering methods listed above have widespread use in realtime rendering.
However, there are many other filtering methods. See, for example,
[[BicubicFiltering]] or [[LanczosFiltering]].

Categories: [[:ComputerGraphics]], [[:TextureMapping]]
