-- TEN 1.10.0.2 API
-- This file is auto-generated and for IntelliSense purposes only!
-- Any changes made here will not be reflected in the engine.

---@meta

---Flow module for Tomb Engine
---@class Flow
Flow = {}

---Constants for error modes.
---To be used in Flow.Settings.System.errorMode setting.
---<br> In all of these modes, an *unrecoverable* error will boot you to the title level.
---If the title level itself has an unrecoverable error, the game will close.
---@enum ErrorMode
ErrorMode = {
	---Do nothing when a recoverable script error is hit.
	SILENT = "SILENT",
	---Print to the log file and continue running the application when a recoverable script error is hit.
	WARN = "WARN",
	---Print to the log file and return to the title level when any script error is hit.
	TERMINATE = "TERMINATE",
}

---Module-prefixed alias for ErrorMode
Flow.ErrorMode = ErrorMode

---Constants for freeze modes.
---To be used with Flow.GetFreezeMode and Flow.SetFreezeMode functions.
---@enum FreezeMode
FreezeMode = {
	---Normal in-game operation.
	NONE = "NONE",
	---Game is completely frozen, as in pause or inventory menus.
	FULL = "FULL",
	---Game is completely frozen, but with ability to control camera.
	SPECTATOR = "SPECTATOR",
	---Game is completely frozen, but with ability to control player.
	PLAYER = "PLAYER",
}

---Module-prefixed alias for FreezeMode
Flow.FreezeMode = FreezeMode

---Constants for game statuses.
---To be used with Flow.GetGameStatus function.
---@enum GameStatus
GameStatus = {
	---Normal game status.
	NORMAL = "NORMAL",
	---New game status.
	NEW_GAME = "NEW_GAME",
	---Load game status.
	LOAD_GAME = "LOAD_GAME",
	---Exit to title status.
	EXIT_TO_TITLE = "EXIT_TO_TITLE",
	---Exit game status.
	EXIT_GAME = "EXIT_GAME",
	---Player dead status.
	LARA_DEAD = "LARA_DEAD",
	---Level complete status.
	LEVEL_COMPLETE = "LEVEL_COMPLETE",
}

---Module-prefixed alias for GameStatus
Flow.GameStatus = GameStatus

---Constants for item actions.
---To be used with Flow.InventoryItem class.
---@enum ItemAction
ItemAction = {
	---Use the item.
	USE = "USE",
	---Equip the item.
	EQUIP = "EQUIP",
	---Examine the item.
	EXAMINE = "EXAMINE",
	---Combine the item with another item.
	COMBINE = "COMBINE",
	---Separate items.
	SEPARATE = "SEPARATE",
	---Load game.
	LOAD = "LOAD",
	---Save game.
	SAVE = "SAVE",
	---Show statistics screen.
	STATISTICS = "STATISTICS",
	---Choose ammo type for the shotgun.
	CHOOSE_AMMO_SHOTGUN = "CHOOSE_AMMO_SHOTGUN",
	---Choose ammo type for the crossbow.
	CHOOSE_AMMO_CROSSBOW = "CHOOSE_AMMO_CROSSBOW",
	---Choose ammo type for the grenade launcher.
	CHOOSE_AMMO_GRENADEGUN = "CHOOSE_AMMO_GRENADEGUN",
	---Choose ammo type for the Uzi.
	CHOOSE_AMMO_UZI = "CHOOSE_AMMO_UZI",
	---Choose ammo type for the pistols.
	CHOOSE_AMMO_PISTOLS = "CHOOSE_AMMO_PISTOLS",
	---Choose ammo type for the revolver.
	CHOOSE_AMMO_REVOLVER = "CHOOSE_AMMO_REVOLVER",
	---Choose ammo type for the HK gun.
	CHOOSE_AMMO_HK = "CHOOSE_AMMO_HK",
	---Choose ammo type for the harpoon gun.
	CHOOSE_AMMO_HARPOON = "CHOOSE_AMMO_HARPOON",
	---Choose ammo type for the rocket launcher.
	CHOOSE_AMMO_ROCKET = "CHOOSE_AMMO_ROCKET",
}

---Module-prefixed alias for ItemAction
Flow.ItemAction = ItemAction

