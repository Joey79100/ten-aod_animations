-- Place in this Lua script all the levels of your game
-- Title is mandatory and must be the first level.

-- Intro image is a splash screen which appears before actual loading screen.
-- If you don't want it to appear, just remove this line.

-- Flow.SetIntroImagePath("Screens\\main.jpg")

-- This image should be used for static title screen background (as in TR1-TR3).
-- For now it is not implemented.

-- Flow.SetTitleScreenImagePath("Screens\\main.jpg")

-- Set overall amount of secrets in game.
-- If set to 0, secrets won't be displayed in statistics.

Flow.SetTotalSecretCount(0)

-- Disable/enable flycheat globally

Flow.EnableFlyCheat(true)

-- Import AudioTracks names

local AudioTracks = require("Common/AudioTracks")

--------------------------------------------------

-- Title level

title = Level.new()

title.scriptFile = "Scripts\\Levels\\Title\\title.lua"
title.ambientTrack = AudioTracks.MUS_AOD_Theme
title.levelFile = "Data\\title.ten"
title.loadScreenFile = "Screens\\main.jpg"

Flow.AddLevel(title)

--------------------------------------------------

-- Demo level

demo = Level.new()

demo.nameKey = "level_demo"
demo.scriptFile = "Scripts\\Levels\\Demo\\Demo.lua"
demo.ambientTrack = AudioTracks.AMB_Paris_Outside
demo.levelFile = "Data\\Demo.ten"
-- demo.loadScreenFile = "Screens\\black.jpg"

demo.horizon = true
demo.farView = 64
demo.layer1 = Flow.SkyLayer.new(Color.new(25, 30, 34), 2)
demo.layer2 = Flow.SkyLayer.new(Color.new(15, 19, 20), 5)
demo.fog = Flow.Fog.new(Color.new(100, 57, 26), 16, 50)

Flow.AddLevel(demo)


-- Demo level with original TEN animations

demoTEN = Level.new()

demoTEN.nameKey = "level_demo_ten"
demoTEN.scriptFile = "Scripts\\Levels\\Demo\\Demo.lua"
demoTEN.ambientTrack = AudioTracks.AMB_Paris_Outside
demoTEN.levelFile = "Data\\DemoTEN.ten"
-- demoTEN.loadScreenFile = "Screens\\black.jpg"

demoTEN.horizon = true
demoTEN.farView = 64
demoTEN.layer1 = Flow.SkyLayer.new(Color.new(25, 30, 34), 2)
demoTEN.layer2 = Flow.SkyLayer.new(Color.new(15, 19, 20), 5)
demoTEN.fog = Flow.Fog.new(Color.new(100, 57, 26), 16, 50)

Flow.AddLevel(demoTEN)