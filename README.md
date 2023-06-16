# Godot-4-Animation-Splitter
When you import a scene to Godot that has multiple animated objects, Godot creates a single AnimationPlayer containing all of those animations. This can be an issue if you want them to play back together, as AnimationPlayers can only play one animation at a time.

This script will make your scene import with an individual animation player for each individual animation. This way, you can play all of the animations together.

## How to use:
1. Save this script somewhere in your project
2. Select your imported scene.
3. Click the "Import" tab next to the "Scene" tab.
4. Click "Advanced" in the bottom left.
5. A window will pop up. Towards the bottom of the right hand side panel, there is an "Import Script" property.
6. Load this script into it.
7. Hit "Reimport"
8. Profit???
