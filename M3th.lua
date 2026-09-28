local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/chromatiks/evenesce/refs/heads/main/library.lua"))()

local Window = Library:Window({
    Name = "M3TH",
    Icon = "101846904774120"
})
Window:Watermark()

local Legit = Window:Tab({
    Name = "Legit",
    Icon = "crosshair"
})
local Combat = Legit:SubSection({
    Name = "Combat",
    Default = true
})
local Aimbot = Combat:Section({ Name = "Aimbot" })
local AimToggle = Aimbot:Toggle({
    Name = "Enable aimbot",
    Flag = "AimEnable",
    Default = true,
    Callback = function(Value) print("aimbot", Value) end
})
AimToggle:Keybind({
    Name = "Aimbot",
    Flag = "AimKey",
    Default = Enum.KeyCode.Q,
    Mode = "Hold"
})
local AimExtra = AimToggle:Extra()
AimExtra:Toggle({
    Name = "Team check",
    Flag = "AimTeam",
    Callback = print
})
AimExtra:Toggle({
    Name = "Visibility check",
    Flag = "AimVis",
    Callback = print
})
AimExtra:Slider({
    Name = "Smoothness",
    Min = 0,
    Max = 1,
    Float = 0.01,
    Default = 0.34,
    Flag = "AimSmooth",
    Callback = print
})
Aimbot:Slider({
    Name = "FOV size",
    Min = 10,
    Max = 500,
    Default = 120,
    Suffix = "px",
    Flag = "AimFOV",
    Callback = print
})
Aimbot:RangeSlider({
    Name = "Target distance",
    Min = 0,
    Max = 1000,
    DefaultMin = 50,
    DefaultMax = 400,
    MinGap = 25,
    Suffix = "m",
    Flag = "AimDist",
    Callback = print
})
Aimbot:Dropdown({
    Name = "Target part",
    Options = {
        "Head",
        "Torso",
        "Random"
    },
    Default = "Head",
    Flag = "AimPart",
    Callback = print
})
Aimbot:Colorpicker({
    Name = "FOV color",
    Flag = "FOVColor",
    Callback = print
})
local Trigger = Combat:Section({
    Name = "Triggerbot",
    Side = "Right"
})
local TriggerToggle = Trigger:Toggle({
    Name = "Enable triggerbot",
    Flag = "TriggerEnable",
    Callback = print
})
TriggerToggle:Keybind({
    Name = "Triggerbot",
    Flag = "TriggerKey",
    Default = Enum.KeyCode.E,
    Mode = "Toggle"
})
Trigger:Slider({
    Name = "Delay",
    Min = 0,
    Max = 500,
    Default = 120,
    Suffix = "ms",
    Flag = "TriggerDelay",
    Callback = print
})
Trigger:Textbox({
    Name = "Whitelist player",
    Placeholder = "Username",
    Flag = "Whitelist",
    NoDivider = true,
    Callback = print
})
Trigger:Button({
    Name = "Add to whitelist",
    Callback = function() print("added", Library.Flags.Whitelist) end
})
local Hitbox = Combat:Section({ Name = "Hitbox" })
local HitboxToggle = Hitbox:Toggle({
    Name = "Enable hitbox",
    Flag = "HitboxEnable",
    Callback = print
})
HitboxToggle:Keybind({
    Name = "Hitbox",
    Flag = "HitboxKey",
    Default = Enum.KeyCode.H,
    Mode = "Hold"
})
Hitbox:Slider({
    Name = "Expand amount",
    Min = 1,
    Max = 30,
    Default = 8,
    Suffix = "studs",
    Flag = "HitboxSize",
    Callback = print
})
Hitbox:Dropdown({
    Name = "Target part",
    Options = {
        "Head",
        "HumanoidRootPart",
        "Torso"
    },
    Default = "HumanoidRootPart",
    Flag = "HitboxPart",
    Callback = print
})
Hitbox:Toggle({
    Name = "Visible check",
    Flag = "HitboxVisible",
    Callback = print
})
local Assist = Combat:Section({
    Name = "Assistance",
    Side = "Right"
})
local RecoilToggle = Assist:Toggle({
    Name = "Recoil control",
    Flag = "RecoilControl",
    Callback = print
})
RecoilToggle:Keybind({
    Name = "Recoil control",
    Flag = "RecoilKey",
    Default = Enum.KeyCode.C,
    Mode = "Toggle"
})
Assist:Slider({
    Name = "Reduction",
    Min = 0,
    Max = 100,
    Default = 60,
    Suffix = "%",
    Flag = "RecoilAmount",
    Callback = print
})
Assist:Toggle({
    Name = "Auto peek",
    Flag = "AutoPeek",
    Callback = print
})
Assist:Colorpicker({
    Name = "Peek indicator",
    Flag = "PeekColor",
    Callback = print
})

