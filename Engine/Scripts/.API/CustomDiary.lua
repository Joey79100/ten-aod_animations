-- TEN 1.10.0.2 API
-- This file is auto-generated and for IntelliSense purposes only!
-- Any changes made here will not be reflected in the engine.

---@meta

---CustomDiary module for Tomb Engine
---@class CustomDiary
CustomDiary = {}

---Imports diary from an external file.
---There are different types that must be defined.
---(diary, background, controls, pageNumbers, notification, image, text, narration).
---Each of the section's arguements are the same as the functions described in this documentation.
---Refer to DiarySetup.lua file for a sample script.
---@param fileName string # Name of file in the script folder without extension to import the diary from.
function CustomDiary.ImportDiary(fileName) end

---Creates a diary with extensive configuration options.
---Parameters:.
---@param object ObjID # The pickup object that will be used to create the diary. The diary can be created using PICKUP_ITEMX (596-611) or DIARY_ITEM (986). Access the diary by selecting the item in the inventory.
---@param objectIdBg ObjID # Object ID for the diary's sprite.
---@param spriteIdBg integer # Sprite ID from the specified object for the diary's sprite.
---@param colorBg Color # Color of diary's sprite.
---@param pos Vec2 # X,Y position of the diary background sprite in screen percent (0-100).
---@param rot number # Rotation of the diary's sprite (0-360).
---@param scale Vec2 # X,Y Scaling factor for the diary background sprite.
---@param alignMode AlignMode # Alignment for the diary's sprite.
---@param scaleMode ScaleMode # Scaling for the diary's sprite.
---@param blendMode BlendID # Blending modes for the diary's sprite.
---@param alpha integer # Alpha value for the diary's sprite (0-255).
---@param pageSound Sound # Sound to play with page turn.
---@param exitSound Sound # Sound to play when existing the diary.
---@return CustomDiary # 
function CustomDiary.Create(object, objectIdBg, spriteIdBg, colorBg, pos, rot, scale, alignMode, scaleMode, blendMode, alpha, pageSound, exitSound) end

---The function retrieves a diary by its unique object.
---This function is useful when you need to access or manipulate a diary that has already been created .
---@param object ObjID # The pickup object that was used to create the diary (596-611, 986).
---@return CustomDiary # The diary created using the object.
function CustomDiary.Get(object) end

---The function removes a custom diary and its associated data from the system.
---It ensures that the diary is no longer tracked or accessible in the LevelVars.Engine.Diaries.
---Please call this once a diary has served its purpose.
---It helps reduce the savegame size.
---@param object ObjID # The pickup object that was used to create the diary (596-611, 986).
function CustomDiary.Delete(object) end

---The function adds the callback to enable diaries in levels.
---This needs to be added to every level preferably in the LevelFuncs.OnStart.
---@param value boolean # True enables the diaries to be activated. False would disable the diaries.
function CustomDiary.Status(value) end

---The function checks whether the specified diary is currently visible.
---@return boolean # `true` if the diary is visible and `false` if it is not.
function CustomDiary.IsVisible() end

---The function displays the specified diary.
---Can be used to call the diary directly using volume or classic triggers.
---@param pageIndex integer # The page number at which diary should be opened.
function CustomDiary.ShowDiary(pageIndex) end

---The function returns the number of unlocked pages in the diary.
---@return integer # Total number of unlocked pages in the diary.
function CustomDiary.GetUnlockedPageCount() end

---The function unlocks the specified diary up to the given page number.
---This value can be overridden to lock or unlock pages as needed.
---A lower number can be set to restrict access to previously unlocked pages.
---@param pageIndex integer # The page number up to which the diary should be unlocked.
---@param notification boolean # If true, and notification has been defined, a notification icon and sound will be played.
function CustomDiary.UnlockPages(pageIndex, notification) end

---The function clears the page for the diary.
---@param pageIndex integer # The page number to be cleared.
function CustomDiary.ClearPage(pageIndex) end

---Adds a text entry to the specified page for the diary.
---@param pageIndex integer # Page number to add the text entry to.
---@param text string # Text entry to be added to the page.
---@param textPos Vec2 # X,Y position of the text.
---@param textOptions DisplayStringOption # Alignment and effects for the text. Note that text is automatically aligned to the left.
---@param textScale number # Scale factor for the text.
---@param textColor Color # Color of the text.
function CustomDiary.AddTextEntry(pageIndex, text, textPos, textOptions, textScale, textColor) end

