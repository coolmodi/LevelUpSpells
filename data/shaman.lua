local _,c = UnitClass("player")
if c ~= "SHAMAN" then return end

local _, _addon = ...

_addon.spells = {
    [1] = {
        {id = 8017, cost = 10}, -- Rockbiter Weapon (1)
    },
    [4] = {
        {id = 8071, aquire = "quest"}, -- Stoneskin Totem (1)
        {id = 8042, cost = 100}, -- Earth Shock (1)
    },
    [6] = {
        {id = 332, cost = 100}, -- Healing Wave (2)
        {id = 2484, cost = 100}, -- Earthbind Totem
    },
    [8] = {
        {id = 324, cost = 100}, -- Lightning Shield (1)
        {id = 8018, cost = 100}, -- Rockbiter Weapon (2)
        {id = 5730, cost = 100}, -- Stoneclaw Totem (1)
        {id = 8044, cost = 100}, -- Earth Shock (2)
        {id = 529, cost = 100}, -- Lightning Bolt (2)
    },
    [10] = {
        {id = 8024, cost = 400}, -- Flametongue Weapon (1)
        {id = 8075, cost = 400}, -- Strength of Earth Totem (1)
        {id = 8050, cost = 400}, -- Flame Shock (1)
        {id = 3599, aquire = "quest"}, -- Searing Totem (1)
    },
    [12] = {
        {id = 547, cost = 800}, -- Healing Wave (3)
        {id = 2008, cost = 800}, -- Ancestral Spirit (1)
        {id = 370, cost = 800}, -- Purge (1)
        {id = 1535, cost = 800}, -- Fire Nova Totem (1)
    },
    [14] = {
        {id = 8154, cost = 900}, -- Stoneskin Totem (2)
        {id = 8045, cost = 900}, -- Earth Shock (3)
        {id = 548, cost = 900}, -- Lightning Bolt (3)
        {id = 2870, cost = 900}, -- Cure Disease
    },
    [16] = {
        {id = 325, cost = 1800}, -- Lightning Shield (2)
        {id = 8019, cost = 1800}, -- Rockbiter Weapon (3)
        {id = 526, cost = 1800}, -- Cure Poison
    },
    [18] = {
        {id = 8027, cost = 2000}, -- Flametongue Weapon (2)
        {id = 913, cost = 2000}, -- Healing Wave (4)
        {id = 8143, cost = 2000}, -- Tremor Totem
        {id = 6390, cost = 2000}, -- Stoneclaw Totem (2)
        {id = 8052, cost = 2000}, -- Flame Shock (2)
    },
    [20] = {
        {id = 2645, cost = 2200}, -- Ghost Wolf
        {id = 8033, cost = 2200}, -- Frostbrand Weapon (1)
        {id = 8004, cost = 2200}, -- Lesser Healing Wave (1)
        {id = 5394, aquire = "quest"}, -- Healing Stream Totem (1)
        {id = 8056, cost = 2200}, -- Frost Shock (1)
        {id = 915, cost = 2200}, -- Lightning Bolt (4)
        {id = 6363, cost = 2200}, -- Searing Totem (2)
    },
    [22] = {
        {id = 131, cost = 3000}, -- Water Breathing
        {id = 8498, cost = 3000}, -- Fire Nova Totem (2)
        {id = 8166, cost = 3000}, -- Poison Cleansing Totem
    },
    [24] = {
        {id = 905, cost = 3500}, -- Lightning Shield (3)
        {id = 10399, cost = 3500}, -- Rockbiter Weapon (4)
        {id = 8181, cost = 3500}, -- Frost Resistance Totem (1)
        {id = 8155, cost = 3500}, -- Stoneskin Totem (3)
        {id = 8160, cost = 3500}, -- Strength of Earth Totem (2)
        {id = 939, cost = 3500}, -- Healing Wave (5)
        {id = 20609, cost = 3500}, -- Ancestral Spirit (2)
        {id = 8046, cost = 3500}, -- Earth Shock (4)
    },
    [26] = {
        {id = 6196, cost = 4000}, -- Far Sight
        {id = 8030, cost = 4000}, -- Flametongue Weapon (3)
        {id = 5675, cost = 4000}, -- Mana Spring Totem (1)
        {id = 943, cost = 4000}, -- Lightning Bolt (5)
        {id = 8190, cost = 4000}, -- Magma Totem (1)
    },
    [28] = {
        {id = 8227, cost = 6000}, -- Flametongue Totem (1)
        {id = 8038, cost = 6000}, -- Frostbrand Weapon (2)
        {id = 8184, cost = 6000}, -- Fire Resistance Totem (1)
        {id = 546, cost = 6000}, -- Water Walking
        {id = 8008, cost = 6000}, -- Lesser Healing Wave (2)
        {id = 6391, cost = 6000}, -- Stoneclaw Totem (3)
        {id = 8053, cost = 6000}, -- Flame Shock (3)
    },
    [30] = {
        {id = 8232, cost = 7000}, -- Windfury Weapon (1)
        {id = 8177, cost = 7000}, -- Grounding Totem
        {id = 10595, cost = 7000}, -- Nature Resistance Totem (1)
        {id = 556, cost = 7000}, -- Astral Recall
        {id = 6375, cost = 7000}, -- Healing Stream Totem (2)
        {id = 20608, cost = 7000}, -- Reincarnation (Passive)
        {id = 21169, cost = 7000}, -- Reincarnation
        {id = 6364, cost = 7000}, -- Searing Totem (3)
    },
    [32] = {
        {id = 945, cost = 8000}, -- Lightning Shield (4)
        {id = 8512, cost = 8000}, -- Windfury Totem (1)
        {id = 959, cost = 8000}, -- Healing Wave (6)
        {id = 8012, cost = 8000}, -- Purge (2)
        {id = 6041, cost = 8000}, -- Lightning Bolt (6)
        {id = 421, cost = 8000}, -- Chain Lightning (1)
        {id = 8499, cost = 8000}, -- Fire Nova Totem (3)
    },
    [34] = {
        {id = 6495, cost = 9000}, -- Sentry Totem
        {id = 10406, cost = 9000}, -- Stoneskin Totem (4)
        {id = 8058, cost = 9000}, -- Frost Shock (2)
        {id = 16314, cost = 9000}, -- Rockbiter Weapon (5)
    },
    [36] = {
        {id = 16339, cost = 10000}, -- Flametongue Weapon (4)
        {id = 8010, cost = 10000}, -- Lesser Healing Wave (3)
        {id = 10495, cost = 10000}, -- Mana Spring Totem (2)
        {id = 20610, cost = 10000}, -- Ancestral Spirit (3)
        {id = 10412, cost = 10000}, -- Earth Shock (5)
        {id = 10585, cost = 10000}, -- Magma Totem (2)
        {id = 15107, cost = 10000}, -- Windwall Totem (1)
    },
    [38] = {
        {id = 10478, cost = 11000}, -- Frost Resistance Totem (2)
        {id = 8249, cost = 11000}, -- Flametongue Totem (2)
        {id = 8161, cost = 11000}, -- Strength of Earth Totem (3)
        {id = 10456, cost = 11000}, -- Frostbrand Weapon (3)
        {id = 8170, cost = 11000}, -- Disease Cleansing Totem
        {id = 6392, cost = 11000}, -- Stoneclaw Totem (4)
        {id = 10391, cost = 11000}, -- Lightning Bolt (7)
    },
    [40] = {
        {id = 8134, cost = 12000}, -- Lightning Shield (5)
        {id = 8235, cost = 12000}, -- Windfury Weapon (2)
        {id = 8005, cost = 12000}, -- Healing Wave (7)
        {id = 6377, cost = 12000}, -- Healing Stream Totem (3)
        {id = 1064, cost = 12000}, -- Chain Heal (1)
        {id = 10447, cost = 12000}, -- Flame Shock (4)
        {id = 930, cost = 12000}, -- Chain Lightning (2)
        {id = 6365, cost = 12000}, -- Searing Totem (4)
        {id = 8737, cost = 12000}, -- Mail
    },
    [42] = {
        {id = 10537, cost = 16000}, -- Fire Resistance Totem (2)
        {id = 11314, cost = 16000}, -- Fire Nova Totem (4)
        {id = 8835, cost = 16000}, -- Grace of Air Totem (1)
        {id = 10613, cost = 16000}, -- Windfury Totem (2)
    },
    [44] = {
        {id = 10600, cost = 18000}, -- Nature Resistance Totem (2)
        {id = 10407, cost = 18000}, -- Stoneskin Totem (5)
        {id = 10466, cost = 18000}, -- Lesser Healing Wave (4)
        {id = 10392, cost = 18000}, -- Lightning Bolt (8)
        {id = 16315, cost = 18000}, -- Rockbiter Weapon (6)
    },
    [46] = {
        {id = 16341, cost = 20000}, -- Flametongue Weapon (5)
        {id = 10496, cost = 20000}, -- Mana Spring Totem (3)
        {id = 10622, cost = 20000}, -- Chain Heal (2)
        {id = 10472, cost = 20000}, -- Frost Shock (3)
        {id = 10586, cost = 20000}, -- Magma Totem (3)
        {id = 15111, cost = 20000}, -- Windwall Totem (2)
    },
    [48] = {
        {id = 10431, cost = 22000}, -- Lightning Shield (6)
        {id = 16355, cost = 22000}, -- Frostbrand Weapon (4)
        {id = 10526, cost = 22000}, -- Flametongue Totem (3)
        {id = 10395, cost = 22000}, -- Healing Wave (8)
        {id = 20776, cost = 22000}, -- Ancestral Spirit (4)
        {id = 10413, cost = 22000}, -- Earth Shock (6)
        {id = 10427, cost = 22000}, -- Stoneclaw Totem (5)
        {id = 2860, cost = 22000}, -- Chain Lightning (3)
        {id = 17354, cost = 4400, talentReq = {3,15}}, -- Mana Tide Totem (2)
    },
    [50] = {
        {id = 10486, cost = 24000}, -- Windfury Weapon (3)
        {id = 10462, cost = 24000}, -- Healing Stream Totem (4)
        {id = 15207, cost = 24000}, -- Lightning Bolt (9)
        {id = 10437, cost = 24000}, -- Searing Totem (5)
        {id = 25908, cost = 24000}, -- Tranquil Air Totem
    },
    [52] = {
        {id = 10442, cost = 27000}, -- Strength of Earth Totem (4)
        {id = 10467, cost = 27000}, -- Lesser Healing Wave (5)
        {id = 10448, cost = 27000}, -- Flame Shock (5)
        {id = 11315, cost = 27000}, -- Fire Nova Totem (5)
        {id = 10614, cost = 27000}, -- Windfury Totem (3)
    },
    [54] = {
        {id = 10479, cost = 29000}, -- Frost Resistance Totem (3)
        {id = 10408, cost = 29000}, -- Stoneskin Totem (6)
        {id = 10623, cost = 29000}, -- Chain Heal (3)
        {id = 16316, cost = 29000}, -- Rockbiter Weapon (7)
    },
    [56] = {
        {id = 10432, cost = 30000}, -- Lightning Shield (7)
        {id = 16342, cost = 30000}, -- Flametongue Weapon (6)
        {id = 10396, cost = 30000}, -- Healing Wave (9)
        {id = 10497, cost = 30000}, -- Mana Spring Totem (4)
        {id = 15208, cost = 30000}, -- Lightning Bolt (10)
        {id = 10605, cost = 30000}, -- Chain Lightning (4)
        {id = 10587, cost = 30000}, -- Magma Totem (4)
        {id = 15112, cost = 30000}, -- Windwall Totem (3)
        {id = 10627, cost = 30000}, -- Grace of Air Totem (2)
    },
    [58] = {
        {id = 10538, cost = 32000}, -- Fire Resistance Totem (3)
        {id = 16356, cost = 32000}, -- Frostbrand Weapon (5)
        {id = 16387, cost = 32000}, -- Flametongue Totem (4)
        {id = 10428, cost = 32000}, -- Stoneclaw Totem (6)
        {id = 10473, cost = 32000}, -- Frost Shock (4)
        {id = 17359, cost = 6400, talentReq = {3,15}}, -- Mana Tide Totem (3)
    },
    [60] = {
        {id = 10601, cost = 34000}, -- Nature Resistance Totem (3)
        {id = 16362, cost = 34000}, -- Windfury Weapon (4)
        {id = 25361, aquire = "book", source = "AQ20", from = "BOSSES", phase = 5}, -- Strength of Earth Totem (5)
        {id = 10463, cost = 34000}, -- Healing Stream Totem (5)
        {id = 10468, cost = 34000}, -- Lesser Healing Wave (6)
        {id = 20777, cost = 34000}, -- Ancestral Spirit (5)
        {id = 25357, aquire = "book", source = "AQ20", from = "BOSSES", phase = 5}, -- Healing Wave (10)
        {id = 10414, cost = 34000}, -- Earth Shock (7)
        {id = 10438, cost = 34000}, -- Searing Totem (6)
        {id = 29228, aquire = "book", source = "UBRS", from = "UBRS_PYRO"}, -- Flame Shock (6)
    }
}