local Weapons = Legit:SubSection({
    Name = "Weapons",
    OneColumn = true
})
local Guns = Weapons:Section({ Name = "Gun modifications" })
Guns:Toggle({
    Name = "No recoil",
    Flag = "NoRecoil",
    Callback = print
})
Guns:Toggle({
    Name = "No spread",
    Flag = "NoSpread",
    Callback = print
})
Guns:Toggle({
    Name = "Instant reload",
    Flag = "InstantReload",
    Callback = print
})
Guns:Slider({
    Name = "Fire rate multiplier",
    Min = 1,
    Max = 5,
    Float = 0.1,
    Default = 1,
    Suffix = "x",
    Flag = "FireRate",
    Callback = print
})
Guns:Dropdown({
    Name = "Bullet mode",
    Options = {
        "Default",
        "Explosive",
        "Piercing"
    },
    Default = "Default",
    Flag = "BulletMode",
    Callback = print
})

local Visuals = Window:Tab({
    Name = "Visuals",
    Icon = "eye"
})
local ESP = Visuals:SubSection({
    Name = "ESP",
    Default = true
})
local PlayersSec = ESP:Section({ Name = "Players" })
local BoxToggle = PlayersSec:Toggle({
    Name = "Enable boxes",
    Flag = "Boxes",
    Default = true,
    Callback = print
})
BoxToggle:Keybind({
    Name = "Boxes",
    Flag = "BoxKey",
    Default = Enum.KeyCode.B,
    Mode = "Toggle"
})
local BoxExtra = BoxToggle:Extra()
BoxExtra:Dropdown({
    Name = "Box style",
    Options = {
        "Full",
        "Corner",
        "3D"
    },
    Default = "Corner",
    Flag = "BoxStyle",
    Callback = print
})
BoxExtra:Colorpicker({
    Name = "Box color",
    Flag = "BoxColor",
    Callback = print
})
PlayersSec:Toggle({
    Name = "Enable skeleton",
    Flag = "Skeleton",
    Callback = print
})
PlayersSec:Toggle({
    Name = "Show health bar",
    Flag = "Health",
    Callback = print
})
PlayersSec:Toggle({
    Name = "Show names",
    Flag = "Names",
    Callback = print
})
PlayersSec:Dropdown({
    Name = "ESP elements",
    MultiSelect = true,
    Options = {
        "Box",
        "Name",
        "Health",
        "Distance",
        "Weapon"
    },
    Default = {
        "Box",
        "Name"
    },
    Flag = "ESPElements",
    Callback = print
})
PlayersSec:RangeSlider({
    Name = "Render distance",
    Min = 0,
    Max = 2000,
    DefaultMin = 0,
    DefaultMax = 1500,
    MinGap = 100,
    Suffix = "m",
    Flag = "ESPDist",
    Callback = print
})
local WorldSec = ESP:Section({
    Name = "World",
    Side = "Right"
})
WorldSec:Toggle({
    Name = "Fullbright",
    Flag = "Fullbright",
    Callback = print
})
WorldSec:Slider({
    Name = "Time of day",
    Min = 0,
    Max = 24,
    Float = 0.5,
    Default = 14,
    Suffix = "h",
    Flag = "Time",
    Callback = print
})
WorldSec:Colorpicker({
    Name = "Ambient color",
    Flag = "Ambient",
    Alpha = 0.2,
    Callback = print
})

local Chams = Visuals:SubSection({
    Name = "Chams",
    OneColumn = true
})
local ChamsSec = Chams:Section({ Name = "Chams settings" })
ChamsSec:Toggle({
    Name = "Enable chams",
    Flag = "Chams",
    Callback = print
})
ChamsSec:Dropdown({
    Name = "Material",
    Options = {
        "ForceField",
        "Neon",
        "Plastic",
        "Glass"
    },
    Default = "ForceField",
    Flag = "ChamsMat",
    Callback = print
})
ChamsSec:Colorpicker({
    Name = "Visible color",
    Flag = "ChamsVisible",
    Callback = print
})
ChamsSec:Colorpicker({
    Name = "Hidden color",
    Flag = "ChamsHidden",
    Alpha = 0.4,
    Callback = print
})
ChamsSec:Slider({
    Name = "Outline thickness",
    Min = 0,
    Max = 5,
    Float = 0.1,
    Default = 1,
    Flag = "ChamsOutline",
    Callback = print
})

local Effects = Visuals:SubSection({
    Name = "Effects",
    OneColumn = true
})
local FX = Effects:Section({ Name = "Screen effects" })
FX:Toggle({
    Name = "Hit sound",
    Flag = "HitSound",
    Callback = print
})
FX:Dropdown({
    Name = "Hit sound type",
    Options = {
        "Bubble",
        "Bell",
        "Rust",
        "Bameware"
    },
    Default = "Bubble",
    Flag = "HitSoundType",
    Callback = print
})
FX:Slider({
    Name = "Field of view",
    Min = 70,
    Max = 120,
    Default = 80,
    Flag = "CamFOV",
    Callback = print
})
FX:Toggle({
    Name = "Rainbow accent",
    Flag = "Rainbow",
    Callback = print
})