---Constants for player types.
---@enum LaraType
LaraType = {
	---Normal Lara with a single braid.
	Normal = "Normal",
	---Young Lara with two ponytails.
	Young = "Young",
	---Divesuit Lara.
	Divesuit = "Divesuit",
}

---Module-prefixed alias for LaraType
Flow.LaraType = LaraType

---Constants for weather types.
---@enum WeatherType
WeatherType = {
	---No weather.
	None = "None",
	---Rain weather.
	Rain = "Rain",
	---Snow weather.
	Snow = "Snow",
}

---Module-prefixed alias for WeatherType
Flow.WeatherType = WeatherType

---Represesnts distance fog.
---To be used with Flow.Level.fog property.
---@class Fog
---@field color Color # RGB fog color.
---@field minDistance number # Minimum distance.
---@field maxDistance number # Maximum distance.
Fog = {}

---Module-prefixed alias for Fog
Flow.Fog = Fog

---@param color Color # RGB color
---@param min integer # Distance at which fog starts (in sectors).
---@param max integer # Distance at which fog reaches the maximum strength (in sectors).
---@return Fog # A fog object.
function Fog.new(color, min, max) end

---@param color Color # RGB color
---@param min integer # Distance at which fog starts (in sectors).
---@param max integer # Distance at which fog reaches the maximum strength (in sectors).
---@return Fog # A fog object.
function Flow.Fog.new(color, min, max) end

---Constructor function for Fog (alias for Fog.new)
---@param color Color # RGB color
---@param min integer # Distance at which fog starts (in sectors).
---@param max integer # Distance at which fog reaches the maximum strength (in sectors).
---@return Fog # A fog object.
function Fog(color, min, max) end

---Constructor function for Flow.Fog (alias for Flow.Fog.new)
---@param color Color # RGB color
---@param min integer # Distance at which fog starts (in sectors).
---@param max integer # Distance at which fog reaches the maximum strength (in sectors).
---@return Fog # A fog object.
function Flow.Fog(color, min, max) end


---Represents a horizon.
---To be used with Flow.Level.horizon1 and Flow.Level.horizon2 properties.
---@class Horizon
---@field enabled boolean # Horizon enabled state.
---@field objectID ObjID # Horizon object ID.
---@field position Vec3 # Horizon position.
---@field rotation Rotation # Horizon rotation.
---@field transparency number # Horizon transparency.
Horizon = {}

---Module-prefixed alias for Horizon
Flow.Horizon = Horizon

---Create a horizon object.
---@param objectID ObjID # Object ID for the horizon to use.
---@return Horizon # A new Horizon object.
function Horizon.new(objectID) end

---Create a horizon object.
---@param objectID ObjID # Object ID for the horizon to use.
---@return Horizon # A new Horizon object.
function Flow.Horizon.new(objectID) end

---Constructor function for Horizon (alias for Horizon.new)
---@param objectID ObjID # Object ID for the horizon to use.
---@return Horizon # A new Horizon object.
function Horizon(objectID) end

---Constructor function for Flow.Horizon (alias for Flow.Horizon.new)
---@param objectID ObjID # Object ID for the horizon to use.
---@return Horizon # A new Horizon object.
function Flow.Horizon(objectID) end


---Represents the properties of an object as it appears in the inventory.
---To be used in Flow.Level.objects list.
---@class InventoryItem
InventoryItem = {}

---Module-prefixed alias for InventoryItem
Flow.InventoryItem = InventoryItem

---Create an InventoryItem.
---@param nameKey string # key for the item's (localised) name. Corresponds to an entry in strings.lua.
---@param objectID ObjID # object ID of the inventory object to change
---@param yOffset number # y-axis offset (positive values move the item down).<br> A value of about 100 will cause the item to display directly below its usual position.
---@param scale number # item size (1 being standard size).<br> A value of 0.5 will cause the item to render at half the size, and a value of 2 will cause the item to render at twice the size.
---@param rot Rotation # rotation around x, y, and z axes.
---@param axis RotationAxis # Axis to rotate around when the item is observed at in the inventory.<br> Note that this is entirely separate from the `rot` field described above. Must one of the following: X Y Z e.g. `myItem.rotAxisWhenCurrent = RotationAxis.X`
---@param meshBits integer # _Not currently implemented_ (will have no effect regardless of what you set it to).
---@param action ItemAction # Item action or set of actions to assign. Item actions can be combined, for example: `ItemAction.USE | ItemAction.SAVE`.
---@return InventoryItem # an InventoryItem.
function InventoryItem.new(nameKey, objectID, yOffset, scale, rot, axis, meshBits, action) end

