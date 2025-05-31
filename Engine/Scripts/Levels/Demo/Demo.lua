-- Demo level script file
require("Addons.AOD_Animations")

LevelFuncs.OnLoad = function() end
LevelFuncs.OnSave = function() end
LevelFuncs.OnEnd = function() end
LevelFuncs.OnStart = function() end
LevelFuncs.OnLoop = function() end



local LEFT = 17
local RIGHT = 18
local slot = TEN.Objects.ObjID.LARA_EXTRA_ANIMS

LevelFuncs.FasterShimmy = function()
    if Lara:GetAnim() == 137 and TEN.Input.KeyIsHeld(TEN.Input.ActionID.RIGHT) and TEN.Input.KeyIsHit(TEN.Input.ActionID.SPRINT) then
        Lara:SetAnim(RIGHT,slot)
    end
    if Lara:GetAnim() == 136 and TEN.Input.KeyIsHeld(TEN.Input.ActionID.LEFT) and TEN.Input.KeyIsHit(TEN.Input.ActionID.SPRINT) then
        Lara:SetAnim(LEFT,slot)
    end
    if Lara:GetAnim() == RIGHT and Lara:GetFrame() == 28 then
        if TEN.Input.KeyIsHeld(TEN.Input.ActionID.RIGHT) and TEN.Input.KeyIsHit(TEN.Input.ActionID.SPRINT) then
            Lara:SetAnim(RIGHT,slot)
        elseif TEN.Input.KeyIsHeld(TEN.Input.ActionID.ACTION) and TEN.Input.KeyIsHeld(TEN.Input.ActionID.RIGHT) then
            Lara:SetAnim(137)
        end
    end
    if Lara:GetAnim() == LEFT and Lara:GetFrame() == 28 then
        if TEN.Input.KeyIsHeld(TEN.Input.ActionID.LEFT) and TEN.Input.KeyIsHit(TEN.Input.ActionID.SPRINT) then
            Lara:SetAnim(LEFT,slot)
        elseif TEN.Input.KeyIsHeld(TEN.Input.ActionID.ACTION) and TEN.Input.KeyIsHeld(TEN.Input.ActionID.LEFT) then
            Lara:SetAnim(136)
        end
    end
    if Lara:GetAnim() == RIGHT and TEN.Input.KeyIsHeld(TEN.Input.ActionID.ACTION) and (not TEN.Input.KeyIsHeld(TEN.Input.ActionID.RIGHT)) and Lara:GetFrame() == 28 then
        Lara:SetAnim(96)
        Lara:SetFrame(19)
    end
    if Lara:GetAnim() == LEFT and TEN.Input.KeyIsHeld(TEN.Input.ActionID.ACTION) and (not TEN.Input.KeyIsHeld(TEN.Input.ActionID.LEFT)) and Lara:GetFrame() == 28 then
        Lara:SetAnim(96)
        Lara:SetFrame(19)
    end
end

TEN.Logic.AddCallback(TEN.Logic.CallbackPoint.PRELOOP, LevelFuncs.FasterShimmy)