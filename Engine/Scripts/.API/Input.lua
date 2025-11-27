-- TEN 1.10.0.2 API
-- This file is auto-generated and for IntelliSense purposes only!
-- Any changes made here will not be reflected in the engine.

---@meta

---Input module for Tomb Engine
---@class Input
Input = {}

---Constants for action key IDs.
---Contains mapped action IDs, raw keyboard input IDs, and raw mouse input IDs.
---To be used with Input.IsKeyHit, Input.IsKeyHeld, and other similar functions.
---@enum ActionID
ActionID = {
	---Forward action.
	FORWARD = "FORWARD",
	---Back action.
	BACK = "BACK",
	---Left action.
	LEFT = "LEFT",
	---Right action.
	RIGHT = "RIGHT",
	---Step left action.
	STEP_LEFT = "STEP_LEFT",
	---Step right action.
	STEP_RIGHT = "STEP_RIGHT",
	---Walk action.
	WALK = "WALK",
	---Sprint action.
	SPRINT = "SPRINT",
	---Crouch action.
	CROUCH = "CROUCH",
	---Jump action.
	JUMP = "JUMP",
	---Roll action.
	ROLL = "ROLL",
	---Action key.
	ACTION = "ACTION",
	---Draw weapon action.
	DRAW = "DRAW",
	---Look action.
	LOOK = "LOOK",
	---Accelerate action.
	ACCELERATE = "ACCELERATE",
	---Reverse action.
	REVERSE = "REVERSE",
	---Faster action.
	FASTER = "FASTER",
	---Slower action.
	SLOWER = "SLOWER",
	---Brake action.
	BRAKE = "BRAKE",
	---Fire action.
	FIRE = "FIRE",
	---Flare action.
	FLARE = "FLARE",
	---Small medipack action.
	SMALL_MEDIPACK = "SMALL_MEDIPACK",
	---Large medipack action.
	LARGE_MEDIPACK = "LARGE_MEDIPACK",
	---Previous weapon action.
	PREVIOUS_WEAPON = "PREVIOUS_WEAPON",
	---Next weapon action.
	NEXT_WEAPON = "NEXT_WEAPON",
	---Weapon 1 action.
	WEAPON_1 = "WEAPON_1",
	---Weapon 2 action.
	WEAPON_2 = "WEAPON_2",
	---Weapon 3 action.
	WEAPON_3 = "WEAPON_3",
	---Weapon 4 action.
	WEAPON_4 = "WEAPON_4",
	---Weapon 5 action.
	WEAPON_5 = "WEAPON_5",
	---Weapon 6 action.
	WEAPON_6 = "WEAPON_6",
	---Weapon 7 action.
	WEAPON_7 = "WEAPON_7",
	---Weapon 8 action.
	WEAPON_8 = "WEAPON_8",
	---Weapon 9 action.
	WEAPON_9 = "WEAPON_9",
	---Weapon 10 action.
	WEAPON_10 = "WEAPON_10",
	---Select action.
	SELECT = "SELECT",
	---Deselect action.
	DESELECT = "DESELECT",
	---Pause action.
	PAUSE = "PAUSE",
	---Inventory action.
	INVENTORY = "INVENTORY",
	---Save action.
	SAVE = "SAVE",
	---Load action.
	LOAD = "LOAD",
	---Keyboard A key.
	A = "A",
	---Keyboard B key.
	B = "B",
	---Keyboard C key.
	C = "C",
	---Keyboard D key.
	D = "D",
	---Keyboard E key.
	E = "E",
	---Keyboard F key.
	F = "F",
	---Keyboard G key.
	G = "G",
	---Keyboard H key.
	H = "H",
	---Keyboard I key.
	I = "I",
	---Keyboard J key.
	J = "J",
	---Keyboard K key.
	K = "K",
	---Keyboard L key.
	L = "L",
	---Keyboard M key.
	M = "M",
	---Keyboard N key.
	N = "N",
	---Keyboard O key.
	O = "O",
	---Keyboard P key.
	P = "P",
	---Keyboard Q key.
	Q = "Q",
	---Keyboard R key.
	R = "R",
	---Keyboard S key.
	S = "S",
	---Keyboard T key.
	T = "T",
	---Keyboard U key.
	U = "U",
	---Keyboard V key.
	V = "V",
	---Keyboard W key.
	W = "W",
	---Keyboard X key.
	X = "X",
	---Keyboard Y key.
	Y = "Y",
	---Keyboard Z key.
	Z = "Z",
	---Keyboard 1 key.
	NUM1 = "NUM1",
	---Keyboard 2 key.
	NUM2 = "NUM2",
	---Keyboard 3 key.
	NUM3 = "NUM3",
	---Keyboard 4 key.
	NUM4 = "NUM4",
	---Keyboard 5 key.
	NUM5 = "NUM5",
	---Keyboard 6 key.
	NUM6 = "NUM6",
	---Keyboard 7 key.
	NUM7 = "NUM7",
	---Keyboard 8 key.
	NUM8 = "NUM8",
	---Keyboard 9 key.
	NUM9 = "NUM9",
	---Keyboard 0 key.
	NUM0 = "NUM0",
	---Return/Enter key.
	RETURN = "RETURN",
	---Escape key.
	ESCAPE = "ESCAPE",
	---Backspace key.
	BACKSPACE = "BACKSPACE",
	---Tab key.
	TAB = "TAB",
	---Space key.
	SPACE = "SPACE",
	---Home key.
	HOME = "HOME",
	---End key.
	END = "END",
	---Delete key.
	DELETE = "DELETE",
	---Minus key.
	MINUS = "MINUS",
	---Equals key.
	EQUALS = "EQUALS",
	---Left bracket key.
	BRACKET_LEFT = "BRACKET_LEFT",
	---Right bracket key.
	BRACKET_RIGHT = "BRACKET_RIGHT",
	---Backslash key.
	BACKSLASH = "BACKSLASH",
	---Semicolon key.
	SEMICOLON = "SEMICOLON",
	---Apostrophe key.
	APOSTROPHE = "APOSTROPHE",
	---Comma key.
	COMMA = "COMMA",
	---Period key.
	PERIOD = "PERIOD",
	---Slash key.
	SLASH = "SLASH",
	---Arrow up key.
	ARROW_UP = "ARROW_UP",
	---Arrow down key.
	ARROW_DOWN = "ARROW_DOWN",
	---Arrow left key.
	ARROW_LEFT = "ARROW_LEFT",
	---Arrow right key.
	ARROW_RIGHT = "ARROW_RIGHT",
	---Control key.
	CTRL = "CTRL",
	---Shift key.
	SHIFT = "SHIFT",
	---Alt key.
	ALT = "ALT",
	---Mouse left click.
	MOUSE_CLICK_LEFT = "MOUSE_CLICK_LEFT",
	---Mouse middle click.
	MOUSE_CLICK_MIDDLE = "MOUSE_CLICK_MIDDLE",
	---Mouse right click.
	MOUSE_CLICK_RIGHT = "MOUSE_CLICK_RIGHT",
	---Mouse scroll up.
	MOUSE_SCROLL_UP = "MOUSE_SCROLL_UP",
	---Mouse scroll down.
	MOUSE_SCROLL_DOWN = "MOUSE_SCROLL_DOWN",
}