---Create an InventoryItem.
---@param nameKey string # key for the item's (localised) name. Corresponds to an entry in strings.lua.
---@param objectID ObjID # object ID of the inventory object to change
---@param yOffset number # y-axis offset (positive values move the item down).<br> A value of about 100 will cause the item to display directly below its usual position.
---@param scale number # item size (1 being standard size).<br> A value of 0.5 will cause the item to render at half the size, and a value of 2 will cause the item to render at twice the size.
---@param rot Rotation # rotation around x, y, and z axes.
---@param axis RotationAxis # Axis to rotate around when the item is observed at in the inventory.<br> Note that this is entirely separate from the `rot` field described above. Must one of the following: X Y Z e.g. `myItem.rotAxisWhenCurrent = RotationAxis.X`
---@param meshBits integer # _Not currently implemented_ (will have no effect regardless of what you set it to).
---@param action ItemAction # Item action or set of actions to assign. Item actions can be combined, for example: `ItemAction.USE | ItemAction.SAVE`.
---@return InventoryItem # an InventoryItem.
function Flow.InventoryItem.new(nameKey, objectID, yOffset, scale, rot, axis, meshBits, action) end

---Constructor function for InventoryItem (alias for InventoryItem.new)
---@param nameKey string # key for the item's (localised) name. Corresponds to an entry in strings.lua.
---@param objectID ObjID # object ID of the inventory object to change
---@param yOffset number # y-axis offset (positive values move the item down).<br> A value of about 100 will cause the item to display directly below its usual position.
---@param scale number # item size (1 being standard size).<br> A value of 0.5 will cause the item to render at half the size, and a value of 2 will cause the item to render at twice the size.
---@param rot Rotation # rotation around x, y, and z axes.
---@param axis RotationAxis # Axis to rotate around when the item is observed at in the inventory.<br> Note that this is entirely separate from the `rot` field described above. Must one of the following: X Y Z e.g. `myItem.rotAxisWhenCurrent = RotationAxis.X`
---@param meshBits integer # _Not currently implemented_ (will have no effect regardless of what you set it to).
---@param action ItemAction # Item action or set of actions to assign. Item actions can be combined, for example: `ItemAction.USE | ItemAction.SAVE`.
---@return InventoryItem # an InventoryItem.
function InventoryItem(nameKey, objectID, yOffset, scale, rot, axis, meshBits, action) end

---Constructor function for Flow.InventoryItem (alias for Flow.InventoryItem.new)
---@param nameKey string # key for the item's (localised) name. Corresponds to an entry in strings.lua.
---@param objectID ObjID # object ID of the inventory object to change
---@param yOffset number # y-axis offset (positive values move the item down).<br> A value of about 100 will cause the item to display directly below its usual position.
---@param scale number # item size (1 being standard size).<br> A value of 0.5 will cause the item to render at half the size, and a value of 2 will cause the item to render at twice the size.
---@param rot Rotation # rotation around x, y, and z axes.
---@param axis RotationAxis # Axis to rotate around when the item is observed at in the inventory.<br> Note that this is entirely separate from the `rot` field described above. Must one of the following: X Y Z e.g. `myItem.rotAxisWhenCurrent = RotationAxis.X`
---@param meshBits integer # _Not currently implemented_ (will have no effect regardless of what you set it to).
---@param action ItemAction # Item action or set of actions to assign. Item actions can be combined, for example: `ItemAction.USE | ItemAction.SAVE`.
---@return InventoryItem # an InventoryItem.
function Flow.InventoryItem(nameKey, objectID, yOffset, scale, rot, axis, meshBits, action) end


---Represents a global lens flare (not to be confused with the lens flare object).
---To be used with Flow.Level.lensFlare property.
---@class LensFlare
---@field enabled boolean # Lens flare enabled state.
---@field spriteID integer # Lens flare's sun sprite ID in DEFAULT_SPRITES sequence.
---@field pitch number # Lens flare's pitch (vertical) angle in degrees.
---@field yaw number # Lens flare's yaw (horizontal) angle in degrees.
---@field color Color # Lens flare's color.
LensFlare = {}

