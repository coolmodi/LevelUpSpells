local _,c = UnitClass("player")
if c ~= "MAGE" then return end

local _, _addon = ...

_addon.spells = {
    [1] = {
        {id = 1459, cost = 10}, -- Arcane Intellect (1)
    },
    [4] = {
        {id = 116, cost = 100}, -- Frostbolt (1)
        {id = 5504, cost = 100}, -- Conjure Water (1)
    },
    [6] = {
        {id = 143, cost = 100}, -- Fireball (2)
        {id = 2136, cost = 100}, -- Fire Blast (1)
        {id = 587, cost = 100}, -- Conjure Food (1)
    },
    [8] = {
        {id = 205, cost = 200}, -- Frostbolt (2)
        {id = 5143, cost = 200}, -- Arcane Missiles (1)
        {id = 118, cost = 200}, -- Polymorph (1)
    },
    [10] = {
        {id = 122, cost = 400}, -- Frost Nova (1)
        {id = 7300, cost = 400}, -- Frost Armor (2)
        {id = 5505, cost = 400}, -- Conjure Water (2)
    },
    [12] = {
        {id = 145, cost = 600}, -- Fireball (3)
        {id = 604, cost = 600}, -- Dampen Magic (1)
        {id = 130, cost = 600}, -- Slow Fall
        {id = 597, cost = 600}, -- Conjure Food (2)
    },
    [14] = {
        {id = 837, cost = 900}, -- Frostbolt (3)
        {id = 2137, cost = 900}, -- Fire Blast (2)
        {id = 1460, cost = 900}, -- Arcane Intellect (2)
        {id = 1449, cost = 900}, -- Arcane Explosion (1)
    },
    [16] = {
        {id = 2120, cost = 1500}, -- Flamestrike (1)
        {id = 5144, cost = 1500}, -- Arcane Missiles (2)
        {id = 2855, cost = 1500}, -- Detect Magic
    },
    [18] = {
        {id = 3140, cost = 1800}, -- Fireball (4)
        {id = 475, cost = 1800}, -- Remove Lesser Curse
        {id = 1008, cost = 1800}, -- Amplify Magic (1)
    },
    [20] = {
        {id = 10, cost = 2000}, -- Blizzard (1)
        {id = 7301, cost = 2000}, -- Frost Armor (3)
        {id = 7322, cost = 2000}, -- Frostbolt (4)
        {id = 543, cost = 2000}, -- Fire Ward (1)
        {id = 3562, cost = 2000, faction = "Alliance"}, -- Teleport: Ironforge
        {id = 3567, cost = 2000, faction = "Horde"}, -- Teleport: Orgrimmar
        {id = 3561, cost = 2000, faction = "Alliance"}, -- Teleport: Stormwind
        {id = 3563, cost = 2000, faction = "Horde"}, -- Teleport: Undercity
        {id = 1463, cost = 2000}, -- Mana Shield (1)
        {id = 5506, cost = 2000}, -- Conjure Water (3)
        {id = 12824, cost = 2000}, -- Polymorph (2)
        {id = 1953, cost = 2000}, -- Blink
        {id = 12051, cost = 2000}, -- Evocation
    },
    [22] = {
        {id = 6143, cost = 3000}, -- Frost Ward (1)
        {id = 2138, cost = 3000}, -- Fire Blast (3)
        {id = 2948, cost = 3000}, -- Scorch (1)
        {id = 8437, cost = 3000}, -- Arcane Explosion (2)
        {id = 990, cost = 3000}, -- Conjure Food (3)
    },
    [24] = {
        {id = 2121, cost = 4000}, -- Flamestrike (2)
        {id = 8400, cost = 4000}, -- Fireball (5)
        {id = 12505, cost = 200, talentReq = {2,8}}, -- Pyroblast (2)
        {id = 5145, cost = 4000}, -- Arcane Missiles (3)
        {id = 2139, cost = 4000}, -- Counterspell
        {id = 8450, cost = 4000}, -- Dampen Magic (2)
    },
    [26] = {
        {id = 865, cost = 5000}, -- Frost Nova (2)
        {id = 8406, cost = 5000}, -- Frostbolt (5)
        {id = 120, cost = 5000}, -- Cone of Cold (1)
    },
    [28] = {
        {id = 6141, cost = 7000}, -- Blizzard (2)
        {id = 8444, cost = 7000}, -- Scorch (2)
        {id = 1461, cost = 7000}, -- Arcane Intellect (3)
        {id = 8494, cost = 7000}, -- Mana Shield (2)
        {id = 759, cost = 7000}, -- Conjure Mana Agate
    },
    [30] = {
        {id = 7302, cost = 8000}, -- Ice Armor (1)
        {id = 8401, cost = 8000}, -- Fireball (6)
        {id = 8412, cost = 8000}, -- Fire Blast (4)
        {id = 8457, cost = 8000}, -- Fire Ward (2)
        {id = 12522, cost = 400, talentReq = {2,8}}, -- Pyroblast (3)
        {id = 3565, cost = 8000, faction = "Alliance"}, -- Teleport: Darnassus
        {id = 3566, cost = 8000, faction = "Horde"}, -- Teleport: Thunder Bluff
        {id = 8438, cost = 8000}, -- Arcane Explosion (3)
        {id = 8455, cost = 8000}, -- Amplify Magic (2)
        {id = 6127, cost = 8000}, -- Conjure Water (4)
    },
    [32] = {
        {id = 8407, cost = 10000}, -- Frostbolt (6)
        {id = 8461, cost = 10000}, -- Frost Ward (2)
        {id = 8422, cost = 10000}, -- Flamestrike (3)
        {id = 8416, cost = 10000}, -- Arcane Missiles (4)
        {id = 6129, cost = 10000}, -- Conjure Food (4)
    },
    [34] = {
        {id = 8492, cost = 12000}, -- Cone of Cold (2)
        {id = 8445, cost = 12000}, -- Scorch (3)
        {id = 6117, cost = 13000}, -- Mage Armor (1)
    },
    [36] = {
        {id = 8427, cost = 13000}, -- Blizzard (3)
        {id = 8402, cost = 13000}, -- Fireball (7)
        {id = 12523, cost = 650, talentReq = {2,8}}, -- Pyroblast (4)
        {id = 13018, cost = 650, talentReq = {2,14}}, -- Blast Wave (2)
        {id = 8451, cost = 13000}, -- Dampen Magic (3)
        {id = 8495, cost = 13000}, -- Mana Shield (3)
    },
    [38] = {
        {id = 8408, cost = 14000}, -- Frostbolt (7)
        {id = 8413, cost = 14000}, -- Fire Blast (5)
        {id = 8439, cost = 14000}, -- Arcane Explosion (4)
        {id = 3552, cost = 14000}, -- Conjure Mana Jade
    },
    [40] = {
        {id = 6131, cost = 15000}, -- Frost Nova (3)
        {id = 7320, cost = 15000}, -- Ice Armor (2)
        {id = 11426}, -- Ice Barrier (1)
        {id = 8423, cost = 15000}, -- Flamestrike (4)
        {id = 8446, cost = 15000}, -- Scorch (4)
        {id = 8458, cost = 15000}, -- Fire Ward (3)
        {id = 11129}, -- Combustion
        {id = 8417, cost = 15000}, -- Arcane Missiles (5)
        {id = 11416, cost = 13500, faction = "Alliance"}, -- Portal: Ironforge
        {id = 11417, cost = 13500, faction = "Horde"}, -- Portal: Orgrimmar
        {id = 10059, cost = 13500, faction = "Alliance"}, -- Portal: Stormwind
        {id = 11418, cost = 13500, faction = "Horde"}, -- Portal: Undercity
        {id = 10138, cost = 15000}, -- Conjure Water (5)
        {id = 12825, cost = 15000}, -- Polymorph (3)
    },
    [42] = {
        {id = 10159, cost = 18000}, -- Cone of Cold (3)
        {id = 8462, cost = 18000}, -- Frost Ward (3)
        {id = 10148, cost = 18000}, -- Fireball (8)
        {id = 12524, cost = 900, talentReq = {2,8}}, -- Pyroblast (5)
        {id = 10156, cost = 18000}, -- Arcane Intellect (4)
        {id = 10169, cost = 18000}, -- Amplify Magic (3)
        {id = 10144, cost = 18000}, -- Conjure Food (5)
    },
    [44] = {
        {id = 10179, cost = 23000}, -- Frostbolt (8)
        {id = 10185, cost = 23000}, -- Blizzard (4)
        {id = 13019, cost = 1150, talentReq = {2,14}}, -- Blast Wave (3)
        {id = 10191, cost = 23000}, -- Mana Shield (4)
    },
    [46] = {
        {id = 13031, cost = 1170}, -- Ice Barrier (2)
        {id = 10197, cost = 26000}, -- Fire Blast (6)
        {id = 10205, cost = 26000}, -- Scorch (5)
        {id = 10201, cost = 26000}, -- Arcane Explosion (5)
        {id = 22782, cost = 28000}, -- Mage Armor (2)
    },
    [48] = {
        {id = 10149, cost = 28000}, -- Fireball (9)
        {id = 10215, cost = 28000}, -- Flamestrike (5)
        {id = 12525, cost = 14000, talentReq = {2,8}}, -- Pyroblast (6)
        {id = 10173, cost = 28000}, -- Dampen Magic (4)
        {id = 10211, cost = 28000}, -- Arcane Missiles (6)
        {id = 10053, cost = 28000}, -- Conjure Mana Citrine
    },
    [50] = {
        {id = 10160, cost = 32000}, -- Cone of Cold (4)
        {id = 10180, cost = 32000}, -- Frostbolt (9)
        {id = 10219, cost = 32000}, -- Ice Armor (3)
        {id = 10223, cost = 32000}, -- Fire Ward (4)
        {id = 11419, cost = 28800, faction = "Alliance"}, -- Portal: Darnassus
        {id = 11420, cost = 28800, faction = "Horde"}, -- Portal: Thunder Bluff
        {id = 10139, cost = 32000}, -- Conjure Water (6)
    },
    [52] = {
        {id = 10177, cost = 35000}, -- Frost Ward (4)
        {id = 10186, cost = 35000}, -- Blizzard (5)
        {id = 13032, cost = 1750}, -- Ice Barrier (3)
        {id = 10206, cost = 35000}, -- Scorch (6)
        {id = 13020, cost = 1750, talentReq = {2,14}}, -- Blast Wave (4)
        {id = 10192, cost = 35000}, -- Mana Shield (5)
        {id = 10145, cost = 35000}, -- Conjure Food (6)
    },
    [54] = {
        {id = 10230, cost = 36000}, -- Frost Nova (4)
        {id = 10150, cost = 36000}, -- Fireball (10)
        {id = 10199, cost = 36000}, -- Fire Blast (7)
        {id = 12526, cost = 1800, talentReq = {2,8}}, -- Pyroblast (7)
        {id = 10170, cost = 36000}, -- Amplify Magic (4)
        {id = 10202, cost = 36000}, -- Arcane Explosion (6)
    },
    [56] = {
        {id = 10181, cost = 38000}, -- Frostbolt (10)
        {id = 10216, cost = 38000}, -- Flamestrike (6)
        {id = 10157, cost = 38000}, -- Arcane Intellect (5)
        {id = 10212, cost = 38000}, -- Arcane Missiles (7)
        {id = 23028, aquire = "book"}, -- Arcane Brilliance (1)
    },
    [58] = {
        {id = 10161, cost = 40000}, -- Cone of Cold (5)
        {id = 13033, cost = 2000}, -- Ice Barrier (4)
        {id = 10207, cost = 40000}, -- Scorch (7)
        {id = 10054, cost = 40000}, -- Conjure Mana Ruby
        {id = 22783, cost = 40000}, -- Mage Armor (3)
    },
    [60] = {
        {id = 25345, aquire = "book", source = "AQ20", from = "BOSSES", phase = 5}, -- Arcane Missiles (8)
        {id = 10187, cost = 42000}, -- Blizzard (6)
        {id = 10220, cost = 42000}, -- Ice Armor (4)
        {id = 25304, aquire = "book", source = "AQ20", from = "BOSSES", phase = 5}, -- Frostbolt (11)
        {id = 28609, aquire = "book"}, -- Frost Ward (5)
        {id = 10151, cost = 42000}, -- Fireball (11)
        {id = 25306, aquire = "book", source = "AQ20", from = "BOSSES", phase = 5}, -- Fireball (12)
        {id = 10225, cost = 42000}, -- Fire Ward (5)
        {id = 13021, cost = 2100, talentReq = {2,14}}, -- Blast Wave (5)
        {id = 18809, cost = 1890, talentReq = {2,8}}, -- Pyroblast (8)
        {id = 10174, cost = 42000}, -- Dampen Magic (5)
        {id = 10193, cost = 42000}, -- Mana Shield (6)
        {id = 12826, cost = 42000}, -- Polymorph (4)
        {id = 10140, aquire = "quest", phase = 2}, -- Conjure Water (7)
        {id = 28271, aquire = "book", source = "ZG", from = "ZG_GAHZ", phase = 4}, -- Polymorph: Turtle
        {id = 28272, aquire = "quest"}, -- Polymorph: Pig
        {id = 28612, aquire = "book", source = "STRATH", from = "STRATH_ARCHIVIST"}, -- Conjure Food (7)
    }
}