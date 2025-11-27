-- TEN 1.10.0.2 API
-- This file is auto-generated and for IntelliSense purposes only!
-- Any changes made here will not be reflected in the engine.

---@meta

---View module for Tomb Engine
---@class View
View = {}

---Constants for sprite align modes.
---To be used with Strings.DisplayString class.
---@enum AlignMode
AlignMode = {
	---Center alignment.
	CENTER = "CENTER",
	---Center top alignment.
	CENTER_TOP = "CENTER_TOP",
	---Center bottom alignment.
	CENTER_BOTTOM = "CENTER_BOTTOM",
	---Center left alignment.
	CENTER_LEFT = "CENTER_LEFT",
	---Center right alignment.
	CENTER_RIGHT = "CENTER_RIGHT",
	---Top left alignment.
	TOP_LEFT = "TOP_LEFT",
	---Top right alignment.
	TOP_RIGHT = "TOP_RIGHT",
	---Bottom left alignment.
	BOTTOM_LEFT = "BOTTOM_LEFT",
	---Bottom right alignment.
	BOTTOM_RIGHT = "BOTTOM_RIGHT",
}

---Module-prefixed alias for AlignMode
View.AlignMode = AlignMode

---Constants for the type of the Camera.
---To be used with View.GetCameraType function.
---@enum CameraType
CameraType = {
	---Standard in-game camera when weapons are holstered.
	NORMAL = "NORMAL",
	---In-game camera when weapons are unholstered.
	COMBAT = "COMBAT",
	---Classic fixed camera.
	FIXED = "FIXED",
	---Look camera.
	LOOK = "LOOK",
	---Flyby or tracking camera.
	FLYBY = "FLYBY",
	---Binocular camera.
	BINOCULARS = "BINOCULARS",
	---Lasersight camera.
	LASERSIGHT = "LASERSIGHT",
}

---Module-prefixed alias for CameraType
View.CameraType = CameraType

---Constants for the post-process effects to apply.
---To be used with View.SetPostProcessMode function.
---@enum PostProcessMode
PostProcessMode = {
	---No postprocess effect.
	NONE = "NONE",
	---Black & white effect.
	MONOCHROME = "MONOCHROME",
	---Negative image effect.
	NEGATIVE = "NEGATIVE",
	---Similar to negative effect, but with different color operation.
	EXCLUSION = "EXCLUSION",
}

---Module-prefixed alias for PostProcessMode
View.PostProcessMode = PostProcessMode

---Constants for display sprite scale modes.
---To be used with View.DisplaySprite class.
---@enum ScaleMode
ScaleMode = {
	---Image will proportionally fit the whole image into the sprite surface.
	FIT = "FIT",
	---Image will scale up proportionally and crop to fill all sprite surface.
	FILL = "FILL",
	---Image will stretch according to sprite dimensions, not taking aspect ratio into consideration.
	STRETCH = "STRETCH",
}

---Module-prefixed alias for ScaleMode
View.ScaleMode = ScaleMode

---Represents a display sprite.
---@class DisplaySprite
DisplaySprite = {}

---Module-prefixed alias for DisplaySprite
View.DisplaySprite = DisplaySprite

---Create a DisplaySprite object.
---@param objectID ObjID # ID of the sprite sequence object.
---@param index integer # Index of the sprite in the sequence.
---@param pos Vec2 # Display position in percent.
---@param rot number # Rotation in degrees.
---@param scale Vec2 # Horizontal and vertical scale in percent. Scaling is interpreted by the DisplaySpriteEnum.ScaleMode passed to the Draw() function call.
---@param color Color? # Color. (default: `Color(255, 255, 255)`)
---@return DisplaySprite # A new DisplaySprite object.
function DisplaySprite.new(objectID, index, pos, rot, scale, color) end

---Create a DisplaySprite object.
---@param objectID ObjID # ID of the sprite sequence object.
---@param index integer # Index of the sprite in the sequence.
---@param pos Vec2 # Display position in percent.
---@param rot number # Rotation in degrees.
---@param scale Vec2 # Horizontal and vertical scale in percent. Scaling is interpreted by the DisplaySpriteEnum.ScaleMode passed to the Draw() function call.
---@param color Color? # Color. (default: `Color(255, 255, 255)`)
---@return DisplaySprite # A new DisplaySprite object.
function View.DisplaySprite.new(objectID, index, pos, rot, scale, color) end

---Create a DisplaySprite object with a video image.
---Video should be played using View.PlayVideo function in a background mode.
---If no video is played, sprite will not show.
---@param pos Vec2 # Display position in percent.
---@param rot number # Rotation in degrees.
---@param scale Vec2 # Horizontal and vertical scale in percent. Scaling is interpreted by the DisplaySpriteEnum.ScaleMode passed to the Draw() function call.
---@param color Color? # Color. __Default: Color(255, 255, 255, 255)__ (optional)
---@return DisplaySprite # A new DisplaySprite object with attached video image.
function DisplaySprite.new(pos, rot, scale, color) end