---Module-prefixed alias for LensFlare
Flow.LensFlare = LensFlare

---Create a LensFlare object.
---@param pitch number # Pitch angle in degrees.
---@param yaw number # Yaw angle in degrees.
---@param color Color # Color of the lensflare.
---@return LensFlare # A new LensFlare object.
function LensFlare.new(pitch, yaw, color) end

---Create a LensFlare object.
---@param pitch number # Pitch angle in degrees.
---@param yaw number # Yaw angle in degrees.
---@param color Color # Color of the lensflare.
---@return LensFlare # A new LensFlare object.
function Flow.LensFlare.new(pitch, yaw, color) end

---Constructor function for LensFlare (alias for LensFlare.new)
---@param pitch number # Pitch angle in degrees.
---@param yaw number # Yaw angle in degrees.
---@param color Color # Color of the lensflare.
---@return LensFlare # A new LensFlare object.
function LensFlare(pitch, yaw, color) end

---Constructor function for Flow.LensFlare (alias for Flow.LensFlare.new)
---@param pitch number # Pitch angle in degrees.
---@param yaw number # Yaw angle in degrees.
---@param color Color # Color of the lensflare.
---@return LensFlare # A new LensFlare object.
function Flow.LensFlare(pitch, yaw, color) end


---Stores level metadata.
---These are things things which aren't present in the compiled level file itself.
---@class Level
---@field nameKey string # String key for the level's name.
---@field scriptFile string # Level-specific Lua script file.
---@field levelFile string # Compiled file path.
---@field loadScreenFile string # Load screen image.
---@field ambientTrack string # Initial ambient sound track to play.
---@field layer1 SkyLayer # Primary sky cloud layer.
---@field layer2 SkyLayer # Secondary sky cloud layer.
---@field horizon1 Horizon # Primary horizon object.
---@field horizon2 Horizon # Secondary horizon object.
---@field starfield Starfield # Starfield in the sky.
---@field lensFlare LensFlare # Global lens flare.
---@field fog Fog # Global distance fog, with specified RGB color and distance.
---@field storm boolean # Enable flickering lightning in the sky.
---@field weather WeatherType # Choose weather effect.
---@field weatherStrength number # Choose weather strength.
---@field weatherClustering boolean # Choose if weather should be clustered or not.
---@field laraType LaraType # Appearance of Lara.
---@field rumble boolean # Enable occasional screen shake effect.
---@field farView integer # The maximum draw distance for level.
---@field resetHub boolean # Reset hub data.
---@field objects InventoryItem[] # A table of inventory object layout overrides.
---@field secrets integer # Set total secret count for current level.
Level = {}

---Module-prefixed alias for Level
Flow.Level = Level

---Make a new Level object.
---@return Level # a Level object.
function Level.new() end

---Make a new Level object.
---@return Level # a Level object.
function Flow.Level.new() end

---Constructor function for Level (alias for Level.new)
---@return Level # a Level object.
function Level() end

---Constructor function for Flow.Level (alias for Flow.Level.new)
---@return Level # a Level object.
function Flow.Level() end


---Describes a layer of moving clouds.
---To be used with Flow.Level.layer1 and Flow.Level.layer2 properties.
---@class SkyLayer
---@field color Color # RGB sky color.
---@field speed integer # Cloud speed.
SkyLayer = {}

---Module-prefixed alias for SkyLayer
Flow.SkyLayer = SkyLayer

---@param color Color # RGB color.
---@param speed integer # Cloud speed.
---@return SkyLayer # A SkyLayer object.
function SkyLayer.new(color, speed) end

---@param color Color # RGB color.
---@param speed integer # Cloud speed.
---@return SkyLayer # A SkyLayer object.
function Flow.SkyLayer.new(color, speed) end

---Constructor function for SkyLayer (alias for SkyLayer.new)
---@param color Color # RGB color.
---@param speed integer # Cloud speed.
---@return SkyLayer # A SkyLayer object.
function SkyLayer(color, speed) end

---Constructor function for Flow.SkyLayer (alias for Flow.SkyLayer.new)
---@param color Color # RGB color.
---@param speed integer # Cloud speed.
---@return SkyLayer # A SkyLayer object.
function Flow.SkyLayer(color, speed) end


