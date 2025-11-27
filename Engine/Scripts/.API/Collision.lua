-- TEN 1.10.0.2 API
-- This file is auto-generated and for IntelliSense purposes only!
-- Any changes made here will not be reflected in the engine.

---@meta

---Collision module for Tomb Engine
---@class Collision
Collision = {}

---Constants for material types.
---Corresponds to Tomb Editor texture sound material types.
---To be used with Collision.Probe.GetFloorMaterialType and Collision.Probe.GetCeilingMaterialType.
---@enum MaterialType
MaterialType = {
	---Mud material type.
	MUD = "MUD",
	---Snow material type.
	SNOW = "SNOW",
	---Sand material type.
	SAND = "SAND",
	---Gravel material type.
	GRAVEL = "GRAVEL",
	---Ice material type.
	ICE = "ICE",
	---Water material type.
	WATER = "WATER",
	---Stone material type.
	STONE = "STONE",
	---Wood material type.
	WOOD = "WOOD",
	---Metal material type.
	METAL = "METAL",
	---Marble material type.
	MARBLE = "MARBLE",
	---Grass material type.
	GRASS = "GRASS",
	---Concrete material type.
	CONCRETE = "CONCRETE",
	---Old wood material type.
	OLD_WOOD = "OLD_WOOD",
	---Old metal material type.
	OLD_METAL = "OLD_METAL",
	---Custom material type 1.
	CUSTOM_1 = "CUSTOM_1",
	---Custom material type 2.
	CUSTOM_2 = "CUSTOM_2",
	---Custom material type 3.
	CUSTOM_3 = "CUSTOM_3",
	---Custom material type 4.
	CUSTOM_4 = "CUSTOM_4",
	---Custom material type 5.
	CUSTOM_5 = "CUSTOM_5",
	---Custom material type 6.
	CUSTOM_6 = "CUSTOM_6",
	---Custom material type 7.
	CUSTOM_7 = "CUSTOM_7",
	---Custom material type 8.
	CUSTOM_8 = "CUSTOM_8",
}

---Module-prefixed alias for MaterialType
Collision.MaterialType = MaterialType

---Represents a collision probe in the game world.
---Provides collision information from a reference world position.
---@class Probe
Probe = {}

---Module-prefixed alias for Probe
Collision.Probe = Probe

---Create a Probe at a specified world position in a room.
---@param pos Vec3 # World position.
---@param roomNumber integer? # Room number. Must be used if probing a position in an overlapping room. (optional)
---@return Probe # A new Probe.
function Probe.new(pos, roomNumber) end

---Create a Probe at a specified world position in a room.
---@param pos Vec3 # World position.
---@param roomNumber integer? # Room number. Must be used if probing a position in an overlapping room. (optional)
---@return Probe # A new Probe.
function Collision.Probe.new(pos, roomNumber) end

---Create a Probe that casts from an origin world position in a room in a given direction for a specified distance.
---Required to correctly traverse between rooms.
---@param pos Vec3 # Origin world position to cast from.
---@param roomNumber integer # Origin room number.
---@param dir Vec3 # Direction in which to cast.
---@param dist number # Distance to cast.
---@return Probe # A new Probe.
function Probe.new(pos, roomNumber, dir, dist) end

---Create a Probe that casts from an origin world position in a room in a given direction for a specified distance.
---Required to correctly traverse between rooms.
---@param pos Vec3 # Origin world position to cast from.
---@param roomNumber integer # Origin room number.
---@param dir Vec3 # Direction in which to cast.
---@param dist number # Distance to cast.
---@return Probe # A new Probe.
function Collision.Probe.new(pos, roomNumber, dir, dist) end

---Create a Probe that casts from an origin world position in a room in the direction of a given rotation for a specified distance.
---Required to correctly traverse between rooms.
---@param pos Vec3 # Origin world position to cast from.
---@param roomNumber integer # Origin room number.
---@param rot Rotation # Rotation defining the direction in which to cast.
---@param dist number # Distance to cast.
---@return Probe # A new Probe.
function Probe.new(pos, roomNumber, rot, dist) end

---Create a Probe that casts from an origin world position in a room in the direction of a given rotation for a specified distance.
---Required to correctly traverse between rooms.
---@param pos Vec3 # Origin world position to cast from.
---@param roomNumber integer # Origin room number.
---@param rot Rotation # Rotation defining the direction in which to cast.
---@param dist number # Distance to cast.
---@return Probe # A new Probe.
function Collision.Probe.new(pos, roomNumber, rot, dist) end

---Create a Probe that casts from an origin world position, where a given relative offset is rotated according to a given rotation.
---Required to correctly traverse between rooms.
---@param pos Vec3 # Origin world position to cast from.
---@param roomNumber integer # Origin room number.
---@param rot Rotation # Rotation according to which the input relative offset is rotated.
---@param relOffset Vec3 # Relative offset to cast.
---@return Probe # A new Probe.
function Probe.new(pos, roomNumber, rot, relOffset) end

---Create a Probe that casts from an origin world position, where a given relative offset is rotated according to a given rotation.
---Required to correctly traverse between rooms.
---@param pos Vec3 # Origin world position to cast from.
---@param roomNumber integer # Origin room number.
---@param rot Rotation # Rotation according to which the input relative offset is rotated.
---@param relOffset Vec3 # Relative offset to cast.
---@return Probe # A new Probe.
function Collision.Probe.new(pos, roomNumber, rot, relOffset) end

