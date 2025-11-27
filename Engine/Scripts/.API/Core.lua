-- TEN 1.10.0.2 API
-- This file is auto-generated and for IntelliSense purposes only!
-- Any changes made here will not be reflected in the engine.

---@meta

---Represents an RGBA or RGB color.
---Components are specified as values clamped to the range [0, 255].
---@class Color
---@field r integer # Red component.
---@field g integer # Green component.
---@field b integer # Blue component.
---@field a integer # Alpha component (0 = invisible, 255 = opaque).
Color = {}

---Module-prefixed alias for Color
TEN.Color = Color

---Create a Color object.
---@param R integer # Red component.
---@param G integer # Green component.
---@param B integer # Blue component.
---@param A integer? # Alpha (transparency) component. (default: `255`)
---@return Color # A new Color object.
function Color.new(R, G, B, A) end

---Create a Color object.
---@param R integer # Red component.
---@param G integer # Green component.
---@param B integer # Blue component.
---@param A integer? # Alpha (transparency) component. (default: `255`)
---@return Color # A new Color object.
function TEN.Color.new(R, G, B, A) end

---@param color Color # This color.
---@return string # A string representing R, G, B, and A values.
function Color:__tostring(color) end

---Constructor function for Color (alias for Color.new)
---@param R integer # Red component.
---@param G integer # Green component.
---@param B integer # Blue component.
---@param A integer? # Alpha (transparency) component. (default: `255`)
---@return Color # A new Color object.
function Color(R, G, B, A) end

---Constructor function for TEN.Color (alias for TEN.Color.new)
---@param R integer # Red component.
---@param G integer # Green component.
---@param B integer # Blue component.
---@param A integer? # Alpha (transparency) component. (default: `255`)
---@return Color # A new Color object.
function TEN.Color(R, G, B, A) end


---Represents a 3D rotation.
---All angle components are in degrees, automatically clamped to the range [0, 360], excluding raw access.
---@class Rotation
---@field x number # Raw X angle component in degrees.
---@field y number # Raw Y angle component in degrees.
---@field z number # Raw Z angle component in degrees.
Rotation = {}

---Module-prefixed alias for Rotation
TEN.Rotation = Rotation

---Create a Rotation object.
---@param x number # X angle component in degrees.
---@param y number # Y angle component in degrees.
---@param z number # Z angle component in degrees.
---@return Rotation # A new Rotation object.
function Rotation.new(x, y, z) end

---Create a Rotation object.
---@param x number # X angle component in degrees.
---@param y number # Y angle component in degrees.
---@param z number # Z angle component in degrees.
---@return Rotation # A new Rotation object.
function TEN.Rotation.new(x, y, z) end

---Get the linearly interpolated Rotation between this Rotation and the input Rotation according to the input alpha.
---@param rot Rotation # Interpolation target.
---@param alpha number # Interpolation alpha in the range [0, 1].
---@return Rotation # Linearly interpolated rotation.
function Rotation:Lerp(rot, alpha) end

---Get the normalized direction vector of this Rotation.
---Can be used to get an offset from a rotation by multiplying needed distance value with this vector.
---@return Vec3 # Normalized direction vector.
function Rotation:Direction() end

---Get the signed version of this Rotation, clamped to [-180, 180].
---@return Rotation # Signed rotation.
function Rotation:Signed() end

---@param rot Rotation # This Rotation.
---@return string # A string showing the X, Y, and Z angle components of this Rotation.
function Rotation:__tostring(rot) end

---Constructor function for Rotation (alias for Rotation.new)
---@param x number # X angle component in degrees.
---@param y number # Y angle component in degrees.
---@param z number # Z angle component in degrees.
---@return Rotation # A new Rotation object.
function Rotation(x, y, z) end

---Constructor function for TEN.Rotation (alias for TEN.Rotation.new)
---@param x number # X angle component in degrees.
---@param y number # Y angle component in degrees.
---@param z number # Z angle component in degrees.
---@return Rotation # A new Rotation object.
function TEN.Rotation(x, y, z) end


---Represents a time value in game frames, with support for formatting to hours, minutes, seconds, and centiseconds (1/100th of a second).
---@class Time
---@field h integer # Hours component.
---@field m integer # Minutes component.
---@field s integer # Seconds component.
---@field c integer # Centiseconds component.
Time = {}

---Module-prefixed alias for Time
TEN.Time = Time

---Create a Time object.
---@return Time # A new Time object initialized to zero time.
function Time.new() end

---Create a Time object.
---@return Time # A new Time object initialized to zero time.
function TEN.Time.new() end

---Create a Time object from a total game frame count (1 second = 30 frames).
---@param gameFrames integer # Total game frame count.
---@return Time # A new Time object initialized with the given frame count.
function Time.new(gameFrames) end

---Create a Time object from a total game frame count (1 second = 30 frames).
---@param gameFrames integer # Total game frame count.
---@return Time # A new Time object initialized with the given frame count.
function TEN.Time.new(gameFrames) end

