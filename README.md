# unity_shader_play
untiy_shader！

# Source
https://www.youtube.com/watch?v=kpBnIAPtsj8


## Scence1
Create a new quad, and then in "Mesh Render"  --- Materials --- Element 0 --- choose a custom material.
Or you will not able to choose a custom shader.
If the material is "Default-Material" the shader select in the bottom panel is forbidden.

Shader can only be applied to materials. After you created a shader, apply it to a material, then you can apply this material to Quad or  sprite.

Some shaders take one or more texture for rendering. 
check "lerp" material for example, shaders can takes texture and other params from settings in material.
Or you can set the params and material in the game object panel, the last panel(if you not adding any custome components) is material settings.

(Of course you can set textures in shaders , that is default texture)


## Scence2

blur and custom effect are all put under "Main Camera".



