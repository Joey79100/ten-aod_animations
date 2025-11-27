-- TEN 1.10.0.2 API
-- This file is auto-generated and for IntelliSense purposes only!
-- Any changes made here will not be reflected in the engine.

---@meta

---Type module for Tomb Engine
---@class Type
Type = {}

---Check if the variable is a number.
---@param variable any # Variable to be checked.
---@return boolean # `true` if the variable is a number, `false` otherwise.
function Type.IsNumber(variable) end

---Check if the variable is a string.
---@param variable any # Variable to be checked.
---@return boolean # `true` if the variable is a string, `false` otherwise.
function Type.IsString(variable) end

---Check if the variable is a boolean.
---@param variable any # Variable to be checked.
---@return boolean # `true` if the variable is a boolean, `false` otherwise.
function Type.IsBoolean(variable) end

---Check if the variable is a table.
---@param variable any # Variable to be checked.
---@return boolean # `true` if the variable is a table, `false` otherwise.
function Type.IsTable(variable) end

---Check if the variable has a null value.
---@param variable any # Variable to be checked.
---@return boolean # `true` if the variable is a null, `false` otherwise.
function Type.IsNull(variable) end

---Check if the variable is a function.
---@param variable any # Variable to be checked.
---@return boolean # `true` if the variable is a function, `false` otherwise.
function Type.IsFunction(variable) end

---Check if the variable is a Color.
---@param variable any # Variable to be checked.
---@return boolean # `true` if the variable is a Color, `false` otherwise.
function Type.IsColor(variable) end

---Check if the variable is a Rotation.
---@param variable any # Variable to be checked.
---@return boolean # `true` if the variable is a Rotation, `false` otherwise.
function Type.IsRotation(variable) end

---Check if the variable is a Vec2.
---@param variable any # Variable to be checked.
---@return boolean # `true` if the variable is a Vec2, `false` otherwise.
function Type.IsVec2(variable) end

---Check if the variable is a Vec3.
---@param variable any # Variable to be checked.
---@return boolean # `true` if the variable is a Vec3, `false` otherwise.
function Type.IsVec3(variable) end

---Check if the variable is a Time object.
---@param variable any # Variable to be checked.
---@return boolean # `true` if the variable is a Time object, `false` otherwise.
function Type.IsTime(variable) end

---Check if the variable is a LevelFunc.
---@param variable any # Variable to be checked.
---@return boolean # `true` if the variable is a LevelFunc, `false` otherwise.
function Type.IsLevelFunc(variable) end

---Check if the variable is an enum value.
---@param variable any # Variable to be checked.
---@param enumTable table # Enum table to be checked against.
---@param showError boolean? # (optional) If `true`, an error message will be printed if the parameters are invalid. (default: `true`)
---@return boolean # `true` if the variable is a value of the enum, `false` otherwise.
function Type.IsEnumValue(variable, enumTable, showError) end

return Type
