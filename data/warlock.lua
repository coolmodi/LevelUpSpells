local _,c = UnitClass("player")
if c ~= "WARLOCK" then return end

local _, _addon = ...

_addon.spells = {
    [1] = {
        {id = 688, aquire = "quest"}, -- Summon Imp (Summon)
        {id = 348, cost = 10}, -- Immolate (1)
    },
    [4] = {
        {id = 702, cost = 100}, -- Curse of Weakness (1)
        {id = 172, cost = 100}, -- Corruption (1)
    },
    [6] = {
        {id = 1454, cost = 100}, -- Life Tap (1)
        {id = 695, cost = 100}, -- Shadow Bolt (2)
    },
    [8] = {
        {id = 980, cost = 200}, -- Curse of Agony (1)
        {id = 5782, cost = 200}, -- Fear (1)
    },
    [10] = {
        {id = 696, cost = 300}, -- Demon Skin (2)
        {id = 697, aquire = "quest"}, -- Summon Voidwalker (Summon)
        {id = 6201, cost = 300}, -- Create Healthstone (Minor)
        {id = 1120, cost = 300}, -- Drain Soul (1)
        {id = 707, cost = 300}, -- Immolate (2)
    },
    [12] = {
        {id = 755, cost = 600}, -- Health Funnel (1)
        {id = 1108, cost = 600}, -- Curse of Weakness (2)
        {id = 705, cost = 600}, -- Shadow Bolt (3)
    },
    [14] = {
        {id = 6222, cost = 900}, -- Corruption (2)
        {id = 689, cost = 900}, -- Drain Life (1)
        {id = 704, cost = 900}, -- Curse of Recklessness (1)
    },
    [16] = {
        {id = 5697, cost = 1200}, -- Unending Breath
        {id = 1455, cost = 1200}, -- Life Tap (2)
    },
    [18] = {
        {id = 693, cost = 1500}, -- Create Soulstone (Minor)
        {id = 5676, cost = 1500}, -- Searing Pain (1)
        {id = 1014, cost = 1500}, -- Curse of Agony (2)
    },
    [20] = {
        {id = 706, cost = 2000}, -- Demon Armor (1)
        {id = 712, aquire = "quest"}, -- Summon Succubus (Summon)
        {id = 3698, cost = 2000}, -- Health Funnel (2)
        {id = 698, cost = 2000}, -- Ritual of Summoning
        {id = 1088, cost = 2000}, -- Shadow Bolt (4)
        {id = 1094, cost = 2000}, -- Immolate (3)
        {id = 5740, cost = 2000}, -- Rain of Fire (1)
    },
    [22] = {
        {id = 6202, cost = 2500}, -- Create Healthstone (Lesser)
        {id = 126, cost = 2500}, -- Eye of Kilrogg (Summon)
        {id = 6205, cost = 2500}, -- Curse of Weakness (3)
        {id = 699, cost = 2500}, -- Drain Life (2)
    },
    [24] = {
        {id = 5500, cost = 3000}, -- Sense Demons
        {id = 6223, cost = 3000}, -- Corruption (3)
        {id = 5138, cost = 3000}, -- Drain Mana (1)
        {id = 8288, cost = 3000}, -- Drain Soul (2)
        {id = 18867, cost = 150, talentReq = {3, 8}}, -- Shadowburn (2)
    },
    [26] = {
        {id = 132, cost = 4000}, -- Detect Lesser Invisibility
        {id = 1714, cost = 4000}, -- Curse of Tongues (1)
        {id = 1456, cost = 4000}, -- Life Tap (3)
        {id = 17919, cost = 4000}, -- Searing Pain (2)
    },
    [28] = {
        {id = 3699, cost = 5000}, -- Health Funnel (3)
        {id = 6366, cost = 5000}, -- Create Firestone (Lesser)
        {id = 710, cost = 5000}, -- Banish (1)
        {id = 6217, cost = 5000}, -- Curse of Agony (3)
        {id = 1106, cost = 5000}, -- Shadow Bolt (5)
        {id = 7658, cost = 5000}, -- Curse of Recklessness (2)
    },
    [30] = {
        {id = 1098, cost = 6000}, -- Enslave Demon (1)
        {id = 1086, cost = 6000}, -- Demon Armor (2)
        {id = 691, aquire = "quest"}, -- Summon Felhunter (Summon)
        {id = 20752, cost = 6000}, -- Create Soulstone (Lesser)
        {id = 709, cost = 6000}, -- Drain Life (3)
        {id = 2941, cost = 6000}, -- Immolate (4)
        {id = 1949, cost = 6000}, -- Hellfire (1)
    },
    [32] = {
        {id = 6229, cost = 7000}, -- Shadow Ward (1)
        {id = 1490, cost = 7000}, -- Curse of the Elements (1)
        {id = 7646, cost = 7000}, -- Curse of Weakness (4)
        {id = 6213, cost = 7000}, -- Fear (2)
        {id = 18868, cost = 350, talentReq = {3, 8}}, -- Shadowburn (3)
    },
    [34] = {
        {id = 5699, cost = 8000}, -- Create Healthstone
        {id = 7648, cost = 8000}, -- Corruption (4)
        {id = 6219, cost = 8000}, -- Rain of Fire (2)
        {id = 17920, cost = 8000}, -- Searing Pain (3)
        {id = 6226, cost = 8000}, -- Drain Mana (2)
    },
    [36] = {
        {id = 3700, cost = 9000}, -- Health Funnel (4)
        {id = 2362, cost = 9000}, -- Create Spellstone
        {id = 17951, cost = 9000}, -- Create Firestone
        {id = 11687, cost = 9000}, -- Life Tap (4)
        {id = 7641, cost = 9000}, -- Shadow Bolt (6)
    },
    [38] = {
        {id = 11711, cost = 10000}, -- Curse of Agony (4)
        {id = 7651, cost = 10000}, -- Drain Life (4)
        {id = 8289, cost = 10000}, -- Drain Soul (3)
        {id = 18879, cost = 500, talentReq = {1, 13}}, -- Siphon Life (2)
        {id = 2970, cost = 10000}, -- Detect Invisibility
    },
    [40] = {
        {id = 11733, cost = 11000}, -- Demon Armor (3)
        {id = 5784, aquire = "quest"}, -- Summon Felsteed (Summon)
        {id = 20755, cost = 11000}, -- Create Soulstone
        {id = 5484, cost = 11000}, -- Howl of Terror (1)
        {id = 11665, cost = 11000}, -- Immolate (5)
        {id = 18869, cost = 550, talentReq = {3, 8}}, -- Shadowburn (4)
    },
    [42] = {
        {id = 11739, cost = 11000}, -- Shadow Ward (2)
        {id = 11707, cost = 11000}, -- Curse of Weakness (5)
        {id = 6789, cost = 11000}, -- Death Coil (1)
        {id = 11683, cost = 9900}, -- Hellfire (2)
        {id = 17921, cost = 11000}, -- Searing Pain (4)
        {id = 7659, cost = 11000}, -- Curse of Recklessness (3)
    },
    [44] = {
        {id = 11725, cost = 12000}, -- Enslave Demon (2)
        {id = 11693, cost = 12000}, -- Health Funnel (5)
        {id = 11671, cost = 12000}, -- Corruption (5)
        {id = 11659, cost = 12000}, -- Shadow Bolt (7)
        {id = 11703, cost = 12000}, -- Drain Mana (3)
        {id = 17862, cost = 12000}, -- Curse of Shadow (1)
    },
    [46] = {
        {id = 11729, cost = 13000}, -- Create Healthstone (Greater)
        {id = 17952, cost = 13000}, -- Create Firestone (Greater)
        {id = 11721, cost = 13000}, -- Curse of the Elements (2)
        {id = 11699, cost = 13000}, -- Drain Life (5)
        {id = 11688, cost = 13000}, -- Life Tap (5)
        {id = 11677, cost = 13000}, -- Rain of Fire (3)
    },
    [48] = {
        {id = 17727, cost = 14000}, -- Create Spellstone (Greater)
        {id = 18647, cost = 13000}, -- Banish (2)
        {id = 11712, cost = 14000}, -- Curse of Agony (5)
        {id = 6353, cost = 14000}, -- Soul Fire (1)
        {id = 18930, cost = 700, talentReq = {3, 16}}, -- Conflagrate (2)
        {id = 18870, cost = 700, talentReq = {3, 8}}, -- Shadowburn (5)
        {id = 18880, cost = 700, talentReq = {1, 13}}, -- Siphon Life (3)
    },
    [50] = {
        {id = 11734, cost = 15000}, -- Demon Armor (4)
        {id = 1122, aquire = "quest"}, -- Inferno (Summon)
        {id = 20756, cost = 15000}, -- Create Soulstone (Greater)
        {id = 11719, cost = 15000}, -- Curse of Tongues (2)
        {id = 17925, cost = 15000}, -- Death Coil (2)
        {id = 18937, cost = 750, talentReq = {1, 17}}, -- Dark Pact (2)
        {id = 11667, cost = 15000}, -- Immolate (6)
        {id = 17922, cost = 15000}, -- Searing Pain (5)
        {id = 11743, cost = 15000}, -- Detect Greater Invisibility
    },
    [52] = {
        {id = 11694, cost = 18000}, -- Health Funnel (6)
        {id = 11740, cost = 18000}, -- Shadow Ward (3)
        {id = 11708, cost = 18000}, -- Curse of Weakness (6)
        {id = 11675, cost = 18000}, -- Drain Soul (4)
        {id = 11660, cost = 18000}, -- Shadow Bolt (8)
    },
    [54] = {
        {id = 17928, cost = 20000}, -- Howl of Terror (2)
        {id = 11672, cost = 20000}, -- Corruption (6)
        {id = 11700, cost = 20000}, -- Drain Life (6)
        {id = 11684, cost = 18000}, -- Hellfire (3)
        {id = 11704, cost = 20000}, -- Drain Mana (4)
        {id = 18931, cost = 1000, talentReq = {3, 16}}, -- Conflagrate (3)
    },
    [56] = {
        {id = 17953, cost = 22000}, -- Create Firestone (Major)
        {id = 6215, cost = 22000}, -- Fear (3)
        {id = 11689, cost = 22000}, -- Life Tap (6)
        {id = 17924, cost = 22000}, -- Soul Fire (2)
        {id = 18871, cost = 22000, talentReq = {3, 8}}, -- Shadowburn (6)
        {id = 11717, cost = 22000}, -- Curse of Recklessness (4)
    },
    [58] = {
        {id = 11726, cost = 24000}, -- Enslave Demon (3)
        {id = 11730, cost = 24000}, -- Create Healthstone (Major)
        {id = 11713, cost = 24000}, -- Curse of Agony (6)
        {id = 17926, cost = 24000}, -- Death Coil (3)
        {id = 11678, cost = 24000}, -- Rain of Fire (4)
        {id = 17923, cost = 24000}, -- Searing Pain (6)
        {id = 18881, cost = 1200, talentReq = {1, 13}}, -- Siphon Life (4)
    },
    [60] = {
        {id = 18932, cost = 1300}, -- Conflagrate (4)
        {id = 11735, cost = 26000}, -- Demon Armor (5)
        {id = 11695, cost = 26000}, -- Health Funnel (7)
        {id = 17728, cost = 26000}, -- Create Spellstone (Major)
        {id = 18540, aquire = "quest"}, -- Ritual of Doom
        {id = 20757, cost = 26000}, -- Create Soulstone (Major)
        {id = 23161, aquire = "quest"}, -- Summon Dreadsteed (Summon)
        {id = 28610, aquire = "book"}, -- Shadow Ward (4)
        {id = 11722, cost = 26000}, -- Curse of the Elements (3)
        {id = 603, cost = 26000}, -- Curse of Doom
        {id = 18938, cost = 1300, talentReq = {1, 17}}, -- Dark Pact (3)
        {id = 25311, aquire = "book", source = "AQ20", from = "BOSSES", phase = 5}, -- Corruption (7)
        {id = 11661, cost = 26000}, -- Shadow Bolt (9)
        {id = 25307, aquire = "book", source = "AQ20", from = "BOSSES", phase = 5}, -- Shadow Bolt (10)
        {id = 11668, cost = 26000}, -- Immolate (7)
        {id = 25309, aquire = "book", source = "AQ20", from = "BOSSES", phase = 5}, -- Immolate (8)
    }
}