---Create a Time object from a formatted string.
---@param formattedTime string # Time in the format "HH:MM:SS[.CC]", where [.CC] is centiseconds and is optional.
---@return Time # A new Time object parsed from the given string.
function Time.new(formattedTime) end

---Create a Time object from a formatted string.
---@param formattedTime string # Time in the format "HH:MM:SS[.CC]", where [.CC] is centiseconds and is optional.
---@return Time # A new Time object parsed from the given string.
function TEN.Time.new(formattedTime) end

---Create a Time object from a time unit table (hours, minutes, seconds, centiseconds).
---@param timeUnits table # A time unit table in the format {HH, MM, SS, [CC]}, where [CC] is optional.
---@return Time # A new Time object initialized with the given values.
function Time.new(timeUnits) end

---Create a Time object from a time unit table (hours, minutes, seconds, centiseconds).
---@param timeUnits table # A time unit table in the format {HH, MM, SS, [CC]}, where [CC] is optional.
---@return Time # A new Time object initialized with the given values.
function TEN.Time.new(timeUnits) end

---Get the total game frame count.
---@return integer # Total number of game frames.
function Time:GetFrameCount() end

---Get the time in hours, minutes, seconds, and centiseconds as a table.
---@return table # A table in the format {HH, MM, SS, CC}.
function Time:GetTimeUnits() end

---Convert this Time object to a formatted string.
---@param this Time # Time object.
---@return string # A string showing time in "HH:MM:SS.CC" format.
function Time:tostring(this) end

---Constructor function for Time (alias for Time.new)
---@return Time # A new Time object initialized to zero time.
function Time() end

---@param gameFrames integer # Total game frame count.
---@return Time # A new Time object initialized with the given frame count.
function Time(gameFrames) end

---@param formattedTime string # Time in the format "HH:MM:SS[.CC]", where [.CC] is centiseconds and is optional.
---@return Time # A new Time object parsed from the given string.
function Time(formattedTime) end

---@param timeUnits table # A time unit table in the format {HH, MM, SS, [CC]}, where [CC] is optional.
---@return Time # A new Time object initialized with the given values.
function Time(timeUnits) end

---Constructor function for TEN.Time (alias for TEN.Time.new)
---@return Time # A new Time object initialized to zero time.
function TEN.Time() end

---@param gameFrames integer # Total game frame count.
---@return Time # A new Time object initialized with the given frame count.
function TEN.Time(gameFrames) end

---@param formattedTime string # Time in the format "HH:MM:SS[.CC]", where [.CC] is centiseconds and is optional.
---@return Time # A new Time object parsed from the given string.
function TEN.Time(formattedTime) end

---@param timeUnits table # A time unit table in the format {HH, MM, SS, [CC]}, where [CC] is optional.
---@return Time # A new Time object initialized with the given values.
function TEN.Time(timeUnits) end


---Represents a float-based 2D vector.
---@class Vec2
---@field x number # X component.
---@field y number # Y component.
Vec2 = {}

---Module-prefixed alias for Vec2
TEN.Vec2 = Vec2

---Create a Vec2 object.
---@param x number # X component.
---@param y number # Y component.
---@return Vec2 # A new Vec2 object.
function Vec2.new(x, y) end

---Create a Vec2 object.
---@param x number # X component.
---@param y number # Y component.
---@return Vec2 # A new Vec2 object.
function TEN.Vec2.new(x, y) end

---Create a Vec2 object.
---@param value number # X and Z component.
---@return Vec2 # A new Vec2 object.
function Vec2:Vec(value) end

---Get a copy of this Vec2 normalized to length 1.
---@return Vec2 # Normalized vector.
function Vec2:Normalize() end

---Get a copy of this Vec2 translated in the input Vec2 direction by the input distance.
---@param dir Vec2 # Direction vector. Normalized automatically to length 1.
---@param dist number # Distance.
---@return Vec2 # Translated vector.
function Vec2:Translate(dir, dist) end

---Get a copy of this Vec2 translated in the direction of the input rotation in degrees by the input distance.
---@param rot number # Rotation in degrees defining the direction.
---@param dist number # Distance.
---@return Vec2 # Translated vector.
function Vec2:Translate(rot, dist) end

---Get a copy of this Vec2 translated by an offset, where the input relative offset Vec2 is rotated according to the input rotation in degrees.
---@param rot number # Rotation in degrees rotating the input relative offset vector.
---@param relOffset Vec2 # Relative offset vector before rotation.
---@return Vec2 # Translated vector.
function Vec2:Translate(rot, relOffset) end

---Get a copy of this Vec2 rotated by the input rotation in degrees.
---@param rot number # Rotation in degrees.
---@return Vec2 # Rotated Vec2.
function Vec2:Rotate(rot) end

---Get the linearly interpolated Vec2 between this Vec2 and the input Vec2 according to the input interpolation alpha.
---@param vector Vec2 # Interpolation target.
---@param alpha number # Interpolation alpha in the range [0, 1].
---@return Vec2 # Linearly interpolated vector.
function Vec2:Lerp(vector, alpha) end

