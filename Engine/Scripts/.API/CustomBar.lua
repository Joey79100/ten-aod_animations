-- TEN 1.10.0.2 API
-- This file is auto-generated and for IntelliSense purposes only!
-- Any changes made here will not be reflected in the engine.

---@meta

---CustomBar module for Tomb Engine
---@class CustomBar
CustomBar = {}

---Creates a custom progress bar with extensive configuration options.
---@param barData table # The table that contains all the bar data. Refer to table setup for barData.
---@return CustomBar # The custombar in its hidden state
function CustomBar.Create(barData) end

---Creates a bar tied to Players's attributes (Health, Air, Stamina).
---@param playerBarData table # The table that contains all the player bar data. Refer to table setup for playerBarData.
---@return CustomBar # Player attribute bar.
function CustomBar.CreatePlayerBar(playerBarData) end

---Creates a custom health bar for a specific enemy (like a boss).
---Ensure this function is called before Lara aims at the enemy if using generic enemy HP bars as well.
---Also be sure to call this function after increasing the HP of the enemy via LUA.
---@param enemyBarData table # The table that contains all the enemy bar data. Refer to table setup for enemyBarData.
---@return CustomBar # Enemy health bar.
function CustomBar.CreateEnemyHpBar(enemyBarData) end

---Creates health bars for all enemies.
---A new bar is generated whenever Lara targets an enemy.
---If the "hide text" option is disabled, the enemy's name (as set in the editor) is displayed.
---Multiple enemies can share the same name by appending _number to the name in the editor.
---If adjusting an enemy's max HP, ensure this is done before Lara targets the enemy.
---To create health bars for specific enemies, use CustomBar.CreateEnemyHpBar, ensuring the bar is created prior to targeting.
---@param enemiesBarData table # The table that contains all the enemies bar data. Refer to table setup for enemiesBarData.
---@return CustomBar # Enemy health bars.
function CustomBar.SetEnemiesHpGenericBar(enemiesBarData) end

---The function retrieves an existing bar instance by its unique identifier (barName).
---This function is useful when you need to access or manipulate a bar that has already been created.
---@param barName string # The unique identifier assigned to the bar when it was created using CustomBar.New
function CustomBar.Get(barName) end

---The function removes a custom bar and its associated data from the system.
---It ensures that the bar is no longer tracked or accessible in the LevelVars.Engine.CustomBars.bars table.
---@param barName string # The name of the custom bar to be deleted.
function CustomBar.Delete(barName) end

---The function sets the value of a custom bar over a specified time period.
---@param value number # The new target to which the bar's current value should transition. (Must be a non-negative number; between 0 and the bar's maxValue.
---@param time number # The time (in seconds) over which the bar's value should transition to the target value.
function CustomBar.SetBarValue(value, time) end

---The function adjusts the bar's value relative to its current or target value over a specified time span.
---@param value number # The relative value to add (positive or negative) to the current bar value.
---@param time number # The duration (in seconds) over which the change should occur.
function CustomBar.ChangeBarValueOverTimespan(value, time) end

---The function controls the visibility of a custom bar.
---@param visible boolean # `true` makes the bar visible, `false` hides the bar.
function CustomBar.SetVisibility(visible) end

---The function checks whether a custom bar is currently visible.
---@return boolean # `true` if the bar is visible and `false` if it is not.
function CustomBar.IsVisible() end

---The function retrieves the current value of a custom bar.
---@return number # Returns the current value of a custom bar.
function CustomBar.GetValue() end

---The function deletes all custom bars.
function CustomBar.DeleteAllBars() end

---This function prevents the creation of new health bars for enemies when set to false.
---However, it does not affect the health bars that have already been created.
---@param value boolean # Specifies whether new health bars for enemies should be created.
function CustomBar.ShowEnemiesHpGenericBar(value) end

---The function deletes all the enemy health bars excluding those created by CustomBar.CreateEnemyHpBar.
function CustomBar.DeleteExistingHpGenericBars() end

---Sets the custom bar background sprite position.
---@param pos Vec2 # X,Y position of the bar's background in screen percent (0-100).
function CustomBar.SetBackgroundPosition(pos) end

---Sets the custom bar background sprite rotation.
---@param rot number # Rotation of the bar's background sprite (0-360).
function CustomBar.SetBackgroundRotation(rot) end

---Sets the custom bar background sprite scale.
---@param scale Vec2 # X,Y Scaling factor for the bar's background sprite.
function CustomBar.SetBackgroundScale(scale) end

---Sets the custom bar background sprite slot and sprite ID.
---@param slot ObjID # Object ID for the bar's background sprite.
---@param id integer # Sprite ID from the specified object for the bar's background.
function CustomBar.SetBackgroundSpriteSlot(slot, id) end

---Sets the custom bar background sprite align mode.
---@param alignMode AlignMode # Alignment for the bar's background.
function CustomBar.SetBackgroundAlignMode(alignMode) end

---Sets the custom bar background sprite scale mode.
---@param scaleMode ScaleMode # Scaling for the bar's background.
function CustomBar.SetBackgroundScaleMode(scaleMode) end

---Sets the custom bar background sprite blend mode.
---@param blendMode BlendID # Blending modes for the bar's background.
function CustomBar.SetBackgroundBlendMode(blendMode) end

---Sets the custom bar sprite position.
---@param pos Vec2 # X,Y position of the bar in screen percent (0-100).
function CustomBar.SetBarPosition(pos) end

---Sets the custom bar sprite rotation.
---@param rot number # Rotation of the bar's sprite (0-360).
function CustomBar.SetBarRotation(rot) end

---Sets the custom bar sprite color.
---@param color Color # Color of the bar.
function CustomBar.SetBarColor(color) end

---Sets the custom bar sprite scale.
---@param scale Vec2 # X,Y Scaling factor for the bar's sprite.
function CustomBar.SetBarScale(scale) end

---Sets the custom bar sprite slot and sprite ID.
---@param slot ObjID # Object ID for the bar sprite.
---@param id integer # Sprite ID from the specified object for the bar.
function CustomBar.SetBarSpriteSlot(slot, id) end

---Sets the custom bar sprite alignment mode.
---@param alignMode AlignMode # Alignment for the bar.
function CustomBar.SetBarAlignMode(alignMode) end

---Sets the custom bar sprite scale mode.
---@param scaleMode ScaleMode # Scaling for the bar.
function CustomBar.SetBarScaleMode(scaleMode) end

---Sets the custom bar sprite blend mode.
---@param blendMode BlendID # Blending modes for the bar.
function CustomBar.SetBarBlendMode(blendMode) end

return CustomBar
