-- TEN 1.10.0.2 API
-- This file is auto-generated and for IntelliSense purposes only!
-- Any changes made here will not be reflected in the engine.

---@meta

---Util module for Tomb Engine
---@class Util
Util = {}

---Constants for LogLevel IDs.
---To be used with Util.PrintLog function.
---@enum LogLevel
LogLevel = {
	---Only information messages will be shown.
	INFO = "INFO",
	---Non-critical warnings and information messages will be shown.
	WARNING = "WARNING",
	---Critical errors, non-critical warnings and information messages will be shown.
	ERROR = "ERROR",
}

---Module-prefixed alias for LogLevel
Util.LogLevel = LogLevel

---Determine if there is a clear line of sight between two positions.
---Limited to room geometry.
---Objects are ignored.
---@param roomID number # Room ID of the first position's room.
---@param posA Vec3 # First position.
---@param posB Vec3 # Second position.
---@return boolean # true if there is a line of sight, false if not.
function Util.HasLineOfSight(roomID, posA, posB) end

---Calculate the horizontal distance between two positions.
---@param posA Vec3 # First position.
---@param posB Vec3 # Second position.
---@return number # Horizontal distance between the two positions.
function Util.CalculateHorizontalDistance(posA, posB) end

---Get the projected display space position of a 3D world position.
---Returns nil if the world position is behind the camera view.
---@param worldPos Vec3 # 3D world position.
---@return Vec2 # Projected display space position in percent.
function Util.GetDisplayPosition(worldPos) end

---Translate a pair display position coordinates to pixel coordinates.
---To be used with Strings.DisplayString:SetPosition and Strings.DisplayString.
---@param x number # X component of the display position.
---@param y number # Y component of the display position.
---@return integer # x X coordinate in pixels.
---@return integer # y Y coordinate in pixels.
function Util.PercentToScreen(x, y) end

---Translate a pair of pixel coordinates to display position coordinates.
---To be used with Strings.DisplayString:GetPosition.
---@param x integer # X pixel coordinate to translate to display position.
---@param y integer # Y pixel coordinate to translate to display position.
---@return number # x X component of display position.
---@return number # y Y component of display position.
function Util.ScreenToPercent(x, y) end

---Pick a moveable by the given display position.
---@param position Vec2 # Display space position in percent.
---@return Moveable # Picked moveable (nil if no moveable was found under the cursor).
function Util.PickMoveableByDisplayPosition(position) end

---Pick a static mesh by the given display position.
---@param position Vec2 # Display space position in percent.
---@return Static # Picked static mesh (nil if no static mesh was found under the cursor).
function Util.PickStaticByDisplayPosition(position) end

---Write messages within the Log file.
---@param Message string # to be displayed within the log.
---@param logLevel LogLevel # Log level to be displayed.
---@param allowSpam boolean? # If true, allows continuous spamming of the message. (optional)
function Util.PrintLog(Message, logLevel, allowSpam) end

return Util
