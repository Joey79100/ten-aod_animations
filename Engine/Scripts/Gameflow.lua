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
-- title.levelFile = "Data\\Title.ten"
title.levelFile = "Data\\Demo.ten"
title.loadScreenFile = "Screens\\main.jpg"

Flow.AddLevel(title)

--------------------------------------------------

local InventoryItems = {
    -- Game
    InventoryItem("statistics",                   ObjID.STOPWATCH_ITEM,            -15, 0.4,   Rotation(10, 0, 0),           RotationAxis.Y, -1, ItemAction.STATISTICS),
    InventoryItem("save_game",                    ObjID.PC_SAVE_INV_ITEM,          -20, 0.13,  Rotation(-1, 180, 0),         RotationAxis.Y, -1, ItemAction.SAVE),
    InventoryItem("load_game",                    ObjID.PC_LOAD_INV_ITEM,          -20, 0.13,  Rotation(-1, 180, 0),         RotationAxis.Y, -1, ItemAction.LOAD),

    -- Weapons
    InventoryItem("pistols",                      ObjID.PISTOLS_ITEM,              -10, 0.35,  Rotation(-85, 0, 0),          RotationAxis.Y, -1, ItemAction.EQUIP | ItemAction.CHOOSE_AMMO_PISTOLS),
    InventoryItem("uzis",                         ObjID.UZI_ITEM,                  -10, 0.35,  Rotation(-85, 0, 0),          RotationAxis.Y, -1, ItemAction.EQUIP | ItemAction.CHOOSE_AMMO_UZI),
    InventoryItem("revolver",                     ObjID.REVOLVER_ITEM,             -10, 0.4,   Rotation(-85 + 180, 180, 0),  RotationAxis.Y, -1, ItemAction.EQUIP | ItemAction.COMBINE | ItemAction.CHOOSE_AMMO_REVOLVER),
    InventoryItem("shotgun",                      ObjID.SHOTGUN_ITEM,              -20, 0.85,  Rotation(-85, 0, 0),          RotationAxis.Y, -1, ItemAction.EQUIP | ItemAction.CHOOSE_AMMO_SHOTGUN),
    InventoryItem("hk",                           ObjID.HK_ITEM,                     0, 0.5,   Rotation(-85 + 180, -90, 90), RotationAxis.Y, -1, ItemAction.EQUIP | ItemAction.COMBINE | ItemAction.CHOOSE_AMMO_HK),
    InventoryItem("crossbow",                     ObjID.CROSSBOW_ITEM,               0, 0.5,   Rotation(20, -85, 15),        RotationAxis.Y, -1, ItemAction.EQUIP | ItemAction.COMBINE | ItemAction.CHOOSE_AMMO_CROSSBOW),
    InventoryItem("grenade_launcher",             ObjID.GRENADE_GUN_ITEM,            0, 0.5,   Rotation(0, -90, 90),         RotationAxis.Y, -1, ItemAction.EQUIP | ItemAction.CHOOSE_AMMO_GRENADEGUN),
    InventoryItem("rocket_launcher",              ObjID.ROCKET_LAUNCHER_ITEM,        0, 0.45,  Rotation(-75 - 180, 180, 40), RotationAxis.Y, -1, ItemAction.EQUIP | ItemAction.CHOOSE_AMMO_ROCKET),
    InventoryItem("harpoon_gun",                  ObjID.HARPOON_ITEM,                0, 0.45,  Rotation(-85, 0, 0),          RotationAxis.Y, -1, ItemAction.EQUIP | ItemAction.CHOOSE_AMMO_HARPOON),

    -- Ammunition
    InventoryItem("pistol_ammo",                  ObjID.PISTOLS_AMMO_ITEM,         -10, 0.35,  Rotation(90, 0, 0),           RotationAxis.Y, -1, ItemAction.USE),
    InventoryItem("uzi_ammo",                     ObjID.UZI_AMMO_ITEM,             -10, 0.35,  Rotation(90, 0, 0),           RotationAxis.Y, -1, ItemAction.USE),
    InventoryItem("revolver_ammo",                ObjID.REVOLVER_AMMO_ITEM,        -10, 0.4,   Rotation(-70, 0, 0),          RotationAxis.Y, -1, ItemAction.USE),
    InventoryItem("shotgun_normal_ammo",          ObjID.SHOTGUN_AMMO1_ITEM,        -20, 0.7,   Rotation(0, 0, 0),            RotationAxis.Y, -1, ItemAction.USE),
    InventoryItem("shotgun_wideshot_ammo",        ObjID.SHOTGUN_AMMO2_ITEM,        -20, 0.7,   Rotation(0, 0, 0),            RotationAxis.Y, -1, ItemAction.USE),
    InventoryItem("hk_ammo",                      ObjID.HK_AMMO_ITEM,                0, 0.5,   Rotation(-90, 0, 0),          RotationAxis.Y, -1, ItemAction.USE),
    InventoryItem("crossbow_normal_ammo",         ObjID.CROSSBOW_AMMO1_ITEM,         0, 0.4,   Rotation(0, 0, 0),            RotationAxis.Y, -1, ItemAction.USE),
    InventoryItem("crossbow_poison_ammo",         ObjID.CROSSBOW_AMMO2_ITEM,         0, 0.4,   Rotation(0, 0, 0),            RotationAxis.Y, -1, ItemAction.USE),
    InventoryItem("crossbow_explosive_ammo",      ObjID.CROSSBOW_AMMO3_ITEM,         0, 0.4,   Rotation(0, 0, 0),            RotationAxis.Y, -1, ItemAction.USE),
    InventoryItem("grenade_launcher_normal_ammo", ObjID.GRENADE_AMMO1_ITEM,          0, 0.4,   Rotation(0, 0, 0),            RotationAxis.Y, -1, ItemAction.USE),
    InventoryItem("grenade_launcher_super_ammo",  ObjID.GRENADE_AMMO2_ITEM,          0, 0.4,   Rotation(0, 0, 0),            RotationAxis.Y, -1, ItemAction.USE),
    InventoryItem("grenade_launcher_flash_ammo",  ObjID.GRENADE_AMMO3_ITEM,          0, 0.4,   Rotation(0, 0, 0),            RotationAxis.Y, -1, ItemAction.USE),
    InventoryItem("rocket_launcher_ammo",         ObjID.ROCKET_LAUNCHER_AMMO_ITEM,   0, 0.45,  Rotation(45, 0, 0),           RotationAxis.Y, -1, ItemAction.USE),
    InventoryItem("harpoon_gun_ammo",             ObjID.HARPOON_AMMO_ITEM,           0, 0.45,  Rotation(70, 0, 0),           RotationAxis.Y, -1, ItemAction.USE),

    -- Tools
    InventoryItem("binoculars",                   ObjID.BINOCULARS_ITEM,             0, 0.5,   Rotation(20, 180 - 30, 0),    RotationAxis.Y, -1, ItemAction.USE),
    InventoryItem("lasersight",                   ObjID.LASERSIGHT_ITEM,             0, 1.1,   Rotation(10, -70, 0),         RotationAxis.Y, -1, ItemAction.COMBINE),
    InventoryItem("crowbar",                      ObjID.CROWBAR_ITEM,              -10, 0.4,   Rotation(45, 0, 0),           RotationAxis.Y, -1, ItemAction.USE),

    -- Consumables
    InventoryItem("flares",                       ObjID.FLARE_INV_ITEM,            -20, 0.4,   Rotation(0, 85, -5),          RotationAxis.Y, -1, ItemAction.USE),
    InventoryItem("small_medipack",               ObjID.SMALLMEDI_ITEM,             25, 0.6,   Rotation(-2, 180, 0),         RotationAxis.Y, -1, ItemAction.USE),
    InventoryItem("large_medipack",               ObjID.BIGMEDI_ITEM,               25, 0.6,   Rotation(2, 0, 0),            RotationAxis.Y, -1, ItemAction.USE),

    -- Specific demo items
    -- Note: these are mostly legacy items from The Lost Dominion project.
    -- They are included for convenience in case you want to use them.
    -- Tthem being here doesn't imply I plan to implement features for them.
    InventoryItem("flashlight",                   ObjID.PUZZLE_ITEM1,              280, 0.375, Rotation(45, -45, 0),         RotationAxis.Y, -1, ItemAction.USE),
    InventoryItem("shovel",                       ObjID.PUZZLE_ITEM2,              -35, 0.22,  Rotation(45, 90, -80),        RotationAxis.Y, -1, ItemAction.USE),
    InventoryItem("strength_upgrade",             ObjID.PUZZLE_ITEM4,               35, 0.5,   Rotation(0, 0, 0),            RotationAxis.Y, -1, ItemAction.USE),
    InventoryItem("pharos_knot",                  ObjID.PUZZLE_ITEM10,             100, 0.5,   Rotation(0, 0, 0),            RotationAxis.Y, -1, ItemAction.USE),
    InventoryItem("black_beetle",                 ObjID.PUZZLE_ITEM12,             300, 0.4,   Rotation(45, -45, 0),         RotationAxis.Y, -1, ItemAction.USE),
    InventoryItem("crowbar_from_the_wall",        ObjID.PUZZLE_ITEM16,             800, 0.5,   Rotation(0, 0, 0),            RotationAxis.Y, -1, ItemAction.USE),
    InventoryItem("chocolate_bar",                ObjID.KEY_ITEM1,                  -5, 1.0,   Rotation(0, -90, 90 - 5),     RotationAxis.Y, -1, ItemAction.USE),
    InventoryItem("health_pills",                 ObjID.KEY_ITEM2,                  30, 1.0,   Rotation(-1, 0, 0),           RotationAxis.Y, -1, ItemAction.USE),
    InventoryItem("bandages",                     ObjID.KEY_ITEM3,                  40, 0.5,   Rotation(1, 180, 0),          RotationAxis.Y, -1, ItemAction.USE),
    InventoryItem("antidote",                     ObjID.KEY_ITEM4,                  30, 1.0,   Rotation(20, 90, 0),          RotationAxis.Y, -1, ItemAction.USE),
    InventoryItem("swipe_card",                   ObjID.KEY_ITEM8,                   0, 0.65,  Rotation(90, 180, 0),         RotationAxis.Y, -1, ItemAction.USE),
    InventoryItem("golden_key",                   ObjID.KEY_ITEM9,                  75, 0.5,   Rotation(0, 0, 0),            RotationAxis.Y, -1, ItemAction.USE),
    InventoryItem("gate_key",                     ObjID.KEY_ITEM10,                 25, 0.5,   Rotation(-45, 0, 0),          RotationAxis.Y, -1, ItemAction.USE),
    InventoryItem("notebook",                     ObjID.PICKUP_ITEM1,              -30, 0.6,   Rotation(20, -20, 1),            RotationAxis.Y, -1, ItemAction.USE),
    InventoryItem("batteries",                    ObjID.PICKUP_ITEM2,               50, 0.65,  Rotation(0, 90, 0),           RotationAxis.Y, -1, ItemAction.USE),
    InventoryItem("money",                        ObjID.PICKUP_ITEM3,                0, 1.0,   Rotation(0, 90, 90),          RotationAxis.Y, -1, ItemAction.USE),
    InventoryItem("knife",                        ObjID.PICKUP_ITEM4,                0, 1.0,   Rotation(0, 0, 0),            RotationAxis.Y, -1, ItemAction.USE),
}

--------------------------------------------------

-- Demo level

demo = Level.new()

demo.nameKey = "level_demo"
demo.scriptFile = "Scripts\\Levels\\Demo\\Demo.lua"
demo.ambientTrack = AudioTracks.AMB_Paris_Outside
demo.levelFile = "Data\\Demo.ten"
-- demo.loadScreenFile = "Screens\\black.jpg"

demo.objects = InventoryItems

demo.horizon1 = TEN.Flow.Horizon(ObjID.HORIZON)
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

-- demoTEN.objects = InventoryItems


demoTEN.horizon1 = TEN.Flow.Horizon(ObjID.HORIZON)
demoTEN.farView = 64
demoTEN.layer1 = Flow.SkyLayer.new(Color.new(25, 30, 34), 2)
demoTEN.layer2 = Flow.SkyLayer.new(Color.new(15, 19, 20), 5)
demoTEN.fog = Flow.Fog.new(Color.new(100, 57, 26), 16, 50)

Flow.AddLevel(demoTEN)