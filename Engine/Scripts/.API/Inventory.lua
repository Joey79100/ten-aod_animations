-- TEN 1.10.0.2 API
-- This file is auto-generated and for IntelliSense purposes only!
-- Any changes made here will not be reflected in the engine.

---@meta

---Inventory module for Tomb Engine
---@class Inventory
Inventory = {}

---Add an item to the player's inventory.
---@param objectID ObjID # Object ID of the item to add.
---@param count integer? # The amount of items to add. Default is the yield from a single pickup, e.g. 1 from a medipack, 12 from a flare pack. (default: `1`)
---@param addToPickupSummary boolean? # If true, display the item in the pickup summary. Default is false. (default: `false`)
function Inventory.GiveItem(objectID, count, addToPickupSummary) end

---Remove an item from the player's inventory.
---@param Object ObjID # ID of the item to remove.
---@param count integer? # The amount of items to remove. Default is the yield from a single pickup, e.g. 1 from a medipack, 12 from a flare pack. (default: `1`)
function Inventory.TakeItem(Object, count) end

---Get the amount of an item held in the player's inventory.
---@param objectID ObjID # Object ID of the item to check.
---@return integer # The amount of items. -1 indicates infinity.
function Inventory.GetItemCount(objectID) end

---Set the amount of an item in the player's inventory.
---@param objectID ObjID # Object ID of the item amount to set.
---@param count integer # The amount of items to set. -1 indicates infinity.
function Inventory.SetItemCount(objectID, count) end

---Get last item used in the player's inventory.
---This value will be valid only for a single frame after exiting inventory, after which Lara says "No".
---Therefore, this function must be preferably used either in OnLoop or OnUseItem events.
---@return ObjID # Last item used in the inventory.
function Inventory.GetUsedItem() end

---Set last item used in the player's inventory.
---You will be able to specify only objects which already exist in the inventory.
---Will only be valid for the next frame.
---If not processed by the game, Lara will say "No".
---@param objectID ObjID # Object ID of the item to select from inventory.
function Inventory.SetUsedItem(objectID) end

---Clear last item used in the player's inventory.
---When this function is used in OnUseItem level function, it allows to override existing item functionality.
---For items without existing functionality, this function is needed to avoid Lara saying "No" after using it.
function Inventory.ClearUsedItem() end

return Inventory
