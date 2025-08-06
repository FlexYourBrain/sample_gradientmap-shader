# Gradient Map Shader - sample project


 	Example demonstrates using a shader for sampling a gradient texture to recolor sprites/animations.
 	Two samplers are assigned to the material one samples the sprites and the other the gradients. The
 	sprites are converted to greyscale using [luma-Y](https://en.wikipedia.org/wiki/Grayscale)
 	component for weighing sum. The greyscale values are then used to get dot product with the sprites
 	sampler and the returned values are used as texture coordinates for the U axis to sample from the 
	gradient texture.

 	The example uses the tint.w constant to set the V axis position since there are 4 gradients of size
 	64x1 px stacked on top of each other in the atlas. So the tint.w component moves the sampling position
 	up and down between 0.0 and 1.0 when switching to different gradients.


[∙ Play The DEMO ∙](https://flexyourbrain.itch.io/gradientmap-shader)


---
<details><summary>LEARN MORE ABOUT THE DEFOLD GAME ENGINE:</summary>

Check out [the documentation pages](https://defold.com/learn) for examples, tutorials, manuals and API docs.

If you run into trouble, help is available in [our forum](https://forum.defold.com).

Happy Defolding!

</details>


---

<sup><sub>Art Credit : Agustin R.</sub></sup>