---Create a DisplaySprite object with a video image.
---Video should be played using View.PlayVideo function in a background mode.
---If no video is played, sprite will not show.
---@param pos Vec2 # Display position in percent.
---@param rot number # Rotation in degrees.
---@param scale Vec2 # Horizontal and vertical scale in percent. Scaling is interpreted by the DisplaySpriteEnum.ScaleMode passed to the Draw() function call.
---@param color Color? # Color. __Default: Color(255, 255, 255, 255)__ (optional)
---@return DisplaySprite # A new DisplaySprite object with attached video image.
function View.DisplaySprite.new(pos, rot, scale, color) end

---Get the object ID of the sprite sequence object used by the display sprite.
---@return ObjID # Sprite sequence object ID.
function DisplaySprite:GetObjectID() end

---Get the sprite ID in the sprite sequence object used by the display sprite.
---@return integer # Sprite ID in the sprite sequence object. Value __-1__ means that it is a background video, played using View.PlayVideo.
function DisplaySprite:GetSpriteID() end

---Get the display position of the display sprite in percent.
---@return Vec2 # Display position in percent.
function DisplaySprite:GetPosition() end

---Get the rotation of the display sprite in degrees.
---@return number # Rotation in degrees.
function DisplaySprite:GetRotation() end

---Get the horizontal and vertical scale of the display sprite in percent.
---@return Vec2 # Horizontal and vertical scale in percent.
function DisplaySprite:GetScale() end

---Get the color of the display sprite.
---@return Color # Color.
function DisplaySprite:GetColor() end

---Set the sprite sequence object ID used by the display sprite.
---@param objectID ObjID # New sprite sequence object ID.
function DisplaySprite:SetObjectID(objectID) end

---Set the sprite ID in the sprite sequence object used by the display sprite.
---@param spriteID integer # New sprite ID in the sprite sequence object.
function DisplaySprite:SetSpriteID(spriteID) end

---Set the display position of the display sprite in percent.
---@param position Vec2 # New display position in percent.
function DisplaySprite:SetPosition(position) end

---Set the rotation of the display sprite in degrees.
---@param rotation number # New rotation in degrees.
function DisplaySprite:SetRotation(rotation) end

---Set the horizontal and vertical scale of the display sprite in percent.
---@param scale number # New horizontal and vertical scale in percent.
function DisplaySprite:SetScale(scale) end

---Set the color of the display sprite.
---@param color Color # New color.
function DisplaySprite:SetColor(color) end

---Draw the display sprite in display space for the current frame.
---@param priority integer? # Draw priority. Can be thought of as a layer, with higher values having precedence. Negative values will draw sprite above strings, while positive values will draw it under. (default: `0`)
---@param alignMode AlignMode? # Align mode interpreting an offset from the sprite's position. (default: `View.AlignMode.CENTER`)
---@param scaleMode ScaleMode? # Scale mode interpreting the display sprite's horizontal and vertical scale. (default: `View.ScaleMode.FIT`)
---@param blendMode BlendID? # Blend mode. (default: `Effects.BlendID.ALPHABLEND`)
function DisplaySprite:Draw(priority, alignMode, scaleMode, blendMode) end

---Constructor function for DisplaySprite (alias for DisplaySprite.new)
---@param objectID ObjID # ID of the sprite sequence object.
---@param index integer # Index of the sprite in the sequence.
---@param pos Vec2 # Display position in percent.
---@param rot number # Rotation in degrees.
---@param scale Vec2 # Horizontal and vertical scale in percent. Scaling is interpreted by the DisplaySpriteEnum.ScaleMode passed to the Draw() function call.
---@param color Color? # Color. (default: `Color(255, 255, 255)`)
---@return DisplaySprite # A new DisplaySprite object.
function DisplaySprite(objectID, index, pos, rot, scale, color) end

---@param pos Vec2 # Display position in percent.
---@param rot number # Rotation in degrees.
---@param scale Vec2 # Horizontal and vertical scale in percent. Scaling is interpreted by the DisplaySpriteEnum.ScaleMode passed to the Draw() function call.
---@param color Color? # Color. __Default: Color(255, 255, 255, 255)__ (optional)
---@return DisplaySprite # A new DisplaySprite object with attached video image.
function DisplaySprite(pos, rot, scale, color) end

---Constructor function for View.DisplaySprite (alias for View.DisplaySprite.new)
---@param objectID ObjID # ID of the sprite sequence object.
---@param index integer # Index of the sprite in the sequence.
---@param pos Vec2 # Display position in percent.
---@param rot number # Rotation in degrees.
---@param scale Vec2 # Horizontal and vertical scale in percent. Scaling is interpreted by the DisplaySpriteEnum.ScaleMode passed to the Draw() function call.
---@param color Color? # Color. (default: `Color(255, 255, 255)`)
---@return DisplaySprite # A new DisplaySprite object.
function View.DisplaySprite(objectID, index, pos, rot, scale, color) end

