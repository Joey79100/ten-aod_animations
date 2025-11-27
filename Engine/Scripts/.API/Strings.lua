-- TEN 1.10.0.2 API
-- This file is auto-generated and for IntelliSense purposes only!
-- Any changes made here will not be reflected in the engine.

---@meta

---Strings module for Tomb Engine
---@class Strings
Strings = {}

---Constants for Display String Options.
---To be used with Strings.DisplayString class.
---@enum DisplayStringOption
DisplayStringOption = {
	---Sets the horizontal origin point to the center of the string.
	CENTER = "CENTER",
	---Gives the string a drop shadow effect.
	SHADOW = "SHADOW",
	---Sets the horizontal origin point to the right side of the string.
	RIGHT = "RIGHT",
	---Blinks the string.
	BLINK = "BLINK",
	---Sets the vertical origin point of the multiline string to the center.
	VERTICAL_CENTER = "VERTICAL_CENTER",
}

---Module-prefixed alias for DisplayStringOption
Strings.DisplayStringOption = DisplayStringOption

---A string appearing on the screen.
---Can be used for subtitles and "2001, somewhere in Egypt"-style messages.
---Uses screen-space coordinates, with x values specifying the number of pixels from the left of the window, and y values specifying the number of pixels from the top of the window.
---Since different players will have different resolutions, you should work in terms of percentages where possible, and use Util.ScreenToPercent|ScreenToPercent and Util.PercentToScreen|PercentToScreen when you need to use screen-space coordinates.
---@class DisplayString
DisplayString = {}

---Module-prefixed alias for DisplayString
Strings.DisplayString = DisplayString

---Create a DisplayString.
---For use in Strings.ShowString|ShowString and Strings.HideString|HideString.
---@param string string # The string to display or key of the translated string.
---@param position Vec2 # Position of the string in pixel coordinates.
---@param scale number? # Size of the string, relative to the default size. (default: `1`)
---@param color Color? # The color of the text. (default: `Color(255, 255, 255)`)
---@param translated boolean? # If false or omitted, the input string argument will be displayed as is. If true, the string argument will be treated as the key of a translated string specified in strings.lua. (default: `false`)
---@param flags DisplayStringOption? # Flags which affect visual representation of a string, such as shadow or alignment. (optional)
---@param area Vec2? # Rectangular area in pixels to perform word wrapping. No word wrapping will occur if this parameter is default or omitted. (default: `Vec2(0, 0)`)
---@return DisplayString # A new DisplayString object.
function DisplayString.new(string, position, scale, color, translated, flags, area) end

---Create a DisplayString.
---For use in Strings.ShowString|ShowString and Strings.HideString|HideString.
---@param string string # The string to display or key of the translated string.
---@param position Vec2 # Position of the string in pixel coordinates.
---@param scale number? # Size of the string, relative to the default size. (default: `1`)
---@param color Color? # The color of the text. (default: `Color(255, 255, 255)`)
---@param translated boolean? # If false or omitted, the input string argument will be displayed as is. If true, the string argument will be treated as the key of a translated string specified in strings.lua. (default: `false`)
---@param flags DisplayStringOption? # Flags which affect visual representation of a string, such as shadow or alignment. (optional)
---@param area Vec2? # Rectangular area in pixels to perform word wrapping. No word wrapping will occur if this parameter is default or omitted. (default: `Vec2(0, 0)`)
---@return DisplayString # A new DisplayString object.
function Strings.DisplayString.new(string, position, scale, color, translated, flags, area) end

---Get the display string's color.
---@return Color # Display string's color.
function DisplayString:GetColor() end

---Set the display string's color.
---@param color Color # The new color of the display string.
function DisplayString:SetColor(color) end

---Get the string key.
---@return string # The string key.
function DisplayString:GetKey() end

---Set the string key to use.
---@param key string # The new key for the display string.
function DisplayString:SetKey(key) end

---Get the scale of the string.
---@return number # Scale.
function DisplayString:GetScale() end

---Set the scale of the string.
---@param scale number # New scale of the string relative to the default size.
function DisplayString:SetScale(scale) end

