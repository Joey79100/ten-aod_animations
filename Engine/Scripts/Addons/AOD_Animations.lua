-- FILE: \AOD_Animations.lua

if (LevelFuncs.External == nil) then LevelFuncs.External = {} end

LevelFuncs.External.AOD_Animations = {}

--- Prevents Lara from snapping when she stops going up or down on a ladder in the middle of the animation.
---
--- Handles the snapping that occurs where the player stops moving deliberately.
--- Also handles the snapping when a ledge was found and Lara is about to vault onto it, although there is a visible garbage frame.
--- Snapping still occurs when Lara is stopped by a ceiling or a floor, there is no way around that with the current API.
---
--- Required because of the hardcoded handling of these transitions.
---
--- @author Bagas
LevelFuncs.External.AOD_Animations.FixLadderStopSnap = function()

	local LaraAnim = Lara:GetAnim()
	local LaraFrame = Lara:GetFrame()

	-- print("Anim: "..LaraAnim..":"..LaraFrame.." | State: "..Lara:GetState().."->"..Lara:GetTargetState().." | PosY: "..Lara:GetPosition().y)

	if LaraAnim == 161 --[[ LADDER_UP ]] then
		if LaraFrame >= 26 and LaraFrame <= 29 then
			-- Stopped by player releasing Up key
			if KeyIsHeld(Input.ActionID.FORWARD) == false then
				Lara:SetAnim(163 --[[ LADDER_UP_STOP_LEFT ]])
				local position = Lara:GetPosition()
				position.y = position.y - 256
				Lara:SetPosition(position)
			end
			-- Stopped because a ledge was found and Lara is about to vault onto it
			if (Lara:GetState() == 57 --[[ LADDER_UP ]] and Lara:GetTargetState() == 19 --[[ GRABBING ]]) then
				Lara:SetAnim(163 --[[ LADDER_UP_STOP_LEFT ]])
			end
		end
	else
		if LaraAnim == 168 --[[ LADDER_DOWN ]] then
			if LaraFrame >= 27 and LaraFrame <= 29 and KeyIsHeld(Input.ActionID.BACK) == false then
				Lara:SetAnim(166 --[[ LADDER_DOWN_STOP_LEFT ]])
				local position = Lara:GetPosition()
				position.y = position.y + 256
				Lara:SetPosition(position)
			end 
		end
	end

end

LevelFuncs.External.AOD_Animations.AODLook = function()
	if ProcessedAODLook ~= true and Lara:GetAnim() == 103 and KeyIsHeld(ActionID.LOOK) and Lara:GetHandStatus() == 0 and Lara:GetRotation().y == 0 then
		local rot = Lara:GetRotation()
		Lara:SetAnim(383)
		ProcessedAODLook = true
	end
	if Lara:GetAnim() == 383 and KeyIsHeld(ActionID.LOOK) == false then
		local frame = Lara:GetFrame()
		Lara:SetAnim(103)
		Lara:SetFrame(frame)
	end
end

AddCallback(CallbackPoint.PRELOOP, LevelFuncs.External.AOD_Animations.FixLadderStopSnap)
AddCallback(CallbackPoint.PRELOOP, LevelFuncs.External.AOD_Animations.AODLook)