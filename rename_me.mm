/*
Materials in games and renderes:

Material is a collection of: 1 shader + uniforms(+samlpers) + flags
Flags aka render settings:
- Blend mode
- Back-face culled
- Depth tested/ing
- Transparency
- etc
*/

/*
Main rendering optimisation techniques:

1. Frustum Culling.
2. Occlusion culling.

When it comes to a top-down-ish ONLY camera that views our world, "Frustum Culling" is enough.
Think of Leauge of Legends, RTS games, DOTA2, Overcooked, Diablo 4.

If our scene/world is explorable in all three dimensions, both technique is needed.
Think of any FPS or TPS game, CS, Bayoneta, CoD, WoW, NFS, this includes a lot of game genres.

<--- Frustum culling --->
The idea is to not submit meshes that are outside of the camera's frustum/view angle.

Few things that we need for this:
- Our meshes need to have calculated bounding boxes, that encapsulates their bounds.
- To achieve fast look-up, we need to partition our game world into chunks as well:
  - If the scene is non-vertical, we can use the Quad-tree. Like in LoL, Diablo 4, maybe CS.
  - If the scene is pretty vertical, we can use the Oct-tree. Like in CoD, WoW, Elden Ring.

Into these structures we put our meshes' coordinates, and their bounding box as well if needed.

<--- Occlusion culling --->

<--- Bounding Boxes --->

<--- Occlusion Proxies/Meshes/Geometry --->

<---  --->
*/

/*
How a renderer should work in an ECS game engine

We should have a system that does the rendering, no shit.
We could also seperate the rendering into multiple systems such as: 3D, Text+UI, Particles, etc

Either way this is the "3D" part, where our gameworld's 3D meshes are sent to the Renderer:

*/