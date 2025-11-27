-- TEN 1.10.0.2 API
-- This file is auto-generated and for IntelliSense purposes only!
-- Any changes made here will not be reflected in the engine.

---@meta

---Tomb Engine Lua API
---@class TEN
TEN = {}

---@type Collision
TEN.Collision = require("Collision")
---@type CustomBar
TEN.CustomBar = require("CustomBar")
---@type CustomDiary
TEN.CustomDiary = require("CustomDiary")
---@type Effects
TEN.Effects = require("Effects")
---@type EventSequence
TEN.EventSequence = require("EventSequence")
---@type Flow
TEN.Flow = require("Flow")
---@type Input
TEN.Input = require("Input")
---@type Inventory
TEN.Inventory = require("Inventory")
---@type Logic
TEN.Logic = require("Logic")
---@type Objects
TEN.Objects = require("Objects")
---@type Sound
TEN.Sound = require("Sound")
---@type Strings
TEN.Strings = require("Strings")
---@type Timer
TEN.Timer = require("Timer")
---@type Type
TEN.Type = require("Type")
---@type Util
TEN.Util = require("Util")
---@type View
TEN.View = require("View")

-- Global aliases for direct module access (supports both TEN.Module and Module syntax)
---@type Collision
Collision = TEN.Collision
---@type CustomBar
CustomBar = TEN.CustomBar
---@type CustomDiary
CustomDiary = TEN.CustomDiary
---@type Effects
Effects = TEN.Effects
---@type EventSequence
EventSequence = TEN.EventSequence
---@type Flow
Flow = TEN.Flow
---@type Input
Input = TEN.Input
---@type Inventory
Inventory = TEN.Inventory
---@type Logic
Logic = TEN.Logic
---@type Objects
Objects = TEN.Objects
---@type Sound
Sound = TEN.Sound
---@type Strings
Strings = TEN.Strings
---@type Timer
Timer = TEN.Timer
---@type Type
Type = TEN.Type
---@type Util
Util = TEN.Util
---@type View
View = TEN.View

---Global variable for Lara object.
Lara = LaraObject()
Objects.Lara = Lara
TEN.Objects.Lara = Lara

---A table with game data which will be saved and loaded. This is for information not specific to any level, but which concerns your whole levelset or game, that you want to store in saved games.
GameVars = {}
Logic.GameVars = GameVars
TEN.Logic.GameVars = GameVars

---A table with level-specific data which will be saved and loaded. This is for level-specific information that you want to store in saved games.
LevelVars = {}
Logic.LevelVars = LevelVars
TEN.Logic.LevelVars = LevelVars

---A nested table system for level-specific functions.
LevelFuncs = {}
Logic.LevelFuncs = LevelFuncs
TEN.Logic.LevelFuncs = LevelFuncs

---Will be called when a level is entered by completing a previous level or by selecting it in the menu. Will not be called when loaded from a saved game.
LevelFuncs.OnStart = function() end
---Will be called when a saved game is loaded, just after data is loaded.
LevelFuncs.OnLoad = function() end
---Will be called during the game's update loop, and provides the delta time (a float representing game time since last call) via its argument.
---@param dt number # Delta time since last call.
LevelFuncs.OnLoop = function(dt) end
---Will be called when the player saves the game, just before data is saved.
LevelFuncs.OnSave = function() end
---Will be called when leaving a level. This includes finishing it, exiting to the menu, or loading a save in a different level.
LevelFuncs.OnEnd = function() end
---Will be called when using an item from inventory.
LevelFuncs.OnUseItem = function() end
---Will be called when any of the Freeze modes are activated.
LevelFuncs.OnFreeze = function() end

return TEN