---Represents a star field in the sky.
---To be used with Flow.Level.starfield property.
---@class Starfield
---@field starCount integer # Amount of visible stars.
---@field meteorCount integer # Amount of visible meteors.
---@field meteorSpawnDensity integer # Meteor spawn density.
---@field meteorVelocity integer # Meteor velocity.
Starfield = {}

---Module-prefixed alias for Starfield
Flow.Starfield = Starfield

---Create a starfield object with only stars.
---@param starCount integer # Star count.
---@return Starfield # A new Starfield object.
function Starfield.new(starCount) end

---Create a starfield object with only stars.
---@param starCount integer # Star count.
---@return Starfield # A new Starfield object.
function Flow.Starfield.new(starCount) end

---Create a starfield object with stars and meteors.
---@param starCount integer # Star count. __Max: 6000__
---@param meteorCount integer # Meteor count. __Max: 100__
---@param meteorSpawnDensity integer # Meteor spawn density.
---@param meteorVel integer # Meteor velocity.
---@return Starfield # A new Starfield object.
function Starfield.new(starCount, meteorCount, meteorSpawnDensity, meteorVel) end

---Create a starfield object with stars and meteors.
---@param starCount integer # Star count. __Max: 6000__
---@param meteorCount integer # Meteor count. __Max: 100__
---@param meteorSpawnDensity integer # Meteor spawn density.
---@param meteorVel integer # Meteor velocity.
---@return Starfield # A new Starfield object.
function Flow.Starfield.new(starCount, meteorCount, meteorSpawnDensity, meteorVel) end

---Constructor function for Starfield (alias for Starfield.new)
---@param starCount integer # Star count.
---@return Starfield # A new Starfield object.
function Starfield(starCount) end

---@param starCount integer # Star count. __Max: 6000__
---@param meteorCount integer # Meteor count. __Max: 100__
---@param meteorSpawnDensity integer # Meteor spawn density.
---@param meteorVel integer # Meteor velocity.
---@return Starfield # A new Starfield object.
function Starfield(starCount, meteorCount, meteorSpawnDensity, meteorVel) end

---Constructor function for Flow.Starfield (alias for Flow.Starfield.new)
---@param starCount integer # Star count.
---@return Starfield # A new Starfield object.
function Flow.Starfield(starCount) end

---@param starCount integer # Star count. __Max: 6000__
---@param meteorCount integer # Meteor count. __Max: 100__
---@param meteorSpawnDensity integer # Meteor spawn density.
---@param meteorVel integer # Meteor velocity.
---@return Starfield # A new Starfield object.
function Flow.Starfield(starCount, meteorCount, meteorSpawnDensity, meteorVel) end


---A set of gameplay statistics.
---Can be accessed using Flow.GetStatistics and Flow.SetStatistics functions.
---@class Statistics
---@field ammoHits any # Ammo hits.
---@field ammoUsed any # Ammo used.
---@field distanceTraveled any # Distance traveled.
---@field healthPacksUsed any # Health packs used.
---@field damageTaken any # Damage taken.
---@field kills any # Kills.
---@field pickups any # Pickups.
---@field secrets any # Secrets.
---@field timeTaken any # Time taken.
Statistics = {}

---Module-prefixed alias for Statistics
Flow.Statistics = Statistics

---Constructor for Statistics
---@return Statistics # A new Statistics object.
function Statistics.new() end

---Constructor for Flow.Statistics
---@return Statistics # A new Statistics object.
function Flow.Statistics.new() end

---Constructor for Statistics (alias for Statistics.new)
---@return Statistics # A new Statistics object.
function Statistics() end

---Constructor for Flow.Statistics (alias for Flow.Statistics.new)
---@return Statistics # A new Statistics object.
function Flow.Statistics() end


---These settings determine whether a specific moveset is available in-game.
---@class AnimSettings
---@field crawlExtended boolean # Extended crawl moveset.
---@field crouchRoll boolean # Crouch roll.
---@field crawlspaceSwandive boolean # Crawlspace dive.
---@field overhangClimb boolean # Overhang climbing.
---@field slideExtended boolean # Extended slide mechanics.
---@field sprintJump boolean # Sprint jump.
---@field ledgeJumps boolean # Ledge jumps.
---@field poseTimeout integer # Pose timeout.
AnimSettings = {}

