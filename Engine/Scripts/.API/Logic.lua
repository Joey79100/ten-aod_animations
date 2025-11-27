-- TEN 1.10.0.2 API
-- This file is auto-generated and for IntelliSense purposes only!
-- Any changes made here will not be reflected in the engine.

---@meta

---Logic module for Tomb Engine
---@class Logic
Logic = {}

---Register a function as a callback.
---@param point CallbackPoint # When should the callback be called?
---@param func function # The function to be called (must be in the `LevelFuncs` hierarchy). Will receive, as an argument, the time in seconds since the last frame.
function Logic.AddCallback(point, func) end

---Deregister a function as a callback.
---Will have no effect if the function was not registered as a callback.
---@param point CallbackPoint # The callback point the function was registered with. See AddCallback
---@param func function # The function to remove; must be in the LevelFuncs hierarchy.
function Logic.RemoveCallback(point, func) end

---Attempt to find an event set and execute a particular event from it.
---@param name string # Name of the event set to find.
---@param type EventType # Event to execute.
---@param activator Moveable? # Optional activator. (default: `Lara`)
function Logic.HandleEvent(name, type, activator) end

---Attempt to find an event set and enable specified event in it.
---@param name string # Name of the event set to find.
---@param type EventType # Event to enable.
function Logic.EnableEvent(name, type) end

---Attempt to find an event set and disable specified event in it.
---@param name string # Name of the event set to find.
---@param type EventType # Event to disable.
function Logic.DisableEvent(name, type) end

return Logic
