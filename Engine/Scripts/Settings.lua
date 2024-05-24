-- TombEngine settings file
-- WARNING: Bad values could make your game unplayable; please follow reference guide attentively.

local Flow = TEN.Flow

local settings = Flow.Settings.new()
settings.errorMode = Flow.ErrorMode.WARN
Flow.SetSettings(settings)

local anims = Flow.Animations.new()
anims.crawlExtended = true
anims.crouchRoll = true
anims.crawlspaceSwandive = true
anims.monkeyAutoJump = true
anims.overhangClimb = true
anims.slideExtended = true
anims.sprintJump = true
anims.pose = true
anims.ledgeJumps = true
Flow.SetAnimations(anims)