---Module-prefixed alias for AnimSettings
Flow.AnimSettings = AnimSettings


---These settings change appearance and behaviour of a flare.
---@class FlareSettings
---@field color Color # Flare color.
---@field offset Vec3 # Muzzle offset.
---@field range integer # Light range.
---@field timeout integer # Burn timeout.
---@field pickupCount integer # Default flare pickup count.
---@field lensflareBrightness number # Lens flare brightness.
---@field sparks boolean # Toggle spark effect.
---@field smoke boolean # Toggle smoke effect.
---@field muzzleGlow boolean # Toggle muzzle glow effect.
---@field flicker boolean # Toggle flicker effect.
FlareSettings = {}

---Module-prefixed alias for FlareSettings
Flow.FlareSettings = FlareSettings


---This is a table of braid object settings.
---<br> Table consists of three entries, with first one representing classic Lara braid, and 2 and 3 representing left and right young Lara braids respectively.
---Therefore, if you want to access classic Lara braid settings, use `settings.Hair[1]`, and so on.
---@class HairSettings
---@field rootMesh integer # Root mesh to which hair object will attach to.
---@field offset Vec3 # Relative braid offset to a headmesh. Not used with skinned hair mesh.
---@field indices table # Braid connection indices. Not used with skinned hair mesh.
HairSettings = {}

---Module-prefixed alias for HairSettings
Flow.HairSettings = HairSettings


---This is a table of weapon settings, with several parameters available for every weapon.
---Access particular weapon's settings by using Objects.WeaponType as an index for this table, e.g.
---`settings.Weapons[Flow.WeaponType.PISTOLS]`.
---@class WeaponSettings
---@field accuracy number # Shooting accuracy.
---@field targetingDistance number # Targeting distance.
---@field interval number # Shooting interval.
---@field damage integer # Damage.
---@field alternateDamage integer # Alternate damage.
---@field waterLevel integer # Water level.
---@field pickupCount integer # Default ammo pickup count.
---@field flashColor Color # Gunflash color.
---@field flashRange integer # Gunflash range.
---@field flashDuration integer # Gunflash duration.
---@field smoke boolean # Gun smoke.
---@field shell boolean # Gun shell.
---@field muzzleFlash boolean # Display muzzle flash.
---@field muzzleGlow boolean # Display muzzle glow.
---@field colorizeMuzzleFlash boolean # Colorize muzzle flash.
---@field muzzleOffset Vec3 # Muzzle offset.
WeaponSettings = {}

---Module-prefixed alias for WeaponSettings
Flow.WeaponSettings = WeaponSettings


---Global system settings that is not directly related to gameplay.
---@class SystemSettings
---@field errorMode any # How should the application respond to script errors?
---@field multithreaded boolean # Use multithreading in certain calculations. <br>
---@field fastReload boolean # Can the game utilize the fast reload feature? <br>
SystemSettings = {}

---Module-prefixed alias for SystemSettings
Flow.SystemSettings = SystemSettings


---These settings are used to enable or disable certain graphics features.
---@class GraphicsSettings
---@field skinning boolean # Enable skinning.
GraphicsSettings = {}

---Module-prefixed alias for GraphicsSettings
Flow.GraphicsSettings = GraphicsSettings


---Here you will find various settings for game world physics.
---@class PhysicsSettings
---@field gravity number # Global world gravity.
---@field swimVelocity number # Swim velocity.
PhysicsSettings = {}

---Module-prefixed alias for PhysicsSettings
Flow.PhysicsSettings = PhysicsSettings


---These settings determine visibility of particular in-game HUD elements.
---@class HudSettings
---@field statusBars boolean # Toggle in-game status bars visibility.
---@field loadingBar boolean # Toggle loading bar visibility.
---@field speedometer boolean # Toggle speedometer visibility.
---@field pickupNotifier boolean # Toggle pickup notifier visibility.
HudSettings = {}

---Module-prefixed alias for HudSettings
Flow.HudSettings = HudSettings


---Parameters to customize camera and everything related to it.
---@class CameraSettings
---@field binocularLightColor Color # Determines highlight color in binocular mode.
---@field lasersightLightColor Color # Determines highlight color in lasersight mode.
---@field objectCollision boolean # Specify whether camera can collide with objects.
CameraSettings = {}

