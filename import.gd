@tool
extends EditorScenePostImport

#This script will break out multiple animations from a single animation player
#and assign them to their own individual animation players
#This script needs to be added to the 'Import Script' property in the advanced
#import dialogue.

func _post_import(scene):
	for child in scene.get_children():
		if child is AnimationPlayer:
			for anim in child.get_animation_list(): #Iterate over every animation in the "default" player
				#setup variables
					var animation_resource : Animation = child.get_animation(anim) #Get the actual animation resource
					var new_anim_lib : AnimationLibrary = AnimationLibrary.new() #Create a new library
					var new_anim_player : AnimationPlayer = AnimationPlayer.new() #Create a new AnimationPlayer
					
					#Setup new AminationPlayer in scene, name it after the animation it will be responsible for
					scene.add_child(new_anim_player)
					new_anim_player.set_owner(scene)
					new_anim_player.name = str(anim)
					
					#Add our animation resource to our animation library, 
					#and then add that library to the new AnimationPlayer
					new_anim_lib.add_animation(anim, animation_resource) #Add animation to library
					new_anim_player.add_animation_library(anim, new_anim_lib)
					
			child.queue_free() #Get rid of original animationplayer
			
	return scene
