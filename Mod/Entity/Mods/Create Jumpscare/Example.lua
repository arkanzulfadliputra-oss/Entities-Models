local Jumpscare = loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/Entities-Models/refs/heads/main/Mod/Entity/Mods/Create%20Jumpscare/Source.lua"))()

Jumpscare.CreateJumpscare({
    true, -- Enabled/Disabled

    {
        Image1 = "rbxassetid://11846426821",
        Image2 = "rbxassetid://11846426821",

        Shake = true,

        Sound1 = {
            1234567890, -- SoundId

            {
                Volume = 0.5,
                PlaybackSpeed = 1,
                Looped = false,
            },

            SoundEffect = {

                Echo = {
                    Enabled = false,
                    Delay = 0.1,
                    DryLevel = 0,
                    WetLevel = 0.5,
                },

                Distortion = {
                    Enabled = false,
                    Level = 0.25,
                },

                Equalizer = {
                    Enabled = false,
                    HighGain = 2,
                    MidGain = 3,
                    LowGain = 4,
                },

                Reverb = {
                    Enabled = false,
                    DecayTime = 1.5,
                    Density = 0.7,
                    Diffusion = 0.8,
                    DryLevel = 0,
                    WetLevel = 0.5,
                },

                Chorus = {
                    Enabled = false,
                    Depth = 0.3,
                    Mix = 0.5,
                    Rate = 1,
                },

                Flange = {
                    Enabled = false,
                    Depth = 0.5,
                    Mix = 0.5,
                    Rate = 1,
                },

                Compressor = {
                    Enabled = false,
                    Attack = 0.01,
                    GainMakeup = 0,
                    Ratio = 4,
                    Release = 0.1,
                    Threshold = -20,
                },

                Tremolo = {
                    Enabled = false,
                    Depth = 0.5,
                    Duty = 0.5,
                    Frequency = 5,
                },
            },
        },

        Sound2 = {
            10483837590, -- SoundId

            {
                Volume = 0.5,
                PlaybackSpeed = 1,
                Looped = false,
            },

            SoundEffect = {

                Echo = {
                    Enabled = false,
                    Delay = 0.08,
                    DryLevel = 0,
                    WetLevel = 0.7,
                },

                Distortion = {
                    Enabled = false,
                    Level = 0.35,
                },

                Equalizer = {
                    Enabled = false,
                    HighGain = 3,
                    MidGain = 5,
                    LowGain = 6,
                },

                Reverb = {
                    Enabled = false,
                    DecayTime = 2,
                    Density = 0.8,
                    Diffusion = 0.9,
                    DryLevel = 0,
                    WetLevel = 0.6,
                },

                Chorus = {
                    Enabled = false,
                    Depth = 0.4,
                    Mix = 0.6,
                    Rate = 1.5,
                },

                Flange = {
                    Enabled = false,
                    Depth = 0.5,
                    Mix = 0.5,
                    Rate = 1,
                },

                Compressor = {
                    Enabled = false,
                    Attack = 0.01,
                    GainMakeup = 0,
                    Ratio = 4,
                    Release = 0.1,
                    Threshold = -20,
                },

                Tremolo = {
                    Enabled = false,
                    Depth = 0.5,
                    Duty = 0.5,
                    Frequency = 5,
                },
            },
        },

        Flashing = {
            true, -- Enabled/Disabled
            Color3.fromRGB(0, 0, 255), -- Color
        },

        Tease = {
            true, -- Enabled/Disabled
            Min = 4,
            Max = 4,
        },
    },
})