---Module-prefixed alias for CameraSettings
Flow.CameraSettings = CameraSettings


---These settings are used to enable or disable certain gameplay features.
---@class GameplaySettings
---@field targetObjectOcclusion boolean # Enable target occlusion by moveables and static meshes.
GameplaySettings = {}

---Module-prefixed alias for GameplaySettings
Flow.GameplaySettings = GameplaySettings


---Global engine settings which don't fall into particular category or can't be assigned to a specific object.
---Can be accessed using Flow.SetSettings and Flow.GetSettings functions.
---@class Settings
---@field Animations AnimSettings # These settings determine whether a specific moveset is available in-game.
---@field Camera CameraSettings # Parameters to customize camera and everything related to it.
---@field Flare FlareSettings # These settings change appearance and behaviour of a flare.
---@field Gameplay GameplaySettings # These settings are used to enable or disable certain gameplay features.
---@field Graphics GraphicsSettings # These settings are used to enable or disable certain graphics features.
---@field Hair HairSettings[] # This is a table of braid object settings. <br> Table consists of three entries, with first one representing classic Lara braid, and 2 and 3 representing left and right young Lara braids respectively. Therefore, if you want to access classic Lara braid settings, use `settings.Hair[1]`, and so on.
---@field Hud HudSettings # These settings determine visibility of particular in-game HUD elements.
---@field Physics PhysicsSettings # Here you will find various settings for game world physics.
---@field System SystemSettings # Global system settings that is not directly related to gameplay.
---@field Weapons { [WeaponType]: WeaponSettings } # This is a table of weapon settings, with several parameters available for every weapon. Access particular weapon's settings by using Objects.WeaponType as an index for this table, e.g. `settings.Weapons[Flow.WeaponType.PISTOLS]`.
Settings = {}

---Module-prefixed alias for Settings
Flow.Settings = Settings

---Constructor for Settings
---@return Settings # A new Settings object.
function Settings.new() end

---Constructor for Flow.Settings
---@return Settings # A new Settings object.
function Flow.Settings.new() end

---Constructor for Settings (alias for Settings.new)
---@return Settings # A new Settings object.
function Settings() end

---Constructor for Flow.Settings (alias for Flow.Settings.new)
---@return Settings # A new Settings object.
function Flow.Settings() end


---Add a level to the Flow.
---@param level Level # A level object.
function Flow.AddLevel(level) end

---Image to show when loading the game.
---Must be a .jpg or .png image.
---@param path string # The path to the image, relative to the TombEngine executable.
function Flow.SetIntroImagePath(path) end

---Video to show when loading the game.
---Must be a common video format, such as mp4, mkv, mov or avi.
---@param path string # the path to the video, relative to the TombEngine exe
function Flow.SetIntroVideoPath(path) end

---Image to show in the background of the title screen.
---Must be a .jpg or .png image.
---_Not yet implemented._.
---@param path string # The path to the image, relative to the TombEngine executable.
function Flow.SetTitleScreenImagePath(path) end

---Enable or disable Lara drawing in title flyby.
---Must be true or false.
---@param enabled boolean # True or false.
function Flow.EnableLaraInTitle(enabled) end

---Enable or disable level selection in title flyby.
---Must be true or false.
---@param enabled boolean # True or false.
function Flow.EnableLevelSelect(enabled) end

---Enable or disable Home Level entry in the main menu.
---@param enabled boolean # True or false.
function Flow.EnableHomeLevel(enabled) end

---Enable or disable saving and loading of savegames.
---@param enabled boolean # True or false.
function Flow.EnableLoadSave(enabled) end

---Enable or disable the fly cheat.
---@param enabled boolean # True or false.
function Flow.EnableFlyCheat(enabled) end

---Enable or disable point texture filter.
---Must be true or false.
---@param enabled boolean # True or false.
function Flow.EnablePointFilter(enabled) end

---Enable or disable mass pickup.
---Must be true or false.
---@param enabled boolean # True or false.
function Flow.EnableMassPickup(enabled) end

---Returns the level by index.
---Indices depend on the order in which AddLevel was called; the first added will have an index of 0, the second an index of 1, and so on.
---@param index integer # Index of the level.
---@return Level # The level indicated by the index.
function Flow.GetLevel(index) end