---Adds an image entry to the specified page for the diary.
---@param pageIndex integer # Page number to add the image entry to.
---@param objectId ObjID # Object ID for the image entry sprite.
---@param spriteId integer # Sprite ID from the specified object for the image entry.
---@param color Color # Color of image entry.
---@param pos Vec2 # X,Y position of the image entry in screen percent (0-100).
---@param rot number # Rotation of the image entry (0-360).
---@param scale Vec2 # X,Y Scaling factor for the image entry.
---@param alignMode AlignMode # Alignment for the image entry.
---@param scaleMode ScaleMode # Scaling for the image entry.
---@param blendMode BlendID # Blending modes for the image entry.
function CustomDiary.AddImageEntry(pageIndex, objectId, spriteId, color, pos, rot, scale, alignMode, scaleMode, blendMode) end

---Add a narration track in the voice channel to the page.
---Track is played with the draw button.
---@param pageIndex integer # Page number to add the narration track to.
---@param trackName string # of track (without file extension) to play.
function CustomDiary.AddNarration(pageIndex, trackName) end

---Remove the narration track from the page of the specified diary.
---@param pageIndex integer # Page number to remove the narration track from.
function CustomDiary.RemoveNarration(pageIndex) end

---Add a background image for the diary.
---@param objectId ObjID # Object ID for the diary's background.
---@param spriteId integer # Sprite ID from the specified object for the diary's background.
---@param color Color # Color of diary's background.
---@param pos Vec2 # X,Y position of the diary's background in screen percent (0-100).
---@param rot number # Rotation of the diary's background sprite (0-360).
---@param scale Vec2 # X,Y Scaling factor for the diary's background.
---@param alignMode AlignMode # Alignment for the diary's background.
---@param scaleMode ScaleMode # Scaling for the diary's background.
---@param blendMode BlendID # Blending modes for the diary's background.
---@param alpha integer # Alpha value for the diary's background (0-255).
function CustomDiary.AddBackground(objectId, spriteId, color, pos, rot, scale, alignMode, scaleMode, blendMode, alpha) end

---Clears settings for the background for the specified diary.
function CustomDiary.ClearBackground() end

---Customizes the notification icon and sound for the diary.
---@param notificationTime integer # Time in seconds the notification icon will show on screen.
---@param objectId ObjID # Object ID for the notification icon.
---@param spriteId integer # Sprite ID from the specified object for the notification icon.
---@param color Color # Color of notification icon.
---@param pos Vec2 # X,Y position of the notification icon in screen percent (0-100).
---@param rot number # Rotation of the notification icon (0-360).
---@param scale Vec2 # X,Y Scaling factor for the notification icon.
---@param alignMode AlignMode # Alignment for the notification icon.
---@param scaleMode ScaleMode # Scaling for the notification icon.
---@param blendMode BlendID # Blending modes for the notification icon.
---@param notificationSound Sound # Sound to play with notification icon.
function CustomDiary.CustomizeNotification(notificationTime, objectId, spriteId, color, pos, rot, scale, alignMode, scaleMode, blendMode, notificationSound) end

---Clears settings for the notification system for the specified diary.
function CustomDiary.ClearNotification() end

---Customizes the page numbers for the diary.
---@param pageNoType integer # Specifies the format for page numbers (1 or 2). 1: Displays only the current page number. 2: Formats the page number as: [Prefix][CurrentPage][Separator][UnlockedPages].
---@param prefix string # Prefix to be added for type 2 of page numbers.
---@param separator string # Separator to be added for type 2 of page numbers.
---@param textPos Vec2 # X,Y position of the page numbers.
---@param textOptions DisplayStringOption # Alignment and effects for the text. Note that text is automatically aligned to the left.
---@param textScale number # Scale factor for the page numbers.
---@param textColor Color # Color of the page numbers.
function CustomDiary.CustomizePageNumbers(pageNoType, prefix, separator, textPos, textOptions, textScale, textColor) end

---Clears settings for the page numbers for the specified diary.
function CustomDiary.ClearPageNumbers() end

---Customizes the controls text for the diary.
---@param textPos Vec2 # X,Y position of the controls text.
---@param textOptions DisplayStringOption # Alignment and effects for the text. Note that text is automatically aligned to the left.
---@param textScale number # Scale factor for the controls.
---@param textColor Color # Color of the page controls.
function CustomDiary.CustomizeControls(textPos, textOptions, textScale, textColor) end

---Customizes the display text for controls for specified diary.
---@param string1 string # Text for Space key controls text.
---@param string2 string # Text for Left key controls text.
---@param string3 string # Text for Right key controls text.
---@param string4 string # Text for Esc key controls text.
---@param separator string # Text for separator between controls text.
function CustomDiary.CustomizeControlsText(string1, string2, string3, string4, separator) end

---Clears settings for the specified diary's controls text.
function CustomDiary.ClearControls() end

return CustomDiary
