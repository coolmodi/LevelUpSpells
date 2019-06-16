local _,c = UnitClass("player")
if c ~= "HUNTER" then return end

local _, _addon = ...

_addon.spells = {
    [1] = {
        {id = 1494, cost = 10}, -- Track Beasts
    },
    [4] = {
        {id = 13163, cost = 100}, -- Aspect of the Monkey
        {id = 1978, cost = 100}, -- Serpent Sting (1)
    },
    [6] = {
        {id = 1130, cost = 100}, -- Hunter's Mark (1)
        {id = 3044, cost = 100}, -- Arcane Shot (1)
    },
    [8] = {
        {id = 14260, cost = 200}, -- Raptor Strike (2)
        {id = 5116, cost = 200}, -- Concussive Shot
        {id = 3127, cost = 200}, -- Parry (Passive)
    },
    [10] = {
        {id = 1515, aquire = "quest"}, -- Tame Beast
        {id = 883, aquire = "quest"}, -- Call Pet
        {id = 982, aquire = "quest"}, -- Revive Pet
        {id = 13165, cost = 400}, -- Aspect of the Hawk (1)
        {id = 6991, aquire = "quest"}, -- Feed Pet
        {id = 5149, aquire = "quest"}, -- Beast Training
        {id = 2641, aquire = "quest"}, -- Dismiss Pet
        {id = 19883, cost = 400}, -- Track Humanoids
        {id = 13549, cost = 400}, -- Serpent Sting (2)
    },
    [12] = {
        {id = 136, cost = 600}, -- Mend Pet (1)
        {id = 2974, cost = 600}, -- Wing Clip (1)
        {id = 14281, cost = 600}, -- Arcane Shot (2)
        {id = 20736, cost = 600}, -- Distracting Shot (1)
    },
    [14] = {
        {id = 1513, cost = 1200}, -- Scare Beast (1)
        {id = 6197, cost = 1200}, -- Eagle Eye
        {id = 1002, cost = 1200}, -- Eyes of the Beast
    },
    [16] = {
        {id = 1495, cost = 1800}, -- Mongoose Bite (1)
        {id = 13795, cost = 1800}, -- Immolation Trap (1)
        {id = 14261, cost = 1800}, -- Raptor Strike (3)
    },
    [18] = {
        {id = 14318, cost = 2000}, -- Aspect of the Hawk (2)
        {id = 19884, cost = 2000}, -- Track Undead
        {id = 2643, cost = 2000}, -- Multi-Shot (1)
        {id = 13550, cost = 2000}, -- Serpent Sting (3)
    },
    [20] = {
        {id = 3111, cost = 2200}, -- Mend Pet (2)
        {id = 5118, cost = 2200}, -- Aspect of the Cheetah
        {id = 781, cost = 2200}, -- Disengage (1)
        {id = 1499, cost = 2200}, -- Freezing Trap (1)
        {id = 14282, cost = 2200}, -- Arcane Shot (3)
        {id = 674, cost = 2200}, -- Dual Wield (Passive)
        {id = 14274, cost = 2200}, -- Distracting Shot (2)
    },
    [22] = {
        {id = 3043, cost = 6000}, -- Scorpid Sting (1)
        {id = 14323, cost = 6000}, -- Hunter's Mark (2)
    },
    [24] = {
        {id = 1462, cost = 7000}, -- Beast Lore
        {id = 14262, cost = 7000}, -- Raptor Strike (4)
        {id = 19885, cost = 7000}, -- Track Hidden
    },
    [26] = {
        {id = 14302, cost = 7000}, -- Immolation Trap (2)
        {id = 19880, cost = 7000}, -- Track Elementals
        {id = 3045, cost = 7000}, -- Rapid Fire
        {id = 13551, cost = 7000}, -- Serpent Sting (4)
    },
    [28] = {
        {id = 3661, cost = 8000}, -- Mend Pet (3)
        {id = 14319, cost = 8000}, -- Aspect of the Hawk (3)
        {id = 13809, cost = 8000}, -- Frost Trap
        {id = 14283, cost = 8000}, -- Arcane Shot (4)
        {id = 20900, cost = 400, talentReq = {2,5}}, -- Aimed Shot (2)
    },
    [30] = {
        {id = 13161, cost = 8000}, -- Aspect of the Beast
        {id = 14326, cost = 8000}, -- Scare Beast (2)
        {id = 5384, cost = 8000}, -- Feign Death
        {id = 14269, cost = 8000}, -- Mongoose Bite (2)
        {id = 14288, cost = 8000}, -- Multi-Shot (2)
        {id = 15629, cost = 8000}, -- Distracting Shot (3)
    },
    [32] = {
        {id = 14263, cost = 10000}, -- Raptor Strike (5)
        {id = 19878, cost = 10000}, -- Track Demons
        {id = 1543, cost = 10000}, -- Flare
        {id = 14275, cost = 10000}, -- Scorpid Sting (2)
    },
    [34] = {
        {id = 13813, cost = 12000}, -- Explosive Trap (1)
        {id = 13552, cost = 12000}, -- Serpent Sting (5)
        {id = 14272, cost = 12000}, -- Disengage (2)
    },
    [36] = {
        {id = 3662, cost = 14000}, -- Mend Pet (4)
        {id = 14303, cost = 14000}, -- Immolation Trap (3)
        {id = 3034, cost = 14000}, -- Viper Sting (1)
        {id = 14284, cost = 14000}, -- Arcane Shot (5)
        {id = 20901, cost = 700, talentReq = {2,5}}, -- Aimed Shot (3)
    },
    [38] = {
        {id = 14320, cost = 16000}, -- Aspect of the Hawk (4)
        {id = 14267, cost = 16000}, -- Wing Clip (2)
    },
    [40] = {
        {id = 13159, cost = 18000}, -- Aspect of the Pack
        {id = 8737, cost = 18000}, -- Mail
        {id = 14264, cost = 18000}, -- Raptor Strike (6)
        {id = 14310, cost = 18000}, -- Freezing Trap (2)
        {id = 19882, cost = 18000}, -- Track Giants
        {id = 1510, cost = 18000}, -- Volley (1)
        {id = 14324, cost = 18000}, -- Hunter's Mark (3)
        {id = 15630, cost = 18000}, -- Distracting Shot (4)
    },
    [42] = {
        {id = 20909, cost = 1200}, -- Counterattack (2)
        {id = 13553, cost = 24000}, -- Serpent Sting (6)
        {id = 14289, cost = 24000}, -- Multi-Shot (3)
        {id = 14276, cost = 24000}, -- Scorpid Sting (3)
    },
    [44] = {
        {id = 13542, cost = 26000}, -- Mend Pet (5)
        {id = 14270, cost = 26000}, -- Mongoose Bite (3)
        {id = 14316, cost = 26000}, -- Explosive Trap (2)
        {id = 14285, cost = 26000}, -- Arcane Shot (6)
        {id = 20902, cost = 1300, talentReq = {2,5}}, -- Aimed Shot (4)
    },
    [46] = {
        {id = 14327, cost = 28000}, -- Scare Beast (3)
        {id = 20043, cost = 28000}, -- Aspect of the Wild (1)
        {id = 14304, cost = 28000}, -- Immolation Trap (4)
        {id = 14279, cost = 28000}, -- Viper Sting (2)
    },
    [48] = {
        {id = 14321, cost = 32000}, -- Aspect of the Hawk (5)
        {id = 14265, cost = 32000}, -- Raptor Strike (7)
        {id = 14273, cost = 32000}, -- Disengage (3)
    },
    [50] = {
        {id = 19879, cost = 36000}, -- Track Dragonkin
        {id = 24132, cost = 1800, talentReq = {3, 16}}, -- Wyvern Sting (2)
        {id = 20905, cost = 1800, talentReq = {2, 14}}, -- Trueshot Aura (2)
        {id = 13554, cost = 36000}, -- Serpent Sting (7)
        {id = 14294, cost = 36000}, -- Volley (2)
        {id = 15631, cost = 36000}, -- Distracting Shot (5)
    },
    [52] = {
        {id = 13543, cost = 40000}, -- Mend Pet (6)
        {id = 14286, cost = 40000}, -- Arcane Shot (7)
        {id = 20903, cost = 2000, talentReq = {2,5}}, -- Aimed Shot (5)
        {id = 14277, cost = 40000}, -- Scorpid Sting (4)
    },
    [54] = {
        {id = 14317, cost = 42000}, -- Explosive Trap (3)
        {id = 20910, cost = 2100}, -- Counterattack (3)
        {id = 14290, cost = 42000}, -- Multi-Shot (4)
    },
    [56] = {
        {id = 20190, cost = 46000}, -- Aspect of the Wild (2)
        {id = 14266, cost = 46000}, -- Raptor Strike (8)
        {id = 14305, cost = 46000}, -- Immolation Trap (5)
        {id = 14280, cost = 46000}, -- Viper Sting (3)
    },
    [58] = {
        {id = 14322, cost = 48000}, -- Aspect of the Hawk (6)
        {id = 14271, cost = 48000}, -- Mongoose Bite (4)
        {id = 13555, cost = 48000}, -- Serpent Sting (8)
        {id = 14295, cost = 48000}, -- Volley (3)
        {id = 14325, cost = 48000}, -- Hunter's Mark (4)
    },
    [60] = {
        {id = 14268, cost = 50000}, -- Wing Clip (3)
        {id = 15632, cost = 50000}, -- Distracting Shot (6)
        {id = 13544, cost = 50000}, -- Mend Pet (7)
        {id = 25296, aquire = "book", source = "AQ20", from = "BOSSES", phase = 5}, -- Aspect of the Hawk (7)
        {id = 14311, cost = 50000}, -- Freezing Trap (3)
        {id = 24133, cost = 2500, talentReq = {3, 16}}, -- Wyvern Sting (3)
        {id = 20906, cost = 2500, talentReq = {2, 14}}, -- Trueshot Aura (3)
        {id = 14287, cost = 50000}, -- Arcane Shot (8)
        {id = 25294, aquire = "book", source = "AQ20", from = "BOSSES", phase = 5}, -- Multi-Shot (5)
        {id = 25295, aquire = "book", source = "AQ20", from = "BOSSES", phase = 5}, -- Serpent Sting (9)
        {id = 19801, aquire = "book", source = "MC", from = "MC_RAG"}, -- Tranquilizing Shot
        {id = 20904, cost = 2500, talentReq = {2,5}}, -- Aimed Shot (6)
    }
}