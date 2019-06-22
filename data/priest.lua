local _,c = UnitClass("player")
if c ~= "PRIEST" then return end

local _, _addon = ...

_addon.spells = {
    [1] = {
        {id = 1243, cost = 10}, -- Power Word: Fortitude (1)
    },
    [4] = {
        {id = 2052, cost = 100}, -- Lesser Heal (2)
        {id = 589, cost = 100}, -- Shadow Word: Pain (1)
    },
    [6] = {
        {id = 591, cost = 100}, -- Smite (2)
        {id = 17, cost = 100}, -- Power Word: Shield (1)
    },
    [8] = {
        {id = 139, cost = 200}, -- Renew (1)
        {id = 586, cost = 200}, -- Fade (1)
    },
    [10] = {
        {id = 2053, cost = 300}, -- Lesser Heal (3)
        {id = 2006, cost = 300}, -- Resurrection (1)
        {id = 594, cost = 300}, -- Shadow Word: Pain (2)
        {id = 8092, cost = 300}, -- Mind Blast (1)
        {id = 13908, aquire = "quest", races = {"Human", "Dwarf"}}, -- Desperate Prayer (1)
        {id = 10797, aquire = "quest", race = "NightElf"}, -- Starshards (1)
        {id = 2652, aquire = "quest", race = "Scourge"}, -- Touch of Weakness (1)
        {id = 9035, aquire = "quest", race = "Troll"}, -- Hex of Weakness (1)
    },
    [12] = {
        {id = 588, cost = 800}, -- Inner Fire (1)
        {id = 592, cost = 800}, -- Power Word: Shield (2)
        {id = 1244, cost = 800}, -- Power Word: Fortitude (2)
    },
    [14] = {
        {id = 598, cost = 1200}, -- Smite (3)
        {id = 528, cost = 1200}, -- Cure Disease
        {id = 6074, cost = 1200}, -- Renew (2)
        {id = 8122, cost = 1200}, -- Psychic Scream (1)
    },
    [16] = {
        {id = 2054, cost = 1600}, -- Heal (1)
        {id = 8102, cost = 1600}, -- Mind Blast (2)
    },
    [18] = {
        {id = 19236, cost = 100, races = {"Human", "Dwarf"}}, -- Desperate Prayer (2)
        {id = 19296, cost = 100, race = "NightElf"}, -- Starshards (2)
        {id = 970, cost = 2000}, -- Shadow Word: Pain (3)
        {id = 600, cost = 2000}, -- Power Word: Shield (3)
        {id = 527, cost = 2000}, -- Dispel Magic (1)
    },
    [20] = {
        {id = 6075, cost = 3000}, -- Renew (3)
        {id = 2061, cost = 3000}, -- Flash Heal (1)
        {id = 14914, cost = 3000}, -- Holy Fire (1)
        {id = 453, cost = 3000}, -- Mind Soothe (1)
        {id = 2944, aquire = "quest", race = "Scourge"}, -- Devouring Plague (1)
        {id = 19261, race = "Scourge"}, -- Touch of Weakness (2)
        {id = 19281, race = "Troll"}, -- Hex of Weakness (2)
        {id = 9484, cost = 3000}, -- Shackle Undead (1)
        {id = 7128, cost = 3000}, -- Inner Fire (2)
        {id = 6346, aquire = "quest", race = "Dwarf"}, -- Fear Ward
        {id = 13896, aquire = "quest", race = "Human"}, -- Feedback (1)
        {id = 2651, aquire = "quest", race = "NightElf"}, -- Elune's Grace (1)
        {id = 18137, aquire = "quest", race = "Troll"}, -- Shadowguard (1)
        {id = 9578, cost = 3000}, -- Fade (2)
    },
    [22] = {
        {id = 2055, cost = 4000}, -- Heal (2)
        {id = 984, cost = 4000}, -- Smite (4)
        {id = 2010, cost = 4000}, -- Resurrection (2)
        {id = 2096, cost = 4000}, -- Mind Vision (1)
        {id = 8103, cost = 4000}, -- Mind Blast (3)
    },
    [24] = {
        {id = 15262, cost = 5000}, -- Holy Fire (2)
        {id = 3747, cost = 5000}, -- Power Word: Shield (4)
        {id = 1245, cost = 5000}, -- Power Word: Fortitude (3)
        {id = 8129, cost = 5000}, -- Mana Burn (1)
    },
    [26] = {
        {id = 6076, cost = 6000}, -- Renew (4)
        {id = 9472, cost = 6000}, -- Flash Heal (2)
        {id = 19238, cost = 300, races = {"Human", "Dwarf"}}, -- Desperate Prayer (3)
        {id = 19299, cost = 300, race = "NightElf"}, -- Starshards (3)
        {id = 992, cost = 6000}, -- Shadow Word: Pain (4)
    },
    [28] = {
        {id = 6063, cost = 8000}, -- Heal (3)
        {id = 15430, cost = 400, talentReq = {2,6}}, -- Holy Nova (2)
        {id = 8104, cost = 8000}, -- Mind Blast (4)
        {id = 8124, cost = 8000}, -- Psychic Scream (2)
        {id = 17311, cost = 400, talentReq = {3,8}}, -- Mind Flay (2)
        {id = 19276, cost = 400, race = "Scourge"}, -- Devouring Plague (2)
        {id = 19308, cost = 400, race = "Troll"}, -- Shadowguard (2)
    },
    [30] = {
        {id = 1004, cost = 10000}, -- Smite (5)
        {id = 596, cost = 10000}, -- Prayer of Healing (1)
        {id = 15263, cost = 10000}, -- Holy Fire (3)
        {id = 976, cost = 10000}, -- Shadow Protection (1)
        {id = 605, cost = 10000}, -- Mind Control (1)
        {id = 602, cost = 10000}, -- Inner Fire (3)
        {id = 6065, cost = 10000}, -- Power Word: Shield (5)
        {id = 19262, cost = 500, race = "Scourge"}, -- Touch of Weakness (3)
        {id = 19282, cost = 500, race = "Troll"}, -- Hex of Weakness (3)
        {id = 19271, cost = 450, race = "Human"}, -- Feedback (2)
        {id = 19289, cost = 500, race = "NightElf"}, -- Elune's Grace (2)
        {id = 9579, cost = 10000}, -- Fade (3)
    },
    [32] = {
        {id = 552, cost = 11000}, -- Abolish Disease
        {id = 6077, cost = 11000}, -- Renew (5)
        {id = 9473, cost = 11000}, -- Flash Heal (3)
        {id = 8131, cost = 11000}, -- Mana Burn (2)
    },
    [34] = {
        {id = 6064, cost = 12000}, -- Heal (4)
        {id = 10880, cost = 12000}, -- Resurrection (3)
        {id = 19240, cost = 600, races = {"Human", "Dwarf"}}, -- Desperate Prayer (4)
        {id = 19302, cost = 600, race = "NightElf"}, -- Starshards (4)
        {id = 2767, cost = 12000}, -- Shadow Word: Pain (5)
        {id = 8105, cost = 12000}, -- Mind Blast (5)
        {id = 1706, cost = 12000}, -- Levitate
    },
    [36] = {
        {id = 15264, cost = 14000}, -- Holy Fire (4)
        {id = 15431, cost = 700, talentReq = {2,6}}, -- Holy Nova (3)
        {id = 17312, cost = 700, talentReq = {3,8}}, -- Mind Flay (3)
        {id = 19277, cost = 700, race = "Scourge"}, -- Devouring Plague (3)
        {id = 6066, cost = 14000}, -- Power Word: Shield (6)
        {id = 2791, cost = 14000}, -- Power Word: Fortitude (4)
        {id = 988, cost = 14000}, -- Dispel Magic (2)
        {id = 19309, cost = 700, race = "Troll"}, -- Shadowguard (3)
        {id = 8192, cost = 14000}, -- Mind Soothe (2)
    },
    [38] = {
        {id = 6060, cost = 16000}, -- Smite (6)
        {id = 6078, cost = 16000}, -- Renew (6)
        {id = 9474, cost = 16000}, -- Flash Heal (4)
    },
    [40] = {
        {id = 2060, cost = 18000}, -- Greater Heal (1)
        {id = 996, cost = 18000}, -- Prayer of Healing (2)
        {id = 8106, cost = 18000}, -- Mind Blast (6)
        {id = 9485, cost = 18000}, -- Shackle Undead (2)
        {id = 10874, cost = 18000}, -- Mana Burn (3)
        {id = 9592, cost = 18000}, -- Fade (4)
        {id = 1006, cost = 18000}, -- Inner Fire (4)
        {id = 14818, cost = 900, talentReq = {1,13}}, -- Divine Spirit (2)
        {id = 19264, cost = 900, race = "Scourge"}, -- Touch of Weakness (4)
        {id = 19283, cost = 900, race = "Troll"}, -- Hex of Weakness (4)
        {id = 19273, cost = 810, race = "Human"}, -- Feedback (3)
        {id = 19291, cost = 900, race = "NightElf"}, -- Elune's Grace (3)
    },
    [42] = {
        {id = 15265, cost = 22000}, -- Holy Fire (5)
        {id = 19241, cost = 1100, races = {"Human", "Dwarf"}}, -- Desperate Prayer (5)
        {id = 19303, cost = 1100, race = "NightElf"}, -- Starshards (5)
        {id = 10957, cost = 22000}, -- Shadow Protection (2)
        {id = 10888, cost = 22000}, -- Psychic Scream (3)
        {id = 10892, cost = 22000}, -- Shadow Word: Pain (6)
        {id = 10898, cost = 22000}, -- Power Word: Shield (7)
    },
    [44] = {
        {id = 10915, cost = 24000}, -- Flash Heal (5)
        {id = 10927, cost = 24000}, -- Renew (7)
        {id = 10911, cost = 24000}, -- Mind Control (2)
        {id = 27799, cost = 1200, talentReq = {2,6}}, -- Holy Nova (4)
        {id = 10909, cost = 24000}, -- Mind Vision (2)
        {id = 17313, cost = 1200, talentReq = {3,8}}, -- Mind Flay (4)
        {id = 19278, cost = 1200, race = "Scourge"}, -- Devouring Plague (4)
        {id = 19310, cost = 1200, race = "Troll"}, -- Shadowguard (4)
    },
    [46] = {
        {id = 10963, cost = 26000}, -- Greater Heal (2)
        {id = 10933, cost = 26000}, -- Smite (7)
        {id = 10881, cost = 26000}, -- Resurrection (4)
        {id = 10945, cost = 26000}, -- Mind Blast (7)
    },
    [48] = {
        {id = 15266, cost = 28000}, -- Holy Fire (6)
        {id = 10899, cost = 28000}, -- Power Word: Shield (8)
        {id = 10937, cost = 28000}, -- Power Word: Fortitude (5)
        {id = 10875, cost = 28000}, -- Mana Burn (4)
        {id = 21562, aquire = "book"}, -- Prayer of Fortitude (1)
    },
    [50] = {
        {id = 10916, cost = 30000}, -- Flash Heal (6)
        {id = 10928, cost = 30000}, -- Renew (8)
        {id = 10941, cost = 30000}, -- Fade (5)
        {id = 10960, cost = 30000}, -- Prayer of Healing (3)
        {id = 19242, cost = 1500, races = {"Human", "Dwarf"}}, -- Desperate Prayer (6)
        {id = 19304, cost = 1500, race = "NightElf"}, -- Starshards (6)
        {id = 27870, cost = 1200, talentReq = {2,16}}, -- Lightwell (2)
        {id = 10893, cost = 30000}, -- Shadow Word: Pain (7)
        {id = 10951, cost = 30000}, -- Inner Fire (5)
        {id = 14819, cost = 1500, talentReq = {1,13}}, -- Divine Spirit (3)
        {id = 19265, cost = 1500, race = "Scourge"}, -- Touch of Weakness (5)
        {id = 19284, cost = 1500, race = "Troll"}, -- Hex of Weakness (5)
        {id = 19274, cost = 1350, race = "Human"}, -- Feedback (4)
        {id = 19292, cost = 1500, race = "NightElf"}, -- Elune's Grace (4)
    },
    [52] = {
        {id = 10964, cost = 38000}, -- Greater Heal (3)
        {id = 27800, cost = 1900, talentReq = {2,6}}, -- Holy Nova (5)
        {id = 10946, cost = 38000}, -- Mind Blast (8)
        {id = 17314, cost = 1900, talentReq = {3,8}}, -- Mind Flay (5)
        {id = 10953, cost = 38000}, -- Mind Soothe (3)
        {id = 19279, cost = 1900, race = "Scourge"}, -- Devouring Plague (5)
        {id = 19311, cost = 1900, race = "Troll"}, -- Shadowguard (5)
    },
    [54] = {
        {id = 10934, cost = 40000}, -- Smite (8)
        {id = 15267, cost = 40000}, -- Holy Fire (7)
        {id = 10900, cost = 40000}, -- Power Word: Shield (9)
    },
    [56] = {
        {id = 10917, cost = 42000}, -- Flash Heal (7)
        {id = 10929, cost = 42000}, -- Renew (9)
        {id = 10876, cost = 42000}, -- Mana Burn (5)
        {id = 10958, cost = 42000}, -- Shadow Protection (3)
        {id = 10890, cost = 42000}, -- Psychic Scream (4)
        {id = 27683, aquire = "book"}, -- Prayer of Shadow Protection (1)
    },
    [58] = {
        {id = 10965, cost = 44000}, -- Greater Heal (4)
        {id = 19243, cost = 2200, races = {"Human", "Dwarf"}}, -- Desperate Prayer (7)
        {id = 19305, cost = 2200, race = "NightElf"}, -- Starshards (7)
        {id = 20770, cost = 44000}, -- Resurrection (5)
        {id = 10894, cost = 44000}, -- Shadow Word: Pain (8)
        {id = 10947, cost = 44000}, -- Mind Blast (9)
        {id = 10912, cost = 44000}, -- Mind Control (3)
    },
    [60] = {
        {id = 15261, cost = 46000}, -- Holy Fire (8)
        {id = 10942, cost = 46000}, -- Fade (6)
        {id = 25314, aquire = "book", source = "AQ20", from = "BOSSES", phase = 5}, -- Greater Heal (5)
        {id = 25315, aquire = "book", source = "AQ20", from = "BOSSES", phase = 5}, -- Renew (10)
        {id = 10961, cost = 46000}, -- Prayer of Healing (4)
        {id = 25316, aquire = "book", source = "AQ20", from = "BOSSES", phase = 5}, -- Prayer of Healing (5)
        {id = 27801, cost = 2300, talentReq = {2,6}}, -- Holy Nova (6)
        {id = 27871, cost = 1500, talentReq = {2,16}}, -- Lightwell (3)
        {id = 18807, cost = 2300, talentReq = {3,8}}, -- Mind Flay (6)
        {id = 19280, cost = 2300, race = "Scourge"}, -- Devouring Plague (6)
        {id = 10955, cost = 41400}, -- Shackle Undead (3)
        {id = 10952, cost = 46000}, -- Inner Fire (6)
        {id = 10901, cost = 46000}, -- Power Word: Shield (10)
        {id = 10938, cost = 46000}, -- Power Word: Fortitude (6)
        {id = 21564, aquire = "book"}, -- Prayer of Fortitude (2)
        {id = 27681, cost = 2300, talentReq = {1,13}}, -- Prayer of Spirit (1)
        {id = 27841, cost = 2300, talentReq = {1,13}}, -- Divine Spirit (4)
        {id = 19266, cost = 2070, race = "Scourge"}, -- Touch of Weakness (6)
        {id = 19285, cost = 2300, race = "Troll"}, -- Hex of Weakness (6)
        {id = 19275, cost = 2070, race = "Human"}, -- Feedback (5)
        {id = 19293, cost = 2070, race = "NightElf"}, -- Elune's Grace (5)
        {id = 19312, cost = 2300, race = "Troll"}, -- Shadowguard (6)
    }
}