---Get the cross product of this Vec2 and the input Vec2.
---@param vector Vec2 # Input vector.
---@return Vec2 # Cross product.
function Vec2:Cross(vector) end

---Get the dot product of this Vec2 and the input Vec2.
---@param vector Vec2 # Input vector.
---@return number # Dot product.
function Vec2:Dot(vector) end

---Get the distance between this Vec2 and the input Vec2.
---@param vector Vec2 # Input vector.
---@return number # Distance.
function Vec2:Distance(vector) end

---Get the length of this Vec2.
---@return number # Length.
function Vec2:Length() end

---Metafunction.
---Use tostring(vector).
---@param This Vec2 # Vec2.
---@return string # A string showing the X and Y components of the Vec2.
function Vec2:__tostring(This) end

---Constructor function for Vec2 (alias for Vec2.new)
---@param x number # X component.
---@param y number # Y component.
---@return Vec2 # A new Vec2 object.
function Vec2(x, y) end

---Constructor function for TEN.Vec2 (alias for TEN.Vec2.new)
---@param x number # X component.
---@param y number # Y component.
---@return Vec2 # A new Vec2 object.
function TEN.Vec2(x, y) end


---Represents a float-based 3D vector.
---@class Vec3
---@field x number # X component.
---@field y number # Y component.
---@field z number # Z component.
Vec3 = {}

---Module-prefixed alias for Vec3
TEN.Vec3 = Vec3

---Create a Vec3 object.
---@param x number # X component.
---@param y number # Y component.
---@param z number # Z component.
---@return Vec3 # A new Vec3 object.
function Vec3.new(x, y, z) end

---Create a Vec3 object.
---@param x number # X component.
---@param y number # Y component.
---@param z number # Z component.
---@return Vec3 # A new Vec3 object.
function TEN.Vec3.new(x, y, z) end

---Create a Vec3 object.
---@param value number # X, Y, and Z component.
---@return Vec3 # A new Vec3 object.
function Vec3.new(value) end

---Create a Vec3 object.
---@param value number # X, Y, and Z component.
---@return Vec3 # A new Vec3 object.
function TEN.Vec3.new(value) end

---Get a copy of this Vec3 normalized to length 1.
---@return Vec3 # Normalized vector.
function Vec3:Normalize() end

---Get a copy of this Vec3 translated in the input Vec3 direction by the input distance.
---@param dir Vec3 # Direction vector. Normalized automatically to length 1.
---@param dist number # Distance.
---@return Vec3 # Translated vector.
function Vec3:Translate(dir, dist) end

---Get a copy of this Vec3 translated in the direction of the input Rotation object by the input distance.
---@param rot Rotation # Rotation object defining the direction.
---@param dist number # Distance.
---@return Vec3 # Translated vector.
function Vec3:Translate(rot, dist) end

---Get a copy of this Vec3 translated by an offset, where the input relative offset Vec3 is rotated according to the input Rotation object.
---@param rot Rotation # Rotation object rotating the input relative offset vector.
---@param relOffset Vec3 # Relative offset vector before rotation.
---@return Vec3 # Translated vector.
function Vec3:Translate(rot, relOffset) end

---Get a copy of this Vec3 rotated by the input Rotation object.
---@param rot Rotation # Rotation object.
---@return Vec3 # Rotated Vec3.
function Vec3:Rotate(rot) end

---Get the linearly interpolated Vec3 between this Vec3 and the input Vec3 according to the input interpolation alpha.
---@param vector Vec3 # Interpolation target.
---@param alpha number # Interpolation alpha in the range [0, 1].
---@return Vec3 # Linearly interpolated vector.
function Vec3:Lerp(vector, alpha) end

---Get the cross product of this Vec3 and the input Vec3.
---@param vector Vec3 # Input vector.
---@return Vec3 # Cross product.
function Vec3:Cross(vector) end

---Get the dot product of this Vec3 and the input Vec3.
---@param vector Vec3 # Input vector.
---@return number # Dot product.
function Vec3:Dot(vector) end

---Get the distance between this Vec3 and the input Vec3.
---@param vector Vec3 # Input vector.
---@return number # Distance.
function Vec3:Distance(vector) end

---Get the length of this Vec3.
---@return number # Length.
function Vec3:Length() end

---Metafunction.
---Use tostring(vector).
---@param This Vec3 # Vec3.
---@return string # A string showing the X, Y, and Z components of the Vec3.
function Vec3:__tostring(This) end

---Constructor function for Vec3 (alias for Vec3.new)
---@param x number # X component.
---@param y number # Y component.
---@param z number # Z component.
---@return Vec3 # A new Vec3 object.
function Vec3(x, y, z) end

---@param value number # X, Y, and Z component.
---@return Vec3 # A new Vec3 object.
function Vec3(value) end

---Constructor function for TEN.Vec3 (alias for TEN.Vec3.new)
---@param x number # X component.
---@param y number # Y component.
---@param z number # Z component.
---@return Vec3 # A new Vec3 object.
function TEN.Vec3(x, y, z) end

---@param value number # X, Y, and Z component.
---@return Vec3 # A new Vec3 object.
function TEN.Vec3(value) end


