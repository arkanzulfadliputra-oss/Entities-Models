local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "DoorsHub V40",
   LoadingTitle = "Loading Scripts...",
   LoadingSubtitle = "by ScriptGaming",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "DoorsHub",
      FileName = "HubConfig"
   },
   Discord = {
      Enabled = false,
      Invite = "",
      RememberJoins = true
   },
   KeySystem = false
})

-- ========== TAB SPAWNER ENTITY ==========
local TabSpawnerEntity = Window:CreateTab("Spawner Entity", 99226763923744)
local SectionSpawnerEntity = TabSpawnerEntity:CreateSection("Entity Collection")

local Button = TabSpawnerEntity:CreateButton({
   Name = "LSPLASH",
   Callback = function()
      print("Clicked")
      loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/ScriptGamingGamer/refs/heads/main/Script/DOORS/CUSTOM%20ENTITIES/LSPLASH.lua"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "Happy Munci",
   Callback = function()
      print("Clicked")
      loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/ScriptGamingGamer/refs/heads/main/Script/DOORS/CUSTOM%20ENTITIES/HAPPY%20MUNCI.lua"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "Rebound Remake",
   Callback = function()
      loadstring(game:HttpGet("https://pastebin.com/raw/aDnvLtc0"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "Ripper",
   Callback = function()
      loadstring(game:HttpGet("https://pastebin.com/raw/duAAB2tp"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "A-60",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/ScriptGamingGamer/refs/heads/main/Script/DOORS/CUSTOM%20ENTITIES/A-60.lua"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "Silence",
   Callback = function()
      loadstring(game:HttpGet("https://pastebin.com/raw/FRs4rBed"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "X-60",
   Callback = function()
      loadstring(game:HttpGet("https://pastebin.com/raw/rCS3K95T"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "B-60",
   Callback = function()
      loadstring(game:HttpGet("https://pastebin.com/raw/EyH5nC1t"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "Surge",
   Callback = function()
      loadstring(game:HttpGet("https://pastebin.com/raw/yuQDrnUJ"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "Ambush Nightmare",
   Callback = function()
      loadstring(game:HttpGet("https://pastebin.com/raw/StsBUgzF"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "Rebound Endless",
   Callback = function()
      loadstring(game:HttpGet("https://pastebin.com/raw/6KtmYCAQ"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "Greed",
   Callback = function()
      loadstring(game:HttpGet("https://pastebin.com/raw/3mquCrkF"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "A-60 Remake",
   Callback = function()
      loadstring(game:HttpGet("https://pastebin.com/raw/UGZVqiQ5"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "Rebound Hardcore New",
   Callback = function()
      print("Clicked")
      loadstring(game:HttpGet("https://pastebin.com/raw/2RwQUQRt"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "Rebound Old",
   Callback = function()
      print("Clicked")
      loadstring(game:HttpGet("https://pastebin.com/raw/MqUhjTVJ"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "Trolololo Ambush",
   Callback = function()
      print("Clicked")
      loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/ScriptGamingGamer/refs/heads/main/Script/DOORS/CUSTOM%20ENTITIES/TROLL%20AMBUSH.lua"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "Kawaii Ambush",
   Callback = function()
      print("Clicked")
      loadstring(game:HttpGet("https://pastebin.com/raw/VHqii3zx"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "OLD Ambush",
   Callback = function()
      print("Clicked")
      loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/ScriptGamingGamer/refs/heads/main/Script/DOORS/CUSTOM%20ENTITIES/OLD%20AMBUSH.lua"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "Hunger By Me",
   Callback = function()
      print("Clicked")
      loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/ScriptGamingGamer/refs/heads/main/Script/DOORS/CUSTOM%20ENTITIES/Hunger.lua"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "A-60 V2",
   Callback = function()
      print("Clicked")
      loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/ScriptGamingGamer/refs/heads/main/Script/DOORS/CUSTOM%20ENTITIES/A-60%20V2.lua"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "A-60 Hardcore",
   Callback = function()
      print("Clicked")
      loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/ScriptGamingGamer/refs/heads/main/Script/DOORS/CUSTOM%20ENTITIES/A-60%20HARDCORE.lua"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "TrollFace",
   Callback = function()
      print("Clicked")
      loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/ScriptGamingGamer/refs/heads/main/Script/DOORS/CUSTOM%20ENTITIES/Troll%20Face.lua"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "White",
   Callback = function()
      print("Clicked")
      loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/ScriptGamingGamer/refs/heads/main/Script/DOORS/CUSTOM%20ENTITIES/White.lua"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "Smiler",
   Callback = function()
      print("Clicked")
      loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/ScriptGamingGamer/refs/heads/main/Script/DOORS/CUSTOM%20ENTITIES/Smiler.lua"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "Trauma",
   Callback = function()
      print("Clicked")
      loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/ScriptGamingGamer/refs/heads/main/Script/DOORS/CUSTOM%20ENTITIES/Trauma.lua"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "Rage",
   Callback = function()
      print("Clicked")
      loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/ScriptGamingGamer/refs/heads/main/Script/DOORS/CUSTOM%20ENTITIES/Rage.lua"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "Hunger",
   Callback = function()
      print("Clicked")
      loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/ScriptGamingGamer/refs/heads/main/Script/DOORS/CUSTOM%20ENTITIES/Hungered.lua"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "FireAmbush",
   Callback = function()
      print("Clicked")
      loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/ScriptGamingGamer/refs/heads/main/Script/DOORS/CUSTOM%20ENTITIES/Fire.lua"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "A-25",
   Callback = function()
      print("Clicked")
      loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/ScriptGamingGamer/refs/heads/main/Script/DOORS/CUSTOM%20ENTITIES/A-25.lua"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "Eater",
   Callback = function()
      print("Clicked")
      loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/ScriptGamingGamer/refs/heads/main/Script/DOORS/CUSTOM%20ENTITIES/Eater.lua"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "Haste",
   Callback = function()
      print("Clicked")
      loadstring(game:HttpGet("https://pastebin.com/raw/qj4gAiRF"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "Depth",
   Callback = function()
      print("Clicked")
      loadstring(game:HttpGet("https://pastebin.com/raw/EWz5Espp"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "Firebrand",
   Callback = function()
      print("Clicked")
      loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/Entities-Models/refs/heads/main/Custom%20Entities%20Models/Firebrand.lua"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "TrollRush",
   Callback = function()
      print("Clicked")
      loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/Entities-Models/refs/heads/main/Custom%20Entities%20Models/Troll%20Rush.lua"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "Conjoinment",
   Callback = function()
      print("Clicked")
      loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/Entities-Models/refs/heads/main/Custom%20Entities%20Models/Conjoinment.lua"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "Breeze",
   Callback = function()
      print("Clicked")
      loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/Entities-Models/refs/heads/main/Custom%20Entities%20Models/Breeze.lua"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "Cease Spawner",
   Callback = function()
      loadstring(game:HttpGet("https://pastefy.app/ofutwkjb/raw"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "Struggle",
   Callback = function()
      print("Clicked")
      loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/Entity-Models/refs/heads/main/DoorsMod/Strunggle.lua"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "Depth Remnant",
   Callback = function()
      print("Clicked")
      loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/Entity-Models/refs/heads/main/DoorsMod/Depth%20Remnant.lua"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "Rebound Remnant",
   Callback = function()
      print("Clicked")
      loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/Entity-Models/refs/heads/main/DoorsMod/Rebound%20Remnant.lua"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "Hardcore A-60 Spawner",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Idk-lol2/a-60aa/refs/heads/main/---%3D%3D%3D%3D%3D%3D%20a-60%20agresiv%20spawner%20%3D%3D%3D%3D%3D%3D---.txt"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "Him Spawner",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/trungdepth-dot/Him-entity-doors/refs/heads/main/Him"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "Hungered Spawner",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Junbbinopro/Hungerd/refs/heads/main/Entity"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "Munci Spawner",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Junbbinopro/Munci-entity/refs/heads/main/Munci-20"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "Torment Spawner (READ THE DESCRIPTION)",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/eoyoustme/ohh/refs/heads/main/Torment12"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "Trauma Spawner",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Junbbinopro/Trauma-entity/refs/heads/main/Trauma"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "Disturbance Spawner (READ THE DESCRIPTION)",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/talales/Nhankg.-/refs/heads/main/intro%20fragmented"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "Giggle Spawner",
   Callback = function()
      _G.GIGGLE_SPAWN_CONFIG = {
         Damage = 6,
         AttackingTime = math.random(7, 10),
         FallSpeed = 3,
         Stunnable = true,
         StunTime = 5,
         RagdollThrowForce = 50,
         RagdollDissapears = true,
         RoomSpawning = {
            Enabled = true
         },
         PlayerSpawning = {
            MinRadius = -20,
            MaxRadius = 20
         },
         SpawningKey = {
            Enabled = false,
            Key = "G"
         }
      }
      loadstring(game:HttpGet("https://raw.githubusercontent.com/DripCapybara/Test/refs/heads/main/Doors/GiggleSpawn.lua"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "Daze Spawner",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/eoyoustme/ohh/refs/heads/main/Daze11"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "Draft Spawner",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/eoyoustme/ohh/refs/heads/main/Draft1"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "Fluster Spawner",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/talales/Nhankg./refs/heads/main/Fluster"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "Blink Spawner",
   Callback = function()
      loadstring(game:HttpGet("https://github.com/PABMAXICHAC/doors-monsters-scripts/raw/main/blinkcrux"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "350 Spawner",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Junbbinopro/350-entity/refs/heads/main/350"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "Black Spawner",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Junbbinopro/Black-smile/refs/heads/main/Black"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "Chaotic Spawner",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/J63633S/Laver-mode/refs/heads/main/Chaotic"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "Dread Spawner (READ THE DESCRIPTION)",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/talales/Nhankg_/refs/heads/main/intro%20fragmented"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "Bluyer Spawner",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Junbbinopro/Bluyer-entity/refs/heads/main/Bluyer"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "Shocker Spawner",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Junbbinopro/Shocker-entity/refs/heads/main/Shocker"))()
   end,
})

local Button = TabSpawnerEntity:CreateButton({
   Name = "Surge Spawner",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Junbbinopro/Surge-entity/refs/heads/main/Surge"))()
   end,
})

local TabSpawnerItem = Window:CreateTab("Spawner Item", 0)
local SectionSpawnerItem = TabSpawnerItem:CreateSection("Item Collection")

local Button = TabSpawnerItem:CreateButton({
   Name = "Crucifix",
   Callback = function()
      loadstring(game:HttpGet('https://raw.githubusercontent.com/PenguinManiack/Crucifix/main/Crucifix.lua'))()
   end,
})

local Button = TabSpawnerItem:CreateButton({
   Name = "Guiding Candle (UPDATED)",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Junbbinopro/Guiding-light-candle/refs/heads/main/Candle"))()
   end,
})

local Button = TabSpawnerItem:CreateButton({
   Name = "Foundation Crucifix",
   Callback = function()
      _G.CR_Uses = 1000000
      _G.CR_IsCurious = false
      _G.CR_HoldKeyRequired = "false"
      loadstring(game:HttpGet("https://raw.githubusercontent.com/IdkMyNameLoll/PublicScripts/refs/heads/main/crucifix_E_A_A"))()
   end,
})

local Button = TabSpawnerItem:CreateButton({
   Name = "Mischievous Crucifix",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Teilsthebfdifan/Modhub-assets/refs/heads/main/MischievousV2Test.lua"))()
   end,
})

local Button = TabSpawnerItem:CreateButton({
   Name = "Crucifix Lotus",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/Entities-Models/refs/heads/main/Item%20Model/Crucifix%20Lotus.lua"))()
   end,
})

local Button = TabSpawnerItem:CreateButton({
   Name = "Crucifix White",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/Entities-Models/refs/heads/main/Item%20Model/Crucifix%20White.lua"))()
   end,
})

local Button = TabSpawnerItem:CreateButton({
   Name = "Crucifix Old",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/Entities-Models/refs/heads/main/Item%20Model/Crucifix%20Old.lua"))()
   end,
})

local Button = TabSpawnerItem:CreateButton({
   Name = "Crucifix All",
   Callback = function()
      print("Clicked")
      loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/ScriptGamingGamer/refs/heads/main/Script/DOORS/Eyes%20Crucifix.lua"))()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/ScriptGamingGamer/refs/heads/main/%3F%3F%3F%20Crucifix.lua"))()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/ScriptGamingGamer/refs/heads/main/Ambush%20Crucifix.lua"))()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/ScriptGamingGamer/refs/heads/main/seek%20Crucifix.lua"))()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/ScriptGamingGamer/refs/heads/main/Crucifix%20Blue.lua"))()
   end,
})

local Button = TabSpawnerItem:CreateButton({
   Name = "Devils Crucifix",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/Entities-Models/refs/heads/main/Item%20Model/Devils%20Crucifix.lua"))()
   end,
})

local Button = TabSpawnerItem:CreateButton({
   Name = "Golden Gummy Flashlight",
   Callback = function()
      loadstring(game:HttpGet(("https://raw.githubusercontent.com/aadyian9000/the-thing/main/GoldenGummyFlashlight.lua"),true))()
   end,
})

local Button = TabSpawnerItem:CreateButton({
   Name = "Black Hole (OVERPOWERED)",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/iimateiYT/Scripts/main/Black%20Hole.lua"))()
   end,
})

local Button = TabSpawnerItem:CreateButton({
   Name = "Grenade",
   Callback = function()
      loadstring(game:HttpGet("https://pastebin.com/raw/zeFBYYy9", true))()
   end,
})

local Button = TabSpawnerItem:CreateButton({
   Name = "Infinite Vitamins",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/refs/heads/main/Inf_Vitamins.lua"))()
   end,
})

local Button = TabSpawnerItem:CreateButton({
   Name = "Spiral Bottle",
   Callback = function()
      loadstring(game:HttpGet('https://gist.githubusercontent.com/IdkMyNameLoll/8b05c837bea9effac2554340465b4be1/raw/3f3be0ee72e7f153db39a16a40fa63dce6cde72d/SpiralBottle'))()
   end,
})

local Button = TabSpawnerItem:CreateButton({
   Name = "Jeff's Tip Jar",
   Callback = function()
      loadstring(game:HttpGet("https://pastebin.com/raw/Hsuiugnr"))()
   end,
})

local Button = TabSpawnerItem:CreateButton({
   Name = "Moonlight Bottle",
   Callback = function()
      loadstring(game:HttpGet('https://gist.githubusercontent.com/IdkMyNameLoll/04d7dd5e02688624b958b8c2604b924c/raw/9e86b34249f44ed2dd433176e67daaf3db30cde8/MoonBottle'))()
   end,
})

local Button = TabSpawnerItem:CreateButton({
   Name = "Flame Thrower",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/JohnyGamingLUA/FlamethrowerDOORS/main/obfuscated.lua"))()
   end,
})

local Button = TabSpawnerItem:CreateButton({
   Name = "Screech Plushie",
   Callback = function()
      loadstring(game:HttpGet("https://pastebin.com/raw/CRYiKPZX"))()
   end,
})

local Button = TabSpawnerItem:CreateButton({
   Name = "Magic Book",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/skkenrgjt/HAHAHAH/refs/heads/main/MagicRunner"))()
   end,
})

local Button = TabSpawnerItem:CreateButton({
   Name = "Admin Slap",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/GuestlyTheGreatestGuest/Scripts/refs/heads/main/Admin-Slap-For-DOORS-made-by-Celestian-(Guestly)-on-Discord"))()
   end,
})

local Button = TabSpawnerItem:CreateButton({
   Name = "Seek Gun",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/notpoiu/Scripts/main/seekgun.lua"))()
   end,
})

local Button = TabSpawnerItem:CreateButton({
   Name = "Scanner",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/notpoiu/Scripts/main/Scanner.lua"))()
   end,
})

local Button = TabSpawnerItem:CreateButton({
   Name = "Tool Giver V3 | Doors",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Darli17/Entities/refs/heads/main/Tools", true))()
   end,
})

local Button = TabSpawnerItem:CreateButton({
   Name = "RobHub X Item Giver",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Darli17/DOORS-REBOUNCES/refs/heads/main/main-ig"))()
   end,
})

local Button = TabSpawnerItem:CreateButton({
   Name = "Size Stick (UPDATED)",
   Callback = function()
      loadstring(game:HttpGet("https://pastefy.app/dy85jtB6/raw"))()
   end,
})

local TabExtra = Window:CreateTab("Extra", 0)
local SectionExtra = TabExtra:CreateSection("Extra Features")

local Button = TabExtra:CreateButton({
   Name = "Floor 2 Theme Map",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Junxd-03/Floor-2/refs/heads/main/New"))()
   end,
})

local Button = TabExtra:CreateButton({
   Name = "Fog Map",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Junbbinopro/Fog-doors/refs/heads/main/Fogg"))()
   end,
})

local Button = TabExtra:CreateButton({
   Name = "Demon Map (Red Map)",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/eoyoustme/Monoxide/refs/heads/main/DEMON"))()
   end,
})

local Button = TabExtra:CreateButton({
   Name = "Shaders (Working)",
   Callback = function()
      loadstring(game:HttpGet('https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/src/cd.lua'))()
   end,
})

local Button = TabExtra:CreateButton({
   Name = "Crash Game (READ THE DESCRIPTION)",
   Callback = function()
      while true do
         print("crash")
      end
   end,
})

local Button = TabExtra:CreateButton({
   Name = "Sprint Stamina V5",
   Callback = function()
      _G.msrhyan_config_sprint = {
         timetospeedexpire = 25,
         cooldowntime = 5,
         sprintspeed = 50,
         speedapplytime = 0.3,
         speedremovetime = 0.5,
         staminarecovertime = 10,
         effectfadetime = 0.2,
         showstaminamessages = true,
         customstaminamessage = "SUA STAMINA ACABOU, AGUARDE %ds!",
         enableeffects = true,
         effectcolor = {100, 200, 255},
         staminabarcolor = {0, 162, 255},
         sprintfov = 120,
         normalfov = 70,
         usewhileloading = false,
      }
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Sc-Rhyan57/MsProject/refs/heads/main/projects/DOORS-SPRINT.lua"))()
   end,
})

local Button = TabExtra:CreateButton({
   Name = "Speedrun Timer",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Iliankytb/Iliankytb/main/SpeedrunTimer"))()
   end,
})

local Button = TabExtra:CreateButton({
   Name = "THE OVERDOORS V2.5 (Remake)",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/tranhuuthien958-arch/OVERDOORS-ramake-v4/refs/heads/main/OVERDOORS%20by%20chubeteliet%20ramake%20by%20RealblueYT%20and%20voorPr0%20and%20vuivuiviu2.%20LocaPlayer", true))()
   end,
})

local Button = TabExtra:CreateButton({
   Name = "c00lkidd Seek Chase (READ THE DESCRIPTION)",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/IdkMyNameLoll/PublicScripts/refs/heads/main/c00lkiddSeek"))()
   end,
})

local TabKeybinds = Window:CreateTab("Keybinds", 0)
local SectionKeybinds = TabKeybinds:CreateSection("Keybind Settings")

local ToggleKeybind = TabKeybinds:CreateKeybind({
   Name = "Hide/Show Rayfield",
   CurrentKeybind = "K",
   HoldToInteract = false,
   Callback = function()
      Rayfield:Toggle()
   end,
})

local DestroyKeybind = TabKeybinds:CreateKeybind({
   Name = "Close Rayfield",
   CurrentKeybind = "F4",
   HoldToInteract = false,
   Callback = function()
      Rayfield:Destroy()
   end,
})

local TabCredit = Window:CreateTab("Credit", 0)
local SectionCredit = TabCredit:CreateSection("Credit")

local Label = TabCredit:CreateLabel("Scripter By @ScripterGaming_Short", 4483362458, Color3.fromRGB(255, 255, 255), false)

local Label = TabCredit:CreateLabel("Entities Models By C87FM", 4483362458, Color3.fromRGB(255, 255, 255), false)

local Label = TabCredit:CreateLabel("Owner By ScriptGaming", 4483362458, Color3.fromRGB(255, 255, 255), false)

local Label = TabCredit:CreateLabel("Official", 4483362458, Color3.fromRGB(255, 255, 255), false)
