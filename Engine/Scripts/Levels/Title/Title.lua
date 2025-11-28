-- Title script file

LevelFuncs.OnLoad = function() end
LevelFuncs.OnSave = function() end
LevelFuncs.OnEnd = function() end
LevelFuncs.OnStart = function() end
LevelFuncs.OnLoop = function()

	local ring = TEN.Objects.GetMoveableByName("title_ring")
	local rot = ring:GetRotation()
	ring:SetRotation(TEN.Rotation(rot.x + 0.05, rot.y, rot.z))

end