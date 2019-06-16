local _,c = UnitClass("player")
if c ~= "ROGUE" then return end

local _, _addon = ...

_addon.spells = {
    [1] = {
        {id = 1784, cost = 10}, -- Stealth (1)
    },
    [4] = {
        {id = 53, cost = 100}, -- Backstab (1)
        {id = 921, cost = 100}, -- Pick Pocket
    },
    [6] = {
        {id = 1776, cost = 100}, -- Gouge (1)
        {id = 1757, cost = 100}, -- Sinister Strike (2)
    },
    [8] = {
        {id = 5277, cost = 200}, -- Evasion
        {id = 6760, cost = 200}, -- Eviscerate (2)
    },
    [10] = {
        {id = 2983, cost = 300}, -- Sprint (1)
        {id = 6770, cost = 300}, -- Sap (1)
        {id = 5171, cost = 300}, -- Slice and Dice (1)
        {id = 674, cost = 300}, -- Dual Wield (Passive)
    },
    [12] = {
        {id = 1766, cost = 800}, -- Kick (1)
        {id = 2589, cost = 800}, -- Backstab (2)
        {id = 3127, cost = 800}, -- Parry (Passive)
    },
    [14] = {
        {id = 1758, cost = 1200}, -- Sinister Strike (3)
        {id = 703, cost = 1200}, -- Garrote (1)
        {id = 8647, cost = 1200}, -- Expose Armor (1)
    },
    [16] = {
        {id = 1966, cost = 1800}, -- Feint (1)
        {id = 6761, cost = 1800}, -- Eviscerate (3)
        {id = 1804, cost = 1800}, -- Pick Lock
    },
    [18] = {
        {id = 8676, cost = 2900}, -- Ambush (1)
        {id = 1777, cost = 2900}, -- Gouge (2)
    },
    [20] = {
        {id = 2590, cost = 3000}, -- Backstab (3)
        {id = 1943, cost = 3000}, -- Rupture (1)
        {id = 2842, aquire = "quest"}, -- Poisons
        {id = 3420, cost = 3000}, -- Crippling Poison (1)
        {id = 1785, cost = 3000}, -- Stealth (2)
    },
    [22] = {
        {id = 1759, cost = 4000}, -- Sinister Strike (4)
        {id = 1725, cost = 4000}, -- Distract
        {id = 1856, cost = 4000}, -- Vanish (1)
        {id = 8631, cost = 4000}, -- Garrote (2)
    },
    [24] = {
        {id = 2836, cost = 5000}, -- Detect Traps (Passive)
        {id = 6762, cost = 5000}, -- Eviscerate (4)
        {id = 5763, cost = 5000}, -- Mind-numbing Poison (1)
    },
    [26] = {
        {id = 8724, cost = 6000}, -- Ambush (2)
        {id = 1833, cost = 6000}, -- Cheap Shot
        {id = 1767, cost = 6000}, -- Kick (2)
        {id = 8649, cost = 6000}, -- Expose Armor (2)
    },
    [28] = {
        {id = 2591, cost = 8000}, -- Backstab (4)
        {id = 6768, cost = 8000}, -- Feint (2)
        {id = 2070, cost = 8000}, -- Sap (2)
        {id = 8639, cost = 8000}, -- Rupture (2)
        {id = 8687, cost = 8000}, -- Instant Poison (2)
    },
    [30] = {
        {id = 1760, cost = 10000}, -- Sinister Strike (5)
        {id = 1842, cost = 10000}, -- Disarm Trap
        {id = 8632, cost = 10000}, -- Garrote (3)
        {id = 408, cost = 10000}, -- Kidney Shot (1)
        {id = 2835, cost = 10000}, -- Deadly Poison (1)
    },
    [32] = {
        {id = 8623, cost = 12000}, -- Eviscerate (5)
        {id = 8629, cost = 12000}, -- Gouge (3)
        {id = 13220, cost = 12000}, -- Wound Poison (1)
    },
    [34] = {
        {id = 8696, cost = 14000}, -- Sprint (2)
        {id = 2094, cost = 14000}, -- Blind
        {id = 8725, cost = 14000}, -- Ambush (3)
        {id = 6510, cost = 14000}, -- Blinding Powder
    },
    [36] = {
        {id = 8721, cost = 16000}, -- Backstab (5)
        {id = 8640, cost = 16000}, -- Rupture (3)
        {id = 8691, cost = 16000}, -- Instant Poison (3)
        {id = 8650, cost = 16000}, -- Expose Armor (3)
    },
    [38] = {
        {id = 8621, cost = 18000}, -- Sinister Strike (6)
        {id = 8633, cost = 18000}, -- Garrote (4)
        {id = 8694, cost = 18000}, -- Mind-numbing Poison (2)
        {id = 2837, cost = 18000}, -- Deadly Poison (2)
    },
    [40] = {
        {id = 8637, cost = 20000}, -- Feint (3)
        {id = 1860, cost = 20000}, -- Safe Fall (Passive)
        {id = 8624, cost = 20000}, -- Eviscerate (6)
        {id = 13228, cost = 20000}, -- Wound Poison (2)
        {id = 1786, cost = 20000}, -- Stealth (3)
    },
    [42] = {
        {id = 1857, cost = 27000}, -- Vanish (2)
        {id = 11267, cost = 27000}, -- Ambush (4)
        {id = 6774, cost = 27000}, -- Slice and Dice (2)
        {id = 1768, cost = 27000}, -- Kick (3)
    },
    [44] = {
        {id = 11279, cost = 29000}, -- Backstab (6)
        {id = 11273, cost = 29000}, -- Rupture (4)
        {id = 11341, cost = 29000}, -- Instant Poison (4)
    },
    [46] = {
        {id = 11293, cost = 31000}, -- Sinister Strike (7)
        {id = 17347, cost = 7750, talentReq = {3,15}}, -- Hemorrhage (2)
        {id = 11289, cost = 31000}, -- Garrote (5)
        {id = 11285, cost = 31000}, -- Gouge (4)
        {id = 11197, cost = 31000}, -- Expose Armor (4)
        {id = 11357, cost = 31000}, -- Deadly Poison (3)
    },
    [48] = {
        {id = 11297, cost = 33000}, -- Sap (3)
        {id = 11299, cost = 33000}, -- Eviscerate (7)
        {id = 13229, cost = 33000}, -- Wound Poison (3)
    },
    [50] = {
        {id = 11268, cost = 35000}, -- Ambush (5)
        {id = 8643, cost = 35000}, -- Kidney Shot (2)
        {id = 3421, cost = 35000}, -- Crippling Poison (2)
    },
    [52] = {
        {id = 11280, cost = 46000}, -- Backstab (7)
        {id = 11303, cost = 46000}, -- Feint (4)
        {id = 11274, cost = 46000}, -- Rupture (5)
        {id = 11400, cost = 46000}, -- Mind-numbing Poison (3)
        {id = 11342, cost = 46000}, -- Instant Poison (5)
    },
    [54] = {
        {id = 11294, cost = 48000}, -- Sinister Strike (8)
        {id = 11290, cost = 48000}, -- Garrote (6)
        {id = 11358, cost = 48000}, -- Deadly Poison (4)
    },
    [56] = {
        {id = 11300, cost = 50000}, -- Eviscerate (8)
        {id = 11198, cost = 50000}, -- Expose Armor (5)
        {id = 13230, cost = 50000}, -- Wound Poison (4)
    },
    [58] = {
        {id = 11305, cost = 52000}, -- Sprint (3)
        {id = 17348, cost = 13000, talentReq = {3,15}}, -- Hemorrhage (3)
        {id = 11269, cost = 52000}, -- Ambush (6)
        {id = 1769, cost = 52000}, -- Kick (4)
    },
    [60] = {
        {id = 11281, cost = 54000}, -- Backstab (8)
        {id = 25300, aquire = "book", source = "AQ20", from = "BOSSES", phase = 5}, -- Backstab (9)
        {id = 25302, aquire = "book", source = "AQ20", from = "BOSSES", phase = 5}, -- Feint (5)
        {id = 11275, cost = 54000}, -- Rupture (6)
        {id = 11286, cost = 54000}, -- Gouge (5)
        {id = 1787, cost = 54000}, -- Stealth (4)
        {id = 11343, cost = 54000}, -- Instant Poison (6)
        {id = 31016, aquire = "book", source = "UBRS", from = "UBRS_ASSASSIN"}, -- Eviscerate (9)
    }
}