---Get the world position of this Probe.
---@return Vec3 # World position.
function Probe:GetPosition() end

---Get the Room object of this Probe.
---@return Room # Room object.
function Probe:GetRoom() end

---Get the room name of this Probe.
---@return string # Room name.
function Probe:GetRoomName() end

---Get the room number of this Probe.
---@return integer # Room number.
function Probe:GetRoomNumber() end

---Get the floor height at this Probe.
---@return integer # Floor height. __nil: no floor exists__
function Probe:GetFloorHeight() end

---Get the ceiling height at this Probe.
---@return integer # Ceiling height. __nil: no ceiling exists__
function Probe:GetCeilingHeight() end

---Get the water surface height at this Probe.
---@return integer # Water surface height. __nil: no water surface exists__
function Probe:GetWaterSurfaceHeight() end

---Get the normal of the floor at this Probe.
---@return Vec3 # Floor normal. __nil: no floor exists__
function Probe:GetFloorNormal() end

---Get the normal of the ceiling at this Probe.
---@return Vec3 # Ceiling normal. __nil: no ceiling exists__
function Probe:GetCeilingNormal() end

---Get the material type of the floor at this Probe.
---@return MaterialType # Floor material type. __nil: no floor exists__
function Probe:GetFloorMaterialType() end

---Get the material type of the ceiling at this Probe.
---@return MaterialType # Ceiling material type. __nil: no ceiling exists__
function Probe:GetCeilingMaterialType() end

---Check if the floor at this Probe is steep.
---@return boolean # Steep floor status. __true: is a steep floor, false: isn't a steep floor, nil: no floor exists__
function Probe:IsSteepFloor() end

---Check if the ceiling at this Probe is steep.
---@return boolean # Steep ceiling status. __true: is a steep ceiling, false: isn't a steep ceiling, nil: no ceiling exists__
function Probe:IsSteepCeiling() end

---Check if the Probe is inside a wall.
---Can be used to determine if a wall and ceiling exist.
---@return boolean # Wall status. __true: is a wall, false: isn't a wall__
function Probe:IsWall() end

---Check if this Probe is inside solid geometry (below a floor, above a ceiling, inside a bridge, or inside a wall).
---@return boolean # Inside geometry status. __true: is inside, false: is outside__
function Probe:IsInsideSolidGeometry() end

---Check if there is a climbable wall in the given heading angle at this Probe.
---@param headingAngle number # Heading angle at which to check for a climbable wall.
---@return boolean # Climbable wall status. __true: is climbable wall, false: isn't climbable__
function Probe:IsClimbableWall(headingAngle) end

---Check if there is a monkey swing sector at this Probe.
---@return boolean # Monkey swing sector status. __true: is a monkey swing, false: isn't a monkey swing__
function Probe:IsMonkeySwing() end

---Check if there is a death sector at this Probe.
---@return boolean # Death sector status. __true: is a death sector, false: isn't a death sector__
function Probe:IsDeath() end

---Preview this Probe in the Collision Stats debug page.
function Probe:Preview() end

---Constructor function for Probe (alias for Probe.new)
---@param pos Vec3 # World position.
---@param roomNumber integer? # Room number. Must be used if probing a position in an overlapping room. (optional)
---@return Probe # A new Probe.
function Probe(pos, roomNumber) end

---@param pos Vec3 # Origin world position to cast from.
---@param roomNumber integer # Origin room number.
---@param dir Vec3 # Direction in which to cast.
---@param dist number # Distance to cast.
---@return Probe # A new Probe.
function Probe(pos, roomNumber, dir, dist) end

---@param pos Vec3 # Origin world position to cast from.
---@param roomNumber integer # Origin room number.
---@param rot Rotation # Rotation defining the direction in which to cast.
---@param dist number # Distance to cast.
---@return Probe # A new Probe.
function Probe(pos, roomNumber, rot, dist) end

---@param pos Vec3 # Origin world position to cast from.
---@param roomNumber integer # Origin room number.
---@param rot Rotation # Rotation according to which the input relative offset is rotated.
---@param relOffset Vec3 # Relative offset to cast.
---@return Probe # A new Probe.
function Probe(pos, roomNumber, rot, relOffset) end

---Constructor function for Collision.Probe (alias for Collision.Probe.new)
---@param pos Vec3 # World position.
---@param roomNumber integer? # Room number. Must be used if probing a position in an overlapping room. (optional)
---@return Probe # A new Probe.
function Collision.Probe(pos, roomNumber) end

---@param pos Vec3 # Origin world position to cast from.
---@param roomNumber integer # Origin room number.
---@param dir Vec3 # Direction in which to cast.
---@param dist number # Distance to cast.
---@return Probe # A new Probe.
function Collision.Probe(pos, roomNumber, dir, dist) end

---@param pos Vec3 # Origin world position to cast from.
---@param roomNumber integer # Origin room number.
---@param rot Rotation # Rotation defining the direction in which to cast.
---@param dist number # Distance to cast.
---@return Probe # A new Probe.
function Collision.Probe(pos, roomNumber, rot, dist) end

---@param pos Vec3 # Origin world position to cast from.
---@param roomNumber integer # Origin room number.
---@param rot Rotation # Rotation according to which the input relative offset is rotated.
---@param relOffset Vec3 # Relative offset to cast.
---@return Probe # A new Probe.
function Collision.Probe(pos, roomNumber, rot, relOffset) end


return Collision
