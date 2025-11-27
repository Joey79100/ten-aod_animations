-- TEN 1.10.0.2 API
-- This file is auto-generated and for IntelliSense purposes only!
-- Any changes made here will not be reflected in the engine.

---@meta

---Timer module for Tomb Engine
---@class Timer
Timer = {}

---Create (but do not start) a new timer.
---@param name string # A label to give this timer; used to retrieve the timer later.<br>__Do not give your timers a name beginning with \_\_TEN, as this is reserved for timers used by other internal libaries__.
---@param totalTime number # Duration of the timer, in seconds.<br>Values with only 1 tenth of a second (0.1) are accepted, example: 1.5 - 6.0 - 9.9 - 123.6. No negative values allowed!
---@param loop boolean? # If true, the timer will start again immediately after the time has elapsed. (default: `false`)
---@param timerFormat table|boolean? # Sets the remaining time display. See <a href="#timerFormat">Timer format</a>. (default: `false`)
---@param func function? # The function defined in the *LevelFuncs* table to call when the time is up (default: `nil`)
---@param ... ...? # a variable number of arguments with which the above function will be called (optional)
---@return Timer # The timer in its paused state
function Timer.Create(name, totalTime, loop, timerFormat, func, ...) end

---Delete a timer.
---@param name string # The label that was given to the timer when it was created
function Timer.Delete(name) end

---Get a timer by its name.
---@param name string # The label that was given to the timer when it was created
---@return Timer|nil? # The timer or nil if timer does not exist
function Timer.Get(name) end

---Check if a timer exists.
---@param name string # The label that was given to the timer when it was created
---@return boolean # true if the timer exists, false if it does not exist
function Timer.IfExists(name) end

---Begin or unpause a timer.
---If showing the remaining time on-screen, its default color will be set to white.
---@param reset boolean? # If true, the timer will restart from the beginning (total time) (default: `false`)
function Timer:Start(reset) end

---Stop the timer.
function Timer:Stop() end

---Pause or unpause the timer.
---If showing the remaining time on-screen, its default color will be set to yellow (paused) or white (unpaused).
---@param p boolean # If true, the timer will be paused; if false, it would be unpaused
function Timer:SetPaused(p) end

---Get the remaining time of a timer in game frames.
---@return Time # The remaining time in game frames of timer.
function Timer:GetRemainingTime() end

---Get the remaining time of a timer in seconds.
---@return number # The remaining time in seconds of timer.<br>Seconds have an accuracy of 0.1 tenths. Example: 1.5 - 6.0 - 9.9 - 123.6
function Timer:GetRemainingTimeInSeconds() end

---Get the formatted remaining time of a timer.
---@param timerFormat table|boolean? # Sets the remaining time display. See <a href="#timerFormat">Timer format</a>.<br> (default: `{minutes = true, seconds = true, deciseconds = true}`)
---@return string # The formatted remaining time.
function Timer:GetRemainingTimeFormatted(timerFormat) end

---Set the remaining time of a timer.
---@param remainingTime number # The new time remaining for the timer in seconds.<br> Values with only 1 tenth of a second (0.1) are accepted, example: 1.5 - 6.0 - 9.9 - 123.6. No negative values allowed!
function Timer:SetRemainingTime(remainingTime) end

---Compares the remaining time with a value (in seconds).
---It's recommended to use the *IfRemainingTimeIs()* method to have error-free comparisons.
---@param operator integer # The type of comparison.<br> 0 : If the remaining time is equal to the value<br> 1 : If the remaining time is different from the value<br> 2 : If the remaining time is less the value<br> 3 : If the remaining time is less or equal to the value<br> 4 : If the remaining time is greater the value<br> 5 : If the remaining time is greater or equal to the value
---@param seconds number # The value in seconds to compare.<br> Values with only 1 tenth of a second (0.1) are accepted, example: 1.5 - 6.0 - 9.9 - 123.6. No negative values allowed!<br> Please note: to have continuous control, the remaining time must be controlled within the *OnLoop* event and only when the Timer is active Timer.IsActive.
---@return boolean # true if comparison is true, false if comparison is false or timer does not exist
function Timer:IfRemainingTimeIs(operator, seconds) end

---Get the total time of a timer in game frames.
---This is the amount of time the timer will start with, as well as when starting a new loop.
---@return Time # The timer's total time in game frames.
function Timer:GetTotalTime() end

