-- TEN 1.10.0.2 API
-- This file is auto-generated and for IntelliSense purposes only!
-- Any changes made here will not be reflected in the engine.

---@meta

---EventSequence module for Tomb Engine
---@class EventSequence
EventSequence = {}

---Create (but do not start) a new event sequence.
---@param name string # A label to give the sequence; used to retrieve the timer later as well as internally by TEN.
---@param loop boolean # If `true`, the sequence will start again from its first timer once its final function has been called.
---@param timerFormat table|boolean? # Same as in <a href="Timer.html#timerFormat">Timer format</a> for Timer. This is mainly for debugging. __This will not work properly if another sequence or timer is showing a countdown.__
---@param ... ... # A variable number of pairs of arguments, each pair consisting of:<br> - a time in seconds (positive values are accepted and with only 1 tenth of a second [__0.1__]),<br> - followed by the function defined in the *LevelFuncs* table to call once the time has elapsed,<br> - followed by another duration in seconds, another function name, etc. You can specify a function either by its name, or by a *table* __{ }__ with the function name as the first member, followed by its arguments (see example).
---@return EventSequence # The inactive sequence.
function EventSequence.Create(name, loop, timerFormat, ...) end

---Get an event sequence by its name.
---@param name string # The label that was given to the sequence when it was created.
---@return EventSequence|nil # The sequence if it exists, `nil` if it does not exist.
function EventSequence.Get(name) end

---Check if an event sequence exists.
---@param name string # The label that was given to the event sequence when it was created.
---@return boolean # `true` if the event sequence exists, `false` if it does not exist.
function EventSequence.IfExists(name) end

---Delete an event sequence.
---@param name string # The label that was given to the event sequence when it was created.
function EventSequence.Delete(name) end

---Begin or unpause a sequence.
---If showing the remaining time on-screen, its color will be set to white.
function EventSequence:Start() end

---Pause or unpause the sequence.
---If showing the remaining time on-screen, its color will be set to yellow (paused) or white (unpaused).
---@param p boolean # If `true`, the sequence will be paused; if `false`, it will be unpaused.
function EventSequence:SetPaused(p) end

---Stop the sequence.
function EventSequence:Stop() end

---Returns whether the sequence is paused.
---@return boolean # `true` If the timer is paused, `false` if otherwise.
function EventSequence:IsPaused() end

---Returns whether the sequence is active.
---@return boolean # `true` If the sequence is active, `false` if otherwise.
function EventSequence:IsActive() end

return EventSequence