local Movement = Window:Tab({
    Name = "Movement",
    Icon = "footprints"
})
local MoveMain = Movement:SubSection({
    Name = "Main",
    Default = true
})
local Speed = MoveMain:Section({ Name = "Speed" })
local SpeedToggle = Speed:Toggle({
    Name = "Enable speed",
    Flag = "Speed",
    Callback = print
})
SpeedToggle:Keybind({
    Name = "Speed",
    Flag = "SpeedKey",
    Default = Enum.KeyCode.X,
    Mode = "Toggle"
})
Speed:Slider({
    Name = "Speed amount",
    Min = 16,
    Max = 200,
    Default = 32,
    Flag = "SpeedAmount",
    Callback = print
})
Speed:Toggle({
    Name = "Infinite jump",
    Flag = "InfJump",
    Callback = print
})
Speed:Slider({
    Name = "Jump power",
    Min = 50,
    Max = 300,
    Default = 50,
    Flag = "Jump",
    Callback = print
})
local Teleport = MoveMain:Section({
    Name = "Coordinates",
    Side = "Right"
})
local Coords = Teleport:Textbox({
    Inputs = {
        {
            Placeholder = "56",
            Flag = "TX"
        },
        {
            Placeholder = "12",
            Flag = "TY"
        },
        {
            Placeholder = "764",
            Flag = "TZ"
        }
    },
    NoDivider = true,
    Callback = print
})
Teleport:Button({
    Name = "Teleport to coordinates",
    NoDivider = true,
    Callback = function() print("tp", Coords:Get(1), Coords:Get(2), Coords:Get(3)) end
})
Teleport:Button({
    Name = "Set waypoint",
    Callback = function() print("waypoint") end
})

local Advanced = Movement:SubSection({
    Name = "Advanced",
    OneColumn = true
})
local Adv = Advanced:Section({ Name = "Advanced movement" })
local FlyToggle = Adv:Toggle({
    Name = "Fly",
    Flag = "Fly",
    Callback = print
})
FlyToggle:Keybind({
    Name = "Fly",
    Flag = "FlyKey",
    Default = Enum.KeyCode.F,
    Mode = "Toggle"
})
Adv:Slider({
    Name = "Fly speed",
    Min = 10,
    Max = 300,
    Default = 60,
    Flag = "FlySpeed",
    Callback = print
})
Adv:Toggle({
    Name = "Noclip",
    Flag = "Noclip",
    Callback = print
})
Adv:Toggle({
    Name = "Bunny hop",
    Flag = "BHop",
    Callback = print
})

local Player = Window:Tab({
    Name = "Player",
    Icon = "user"
})
local Character = Player:SubSection({
    Name = "Character",
    OneColumn = true,
    Default = true
})
local Char = Character:Section({ Name = "Character modifications" })
Char:Toggle({
    Name = "Anti AFK",
    Flag = "AntiAFK",
    Default = true,
    Callback = print
})
Char:Toggle({
    Name = "God mode",
    Flag = "God",
    Callback = print
})
Char:Slider({
    Name = "Hip height",
    Min = 0,
    Max = 10,
    Float = 0.1,
    Default = 2,
    Flag = "HipHeight",
    Callback = print
})
Char:Dropdown({
    Name = "Animation pack",
    Options = {
        "Default",
        "Ninja",
        "Zombie",
        "Robot"
    },
    Default = "Default",
    Flag = "AnimPack",
    Callback = print
})
Char:Button({
    Name = "Reset character",
    Callback = function() print("reset") end
})

local Misc = Window:Tab({
    Name = "Misc",
    Icon = "wrench"
})
local Server = Misc:SubSection({
    Name = "Server",
    Default = true
})
local Actions = Server:Section({ Name = "Server actions" })
Actions:Button({
    Name = "Rejoin server",
    Callback = function() print("rejoin") end
})
Actions:Button({
    Name = "Server hop",
    Callback = function() print("hop") end
})
Actions:Button({
    Name = "Copy join script",
    Callback = function() print("copied") end
})
local Notify = Server:Section({
    Name = "Notifications",
    Side = "Right"
})
Notify:Textbox({
    Name = "Notification text",
    Placeholder = "Hello world",
    Flag = "NotifText",
    NoDivider = true,
    Callback = print
})
Notify:Button({
    Name = "Send notification",
    Callback = function()
        Library:Notification({
            Name = "Evenesce",
            Description = tostring(Library.Flags.NotifText or "Hello world"),
            Icon = "message-square"
        })
    end
})

local Trolling = Misc:SubSection({
    Name = "Trolling",
    OneColumn = true
})
local Troll = Trolling:Section({ Name = "Trolling tools" })
Troll:Toggle({
    Name = "Spin character",
    Flag = "Spin",
    Callback = print
})
Troll:Slider({
    Name = "Spin speed",
    Min = 1,
    Max = 50,
    Default = 10,
    Flag = "SpinSpeed",
    Callback = print
})
Troll:Textbox({
    Name = "Chat spam message",
    Placeholder = "GG friggin ez",
    Flag = "SpamMsg",
    NoDivider = true,
    Callback = print
})
Troll:Button({
    Name = "Start spam",
    Callback = function() print("spam", Library.Flags.SpamMsg) end
})

Library:Notification({
    Name = "M3TH",
    Description = "Loaded. Press RightCTRL to toggle the menu.",
    Icon = "check",
    Duration = 6
})