---Get the total time of a timer in seconds.
---This is the amount of time the timer will start with, as well as when starting a new loop.
---@return number # The timer's total time in seconds.<br> Seconds have an accuracy of 0.1 tenths. Example: 1.5 - 6.0 - 9.9 - 123.6
function Timer:GetTotalTimeInSeconds() end

---Get the formatted total time of a timer.
---This is the amount of time the timer will start with, as well as when starting a new loop.
---@param timerFormat table|boolean? # Sets the remaining time display. See <a href="#timerFormat">Timer format</a>.<br> (default: `{minutes = true, seconds = true, deciseconds = true}`)
---@return string # The formatted total time.
function Timer:GetTotalTimeFormatted(timerFormat) end

---Set the total time for a timer.
---@param totalTime number # Timer's new total time in seconds.<br> Values with only 1 tenth of a second (0.1) are accepted, example: 1.5 - 6.0 - 9.9 - 123.6. No negative values allowed!
function Timer:SetTotalTime(totalTime) end

---Compares the total time with a value (in seconds).
---It's recommended to use the IfTotalTimeIs() method to have error-free comparisons.
---@param operator integer # The type of comparison.<br> 0 : If the total time is equal to the value<br> 1 : If the total time is different from the value<br> 2 : If the total time is less the value<br> 3 : If the total time is less or equal to the value<br> 4 : If the total time is greater the value<br> 5 : If the total time is greater or equal to the value
---@param seconds number # the value in seconds to compare.<br> Values with only 1 tenth of a second (0.1) are accepted, example: 1.5 - 6.0 - 9.9 - 123.6. No negative values allowed!
---@return boolean # true if comparison is true, false if comparison is false or timer does not exist
function Timer:IfTotalTimeIs(operator, seconds) end

---Set whether or not the timer loops.
---@param looping boolean # Whether or not the timer loops
function Timer:SetLooping(looping) end

---Assign a new function and its arguments to the timer.
---It will be called when the time is up.
---@param func function? # The function defined in the *LevelFuncs* table to call when the time is up (default: `nil`)
---@param ... ...? # A variable number of arguments with which the above function will be called (optional)
function Timer:SetFunction(func, ...) end

---Set the on-screen position in percent of the displayed timer when active.
---The coordinate (0,0) is in the upper left-hand corner.
---@param x number? # The x-coordinate in percent (default: `50`)
---@param y number? # The y-coordinate in percent (default: `90`)
function Timer:SetPosition(x, y) end

---Get the on-screen position in percent of the displayed timer when active.
---@return Vec2 # The position of the timer in percent
function Timer:GetPosition() end

---Set the scale of the displayed timer when it is active.
---@param scale number? # The new scale value (default: `1.0`)
function Timer:SetScale(scale) end

---Get the scale of the displayed timer when it is active.
---@return number # The scale of the timer
function Timer:GetScale() end

---Set the paused color of the displayed timer when it is in pause.
---@param color Color? # Timer's new paused color. (default: `TEN.Color(255, 255, 0, 255)`)
function Timer:SetPausedColor(color) end

---Set the color of the displayed timer when it is active.
---@param color Color? # Timer's new color. (default: `TEN.Color(255, 255, 255, 255)`)
function Timer:SetUnpausedColor(color) end

---Set text options for a timer.
---Note: the <em>VERTICAL_CENTER</em> option is always added.
---@param optionsTable table? # Table containing timer's new text options. See Strings.DisplayStringOption<br> (default: `<br>{<br>TEN.Strings.DisplayStringOption.CENTER,<br> TEN.Strings.DisplayStringOption.SHADOW,<br> TEN.Strings.DisplayStringOption.VERTICAL_CENTER<br>}`)
function Timer:SetTextOption(optionsTable) end

---Get whether or not the timer is paused.
---@return boolean # true if the timer is paused, false if it is not paused or timer does not exist
function Timer:IsPaused() end

---Get whether or not the timer is active.
---@return boolean # true if the timer is active, false if it is not active or timer does not exist
function Timer:IsActive() end

---Checks if the timer has ticked (every 0.1 seconds).
---Returns `true` every 0.1 seconds when the timer is active and not paused.<br> TEN's engine runs on a 0.03-second internal tick, while this timer ticks every 0.1 seconds.<br> Use `IsTicking()` to ensure consistency and avoid unexpected behavior — for example, inside the `OnLoop` event.
---@return boolean # `true` if the timer ticked during this frame, `false` otherwise.
function Timer:IsTicking() end

return Timer