---@param pos Vec2 # Display position in percent.
---@param rot number # Rotation in degrees.
---@param scale Vec2 # Horizontal and vertical scale in percent. Scaling is interpreted by the DisplaySpriteEnum.ScaleMode passed to the Draw() function call.
---@param color Color? # Color. __Default: Color(255, 255, 255, 255)__ (optional)
---@return DisplaySprite # A new DisplaySprite object with attached video image.
function View.DisplaySprite(pos, rot, scale, color) end


---Do a full-screen fade-in from black.
---@param speed number? # Speed in units per second. A value of 1 will make the fade take one second. (default: `1`)
function View.FadeIn(speed) end

---Do a full-screen fade-to-black.
---The screen will remain black until a call to FadeIn.
---@param speed number? # Speed in units per second. A value of 1 will make the fade take one second. (default: `1`)
function View.FadeOut(speed) end

---Move black cinematic bars in from the top and bottom of the game window.
---@param height number? # Percentage of the screen to be covered. (default: `30`)
---@param speed number? # Coverage percent per second. (default: `30`)
function View.SetCineBars(height, speed) end

---Set field of view.
---@param angle number # Angle in degrees (clamped to [10, 170]).
function View.SetFOV(angle) end

---Get field of view.
---@return number # Current FOV angle in degrees.
function View.GetFOV() end

---Shows the mode of the game camera.
---@return CameraType # Value used by the game camera.
function View.GetCameraType() end

---Gets current camera position.
---@return Vec3 # Current camera position.
function View.GetCameraPosition() end

---Gets current camera target.
---@return Vec3 # Current camera target.
function View.GetCameraTarget() end

---Gets current room where camera is positioned.
---@return Room # Current room of the camera.
function View.GetCameraRoom() end

---Sets the post-process effect mode, like negative or monochrome.
---@param effect PostProcessMode # Effect type to set.
function View.SetPostProcessMode(effect) end

---Sets the post-process effect strength.
---@param strength number? # How strong the effect is. (default: `1`)
function View.SetPostProcessStrength(strength) end

---Sets the post-process tint.
---@param tint Color # value to use.
function View.SetPostProcessTint(tint) end

---Play a video file.
---File should be placed in the `FMV` folder.
---@param fileName string # Video file name. Can be provided without extension, if type is mp4, mkv, mov or avi.
---@param background boolean? # Play video in the background mode. In such case, video won't play in fullscreen, but must be shown using special animated texture type in Tomb Editor, or using View.DisplaySprite. (default: `false`)
---@param silent boolean? # Play video without sound. (default: `false`)
---@param loop boolean? # Play video in a loop. (default: `false`)
function View.PlayVideo(fileName, background, silent, loop) end

---Stop the currently playing video.
---Only possible if video is playing in the background mode.
function View.StopVideo() end

---Gets the currently playing video position.
---@return Time # Current video position.
function View.GetVideoPosition() end

---Sets the currently playing video position.
---@param position Time # New video position.
function View.SetVideoPosition(position) end

---Gets the dominant color for the current video frame.
---If no video is playing, returns black.
---@return Color # Dominant video color.
function View.GetVideoDominantColor() end

---Checks if video is currently playing.
---@param name string? # Video file name. If provided, checks if the currently playing video file name is the same as the provided one. (optional)
---@return boolean # True if video is currently playing.
function View.IsVideoPlaying(name) end

---Play a flyby sequence.
---@param seqID integer # Flyby sequence ID.
function View.PlayFlyby(seqID) end

---Get a flyby sequence's position at a specified progress point in percent.
---@param seqID integer # Flyby sequence ID.
---@param progress number # Progress point in percent. Clamped to [0, 100].
---@param loop boolean? # Smooth the position near start and end points, as if the sequence is looped. (optional)
---@return Vec3 # Position at the given progress point.
function View.GetFlybyPosition(seqID, progress, loop) end

---Get a flyby sequence's rotation at a specified progress point in percent.
---@param seqID integer # Flyby sequence ID.
---@param progress number # Progress point in percent. Clamped to [0, 100].
---@param loop boolean? # Smooth the position near start and end points, as if the sequence is looped. (optional)
---@return Rotation # Rotation at the given progress point.
function View.GetFlybyRotation(seqID, progress, loop) end

---Reset object camera back to Lara and deactivate object camera.
function View.ResetObjCamera() end

---Flash screen.
---@param color Color? # Color. (default: `Color(255, 255, 255)`)
---@param speed number? # Speed in units per second. Value of 1 will make flash take one second. Clamped to [0.005, 1.0]. (default: `1`)
function View.FlashScreen(color, speed) end

---Get the display resolution's aspect ratio.
---@return number # Display resolution's aspect ratio.
function View.GetAspectRatio() end

return View
