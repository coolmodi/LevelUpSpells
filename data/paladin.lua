local _,c = UnitClass("player")
if c ~= "PALADIN" then return end

local _, _addon = ...

_addon.spells = {
    [1] = {
        {id = 465, cost = 10}, -- Devotion Aura (1)
    },
    [4] = {
        {id = 19740, cost = 100}, -- Blessing of Might (1)
        {id = 20271, cost = 100}, -- Judgement
    },
    [6] = {
        {id = 498, cost = 100}, -- Divine Protection (1)
        {id = 639, cost = 100}, -- Holy Light (2)
        {id = 21082, cost = 100}, -- Seal of the Crusader (1)
    },
    [8] = {
        {id = 853, cost = 100}, -- Hammer of Justice (1)
        {id = 1152, cost = 100}, -- Purify
        {id = 3127, cost = 100}, -- Parry (Passive)
    },
    [10] = {
        {id = 10290, cost = 300}, -- Devotion Aura (2)
        {id = 1022, cost = 300}, -- Blessing of Protection (1)
        {id = 633, cost = 300}, -- Lay on Hands (1)
        {id = 20287, cost = 300}, -- Seal of Righteousness (2)
    },
    [12] = {
        {id = 19834, cost = 1000}, -- Blessing of Might (2)
        {id = 7328, aquire = "quest"}, -- Redemption (1)
        {id = 20162, cost = 1000}, -- Seal of the Crusader (2)
    },
    [14] = {
        {id = 647, cost = 2000}, -- Holy Light (3)
        {id = 19742, cost = 2000}, -- Blessing of Wisdom (1)
    },
    [16] = {
        {id = 7294, cost = 3000}, -- Retribution Aura (1)
        {id = 25780, cost = 3000}, -- Righteous Fury
    },
    [18] = {
        {id = 1044, cost = 3500}, -- Blessing of Freedom
        {id = 5573, cost = 3500}, -- Divine Protection (2)
        {id = 20288, cost = 3500}, -- Seal of Righteousness (3)
    },
    [20] = {
        {id = 643, cost = 4000}, -- Devotion Aura (3)
        {id = 879, cost = 4000}, -- Exorcism (1)
        {id = 5502, aquire = "quest"}, -- Sense Undead
        {id = 19750, cost = 4000}, -- Flash of Light (1)
    },
    [22] = {
        {id = 19835, cost = 4000}, -- Blessing of Might (3)
        {id = 20164, cost = 4000}, -- Seal of Justice
        {id = 1026, cost = 4000}, -- Holy Light (4)
        {id = 19746, cost = 4000}, -- Concentration Aura
        {id = 20305, cost = 4000}, -- Seal of the Crusader (3)
    },
    [24] = {
        {id = 5599, cost = 5000}, -- Blessing of Protection (2)
        {id = 5588, cost = 5000}, -- Hammer of Justice (2)
        {id = 19850, cost = 5000}, -- Blessing of Wisdom (2)
        {id = 10322, cost = 5000}, -- Redemption (2)
        {id = 2878, cost = 5000}, -- Turn Undead (1)
    },
    [26] = {
        {id = 10298, cost = 6000}, -- Retribution Aura (2)
        {id = 1038, cost = 6000}, -- Blessing of Salvation
        {id = 19939, cost = 6000}, -- Flash of Light (2)
        {id = 20289, cost = 6000}, -- Seal of Righteousness (4)
    },
    [28] = {
        {id = 19876, cost = 9000}, -- Shadow Resistance Aura (1)
        {id = 5614, cost = 9000}, -- Exorcism (2)
    },
    [30] = {
        {id = 10291, cost = 11000}, -- Devotion Aura (4)
        {id = 19752, cost = 11000}, -- Divine Intervention
        {id = 2800, cost = 11000}, -- Lay on Hands (2)
        {id = 20165, cost = 11000}, -- Seal of Light (1)
        {id = 20116, cost = 200, talentReq = {1,5}}, -- Consecration (2)
        {id = 1042, cost = 11000}, -- Holy Light (5)
        {id = 20915, cost = 200, talentReq = {3, 8}}, -- Seal of Command (2)
    },
    [32] = {
        {id = 19836, cost = 12000}, -- Blessing of Might (4)
        {id = 19888, cost = 12000}, -- Frost Resistance Aura (1)
        {id = 20306, cost = 12000}, -- Seal of the Crusader (4)
    },
    [34] = {
        {id = 642, cost = 13000}, -- Divine Shield (1)
        {id = 19852, cost = 13000}, -- Blessing of Wisdom (3)
        {id = 19940, cost = 13000}, -- Flash of Light (3)
        {id = 20290, cost = 13000}, -- Seal of Righteousness (5)
    },
    [36] = {
        {id = 10299, cost = 14000}, -- Retribution Aura (3)
        {id = 19891, cost = 14000}, -- Fire Resistance Aura (1)
        {id = 5615, cost = 14000}, -- Exorcism (3)
        {id = 10324, cost = 14000}, -- Redemption (3)
    },
    [38] = {
        {id = 10278, cost = 16000}, -- Blessing of Protection (3)
        {id = 3472, cost = 16000}, -- Holy Light (6)
        {id = 20166, cost = 16000}, -- Seal of Wisdom (1)
        {id = 5627, cost = 16000}, -- Turn Undead (2)
    },
    [40] = {
        {id = 1032, cost = 20000}, -- Devotion Aura (5)
        {id = 19895, cost = 20000}, -- Shadow Resistance Aura (2)
        {id = 5589, cost = 20000}, -- Hammer of Justice (3)
        {id = 13819, aquire = "quest"}, -- Summon Warhorse (Summon)
        {id = 20922, cost = 1000, talentReq = {1,5}}, -- Consecration (3)
        {id = 19977, cost = 20000}, -- Blessing of Light (1)
        {id = 750, cost = 20000}, -- Plate Mail
        {id = 20347, cost = 20000}, -- Seal of Light (2)
        {id = 20918, cost = 1000, talentReq = {3, 8}}, -- Seal of Command (3)
        {id = 20912, cost = 900, talentReq = {2, 12}}, -- Blessing of Sanctuary (2)
    },
    [42] = {
        {id = 19837, cost = 21000}, -- Blessing of Might (5)
        {id = 4987, cost = 21000}, -- Cleanse
        {id = 19941, cost = 21000}, -- Flash of Light (4)
        {id = 20291, cost = 21000}, -- Seal of Righteousness (6)
        {id = 20307, cost = 21000}, -- Seal of the Crusader (5)
    },
    [44] = {
        {id = 24275, cost = 22000}, -- Hammer of Wrath (1)
        {id = 19897, cost = 22000}, -- Frost Resistance Aura (2)
        {id = 10312, cost = 22000}, -- Exorcism (4)
        {id = 19853, cost = 22000}, -- Blessing of Wisdom (4)
    },
    [46] = {
        {id = 10300, cost = 24000}, -- Retribution Aura (4)
        {id = 6940, cost = 24000}, -- Blessing of Sacrifice (1)
        {id = 10328, cost = 24000}, -- Holy Light (7)
    },
    [48] = {
        {id = 19899, cost = 26000}, -- Fire Resistance Aura (2)
        {id = 20772, cost = 26000}, -- Redemption (4)
        {id = 20929, cost = 1170, talentReq = {1,14}}, -- Holy Shock (2)
        {id = 20356, cost = 26000}, -- Seal of Wisdom (2)
    },
    [50] = {
        {id = 10292, cost = 28000}, -- Devotion Aura (6)
        {id = 10310, cost = 28000}, -- Lay on Hands (3)
        {id = 2812, cost = 28000}, -- Holy Wrath (1)
        {id = 19942, cost = 28000}, -- Flash of Light (5)
        {id = 20923, cost = 1400, talentReq = {1,5}}, -- Consecration (4)
        {id = 20348, cost = 28000}, -- Seal of Light (3)
        {id = 20927, cost = 1260, talentReq = {2, 15}}, -- Holy Shield (2)
        {id = 1020, cost = 28000}, -- Divine Shield (2)
        {id = 20919, cost = 1260, talentReq = {3, 8}}, -- Seal of Command (4)
        {id = 20292, cost = 28000}, -- Seal of Righteousness (7)
        {id = 20913, cost = 1260, talentReq = {2, 12}}, -- Blessing of Sanctuary (3)
        {id = 19978, cost = 28000}, -- Blessing of Light (2)
    },
    [52] = {
        {id = 19838, cost = 34000}, -- Blessing of Might (6)
        {id = 25782, cost = 46000}, -- Greater Blessing of Might (1)
        {id = 24274, cost = 34000}, -- Hammer of Wrath (2)
        {id = 19896, cost = 34000}, -- Shadow Resistance Aura (3)
        {id = 10313, cost = 34000}, -- Exorcism (5)
        {id = 10326, cost = 34000}, -- Turn Undead (3)
        {id = 20308, cost = 34000}, -- Seal of the Crusader (6)
    },
    [54] = {
        {id = 10308, cost = 40000}, -- Hammer of Justice (4)
        {id = 10329, cost = 40000}, -- Holy Light (8)
        {id = 19854, cost = 40000}, -- Blessing of Wisdom (5)
        {id = 25894, cost = 40000}, -- Greater Blessing of Wisdom (1)
        {id = 20729, cost = 40000}, -- Blessing of Sacrifice (2)
    },
    [56] = {
        {id = 10301, cost = 42000}, -- Retribution Aura (5)
        {id = 19898, cost = 42000}, -- Frost Resistance Aura (3)
        {id = 20930, cost = 2100, talentReq = {1,14}}, -- Holy Shock (3)
    },
    [58] = {
        {id = 19943, cost = 44000}, -- Flash of Light (6)
        {id = 20357, cost = 44000}, -- Seal of Wisdom (3)
        {id = 20293, cost = 44000}, -- Seal of Righteousness (8)
    },
    [60] = {
        {id = 25291, aquire = "book", source = "AQ20", from = "BOSSES", phase = 5}, -- Blessing of Might (7)
        {id = 25916, cost = 41400, requires = 25291}, -- Greater Blessing of Might (2)
        {id = 24239, cost = 46000}, -- Hammer of Wrath (3)
        {id = 10293, cost = 46000}, -- Devotion Aura (7)
        {id = 19900, cost = 46000}, -- Fire Resistance Aura (3)
        {id = 20914, cost = 2070, talentReq = {2, 12}}, -- Blessing of Sanctuary (4)
        {id = 25899, cost = 2070, talentReq = {2, 12}}, -- Greater Blessing of Sanctuary (1)
        {id = 25898, cost = 2070, talentReq = {2,6}}, -- Greater Blessing of Kings
        {id = 10314, cost = 46000}, -- Exorcism (6)
        {id = 10318, cost = 46000}, -- Holy Wrath (2)
        {id = 20773, cost = 46000}, -- Redemption (5)
        {id = 25292, aquire = "book", source = "AQ20", from = "BOSSES", phase = 5}, -- Holy Light (9)
        {id = 25290, aquire = "book", source = "AQ20", from = "BOSSES", phase = 5}, -- Blessing of Wisdom (6)
        {id = 25918, requires = 25290}, -- Greater Blessing of Wisdom (2)
        {id = 20924, cost = 2300, talentReq = {1,5}}, -- Consecration (5)
        {id = 23214, aquire = "quest"}, -- Summon Charger (Summon)
        {id = 25890, cost = 46000}, -- Greater Blessing of Light (1)
        {id = 25895, cost = 46000}, -- Greater Blessing of Salvation
        {id = 20349, cost = 46000}, -- Seal of Light (4)
        {id = 20920, cost = 2070, talentReq = {3, 8}}, -- Seal of Command (5)
        {id = 20928, cost = 2070, talentReq = {2, 15}}, -- Holy Shield (3)
        {id = 19979, cost = 46000}, -- Blessing of Light (3)
    }
}