---Returns the level that the game control is running in that moment.
---@return Level # The current level.
function Flow.GetCurrentLevel() end

---Finishes the current level, with optional level index and start position index provided.
---If level index is not provided or is zero, jumps to next level.
---If level index is more than level count, jumps to title.
---If LARA\_START\_POS objects are present in level, player will be teleported to such object with OCB similar to provided second argument.
---@param index integer? # Level index. (default: `0`)
---@param startPos integer? # Player start position in the next level. Should correspond to OCB of `Objects.ObjID.LARA_START_POS` object in the next level. (default: `0`)
function Flow.EndLevel(index, startPos) end

---Get game or level statistics.
---For reference about statistics class, see Flow.Statistics.
---@param game boolean? # If true, returns overall game statistics, otherwise returns current level statistics. (default: `false`)
---@return Statistics # Statistics structure representing game or level statistics.
function Flow.GetStatistics(game) end

---Set game or level statistics.
---For reference about statistics class, see Flow.Statistics.
---@param statistics Statistics # Statistic object to set.
---@param game boolean? # If true, sets overall game statistics, otherwise sets current level statistics. (default: `false`)
function Flow.SetStatistics(statistics, game) end

---Get current game status, such as normal game loop, exiting to title, etc.
---@return GameStatus # The current game status.
function Flow.GetGameStatus() end

---Get current freeze mode, such as none, full, spectator or player.
---@return FreezeMode # The current freeze mode.
function Flow.GetFreezeMode() end

---Set current freeze mode, such as none, full, spectator or player.
---Freeze mode specifies whether game is in normal mode or paused in a particular way to allow custom menu creation, photo mode or time freeze.
---@param freezeMode FreezeMode # New freeze mode to set.
function Flow.SetFreezeMode(freezeMode) end

---Save the game to a savegame slot.
---@param slotID integer # ID of the savegame slot to save to.
function Flow.SaveGame(slotID) end

---Load the game from a savegame slot.
---@param slotID integer # ID of the savegame slot to load from.
function Flow.LoadGame(slotID) end

---Delete a savegame.
---@param slotID integer # ID of the savegame slot to clear.
function Flow.DeleteSaveGame(slotID) end

---Check if a savegame exists.
---@param slotID integer # ID of the savegame slot to check.
---@return boolean # true if the savegame exists, false if not.
function Flow.DoesSaveGameExist(slotID) end

---Returns the player's current per-game secret count.
---@return integer # Current game secret count.
function Flow.GetSecretCount() end

---Sets the player's current per-game secret count.
---@param count integer # New secret count.
function Flow.SetSecretCount(count) end

---Adds one secret to current level secret count and also plays secret music track.
---The index argument corresponds to the secret's unique ID, the same that would go in a secret trigger's Param.
---@param index integer # An index of current level's secret (must be from 0 to 31).
function Flow.AddSecret(index) end

---Get total number of secrets in the game.
---@return integer # Total number of secrets in the game.
function Flow.GetTotalSecretCount() end

---Set total number of secrets in the game.
---Must be an integer value (0 means no secrets).
---@param count integer # Total number of secrets in the game.
function Flow.SetTotalSecretCount(count) end

---Do FlipMap with specific group ID.
---@param flipmap integer # ID of flipmap group to actuvate / deactivate.
function Flow.FlipMap(flipmap) end

---Get current FlipMap status for specific group ID.
---@param index integer? # Flipmap group ID to check. If no group specified or group is -1, function returns overall flipmap status (on or off). (optional)
---@return integer # Status of the flipmap group (true means on, false means off).
function Flow.GetFlipMapStatus(index) end

---Set provided settings table to an engine.
---@param settings Settings # A settings table.
function Flow.SetSettings(settings) end

---Get settings table from an engine.
---@return Settings # Current settings table.
function Flow.GetSettings() end

---Set string variable keys and their translations.
---@param table table # Array-style table with strings.
function Flow.SetStrings(table) end

---Get translated string.
---@param key string # Key for translated string.
function Flow.GetString(key) end

---Check if translated string is present.
---@param key string # Key for translated string.
function Flow.IsStringPresent(key) end

---Set language names for translations.
---Specify which translations in the strings table correspond to which languages.
---@param table table # Array-style table with language names.
function Flow.SetLanguageNames(table) end

return Flow