---Module-prefixed alias for ActionID
Input.ActionID = ActionID

---Constants for analog axis IDs.
---To be used with Input.GetAnalogAxisValue.
---@enum AxisID
AxisID = {
	---Analog axis configured for player's movement.
	MOVE = "MOVE",
	---Analog axis configured for camera movement.
	CAMERA = "CAMERA",
	---Raw mouse input analog axis.
	MOUSE = "MOUSE",
}

---Module-prefixed alias for AxisID
Input.AxisID = AxisID

---Get the analog value of an action key.
---Returns either 0 or 1 for digital key mappings (e.g.
---keyboard or gamepad buttons), but may return arbitrary values in the range 0 to 1 for analog key mappings (e.g.
---gamepad sticks, gamepad triggers, or mouse axes).
---@param actionID ActionID # Action ID to query.
---@return number # Analog value in the range [0, 1].
function Input.GetAnalogKeyValue(actionID) end

---Get the analog value of an axis.
---@param axis AxisID # Axis ID to fetch.
---@return Vec2 # Relative analog axis value with components in the range [-1, 1].
function Input.GetAnalogAxisValue(axis) end

---Get the display position of the cursor in percent.
---@return Vec2 # Cursor display position in percent.
function Input.GetMouseDisplayPosition() end

---Check if an action key is being hit.
---@param actionID ActionID # Action ID to check.
function Input.IsKeyHit(actionID) end

---Check if an action key is being held.
---@param actionID ActionID # Action ID to check.
---@param delaySec number? # Delay time in seconds before a hold can be registered. (default: `0`)
function Input.IsKeyHeld(actionID, delaySec) end

---Check if an action key is being pulsed.
---Note that to avoid a stutter on the second pulse, `initialDelaySec` must be a multiple of `delaySec`.
---@param actionID ActionID # Action ID to check.
---@param delaySec number # Delay time in seconds between pulses.
---@param initialDelaySec number? # Initial delay time in seconds on the first pulse. (default: `0`)
function Input.IsKeyPulsed(actionID, delaySec, initialDelaySec) end

---Check if an action key is being released.
---@param actionID ActionID # Action ID to check.
---@param maxDelaySec number? # Max delay time in seconds between hit and release within which a release can be registered. (default: `infinity`)
function Input.IsKeyReleased(actionID, maxDelaySec) end

---Simulate an action key push.
---@param actionID ActionID # Action ID to push.
function Input.PushKey(actionID) end

---Clear an action key.
---@param actionID ActionID # Action ID to clear.
function Input.ClearKey(actionID) end

---Clear all action keys.
function Input.ClearAllKeys() end

---Vibrate the game controller if the function is available and the setting is on.
---@param strength number # Vibration strength.
---@param time number? # Vibration time in seconds. (default: `0.3`)
function Input.Vibrate(strength, time) end

return Input