---Get the position of the string.
---Screen-space coordinates are returned.
---@return Vec2 # pos Position in pixel coordinates.
function DisplayString:GetPosition() end

---Set the position of the string.
---Screen-space coordinates are expected.
---@param pos Vec2 # New position in pixel coordinates.
function DisplayString:SetPosition(pos) end

---Get the word-wrapping area of the string.
---Screen-space coordinates are returned.
---If `Vec2(0, 0)` is returned, it means there is no word wrapping for this string.
---@return Vec2 # area Word-wrapping area in pixel coordinates.
function DisplayString:GetArea() end

---Set the word-wrapping area of the string.
---Screen-space coordinates are expected.
---If set to `Vec2(0, 0)`, no word wrapping will occur.
---@param pos Vec2 # New word-wrapping area in pixel coordinates.
function DisplayString:SetArea(pos) end

---Set the display string's flags.
---@param table table # The table with Strings.DisplayStringOption flags.
function DisplayString:SetFlags(table) end

---Get the display string's flags.
---@return table # A table of booleans representing Strings.DisplayStringOption flags, indexed from 1:<br>1: TEN.Strings.DisplayStringOption.CENTER<br>2: TEN.Strings.DisplayStringOption.SHADOW<br>3: TEN.Strings.DisplayStringOption.RIGHT<br>4: TEN.Strings.DisplayStringOption.BLINK<br>5: TEN.Strings.DisplayStringOption.VERTICAL_CENTER<br> If a boolean value is true, the corresponding flag is assigned to the DisplayString, otherwise it is not assigned.
function DisplayString:GetFlags() end

---Constructor function for DisplayString (alias for DisplayString.new)
---@param string string # The string to display or key of the translated string.
---@param position Vec2 # Position of the string in pixel coordinates.
---@param scale number? # Size of the string, relative to the default size. (default: `1`)
---@param color Color? # The color of the text. (default: `Color(255, 255, 255)`)
---@param translated boolean? # If false or omitted, the input string argument will be displayed as is. If true, the string argument will be treated as the key of a translated string specified in strings.lua. (default: `false`)
---@param flags DisplayStringOption? # Flags which affect visual representation of a string, such as shadow or alignment. (optional)
---@param area Vec2? # Rectangular area in pixels to perform word wrapping. No word wrapping will occur if this parameter is default or omitted. (default: `Vec2(0, 0)`)
---@return DisplayString # A new DisplayString object.
function DisplayString(string, position, scale, color, translated, flags, area) end

---Constructor function for Strings.DisplayString (alias for Strings.DisplayString.new)
---@param string string # The string to display or key of the translated string.
---@param position Vec2 # Position of the string in pixel coordinates.
---@param scale number? # Size of the string, relative to the default size. (default: `1`)
---@param color Color? # The color of the text. (default: `Color(255, 255, 255)`)
---@param translated boolean? # If false or omitted, the input string argument will be displayed as is. If true, the string argument will be treated as the key of a translated string specified in strings.lua. (default: `false`)
---@param flags DisplayStringOption? # Flags which affect visual representation of a string, such as shadow or alignment. (optional)
---@param area Vec2? # Rectangular area in pixels to perform word wrapping. No word wrapping will occur if this parameter is default or omitted. (default: `Vec2(0, 0)`)
---@return DisplayString # A new DisplayString object.
function Strings.DisplayString(string, position, scale, color, translated, flags, area) end


---Show some text on-screen.
---@param string DisplayString # The string object to draw.
---@param time number? # The time in seconds for which to show the string. If not given, the string will have an "infinite" life, and will show until HideString is called or until the level is finished. (optional)
---@param autoDelete boolean? # Should be string automatically deleted after timeout is reached. If not given, the string will remain allocated even after timeout is reached, and can be shown again without re-initialization. (default: `true`)
function Strings.ShowString(string, time, autoDelete) end

---Hide some on-screen text.
---@param string DisplayString # The string object to hide. Must previously have been shown with a call to ShowString, or this function will have no effect.
function Strings.HideString(string) end

---Checks if the string is shown.
---@param string DisplayString # The string object to be checked.
---@return boolean # true if it is shown, false if it is hidden
function Strings.IsStringDisplaying(string) end

return Strings
