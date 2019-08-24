local _,c = UnitClass("player")
if c ~= "WARRIOR" then return end

local _, _addon = ...

_addon.spells = {
    [1] = {
        {id = 6673, cost = 10}, -- Battle Shout (1)
    },
    [4] = {
        {id = 772, cost = 100}, -- Rend (1)
        {id = 100, cost = 100}, -- Charge (1)
    },
    [6] = {
        {id = 6343, cost = 100}, -- Thunder Clap (1)
        {id = 3127, cost = 100}, -- Parry (Passive)
    },
    [8] = {
        {id = 284, cost = 200}, -- Heroic Strike (2)
        {id = 1715, cost = 200}, -- Hamstring (1)
    },
    [10] = {
        {id = 6546, cost = 600}, -- Rend (2)
        {id = 2687, cost = 600}, -- Bloodrage
        {id = 71, aquire = "quest"}, -- Defensive Stance
        {id = 7386, aquire = "quest"}, -- Sunder Armor (1)
        {id = 355, aquire = "quest"}, -- Taunt
    },
    [12] = {
        {id = 7384, cost = 1000}, -- Overpower (1)
        {id = 5242, cost = 1000}, -- Battle Shout (2)
        {id = 72, cost = 1000}, -- Shield Bash (1)
    },
    [14] = {
        {id = 1160, cost = 1500}, -- Demoralizing Shout (1)
        {id = 6572, cost = 1500}, -- Revenge (1)
    },
    [16] = {
        {id = 285, cost = 2000}, -- Heroic Strike (3)
        {id = 694, cost = 2000}, -- Mocking Blow (1)
        {id = 2565, cost = 2000}, -- Shield Block
    },
    [18] = {
        {id = 8198, cost = 3000}, -- Thunder Clap (2)
        {id = 676, cost = 3000}, -- Disarm
    },
    [20] = {
        {id = 6547, cost = 4000}, -- Rend (3)
        {id = 20230, cost = 4000}, -- Retaliation
        {id = 845, cost = 4000}, -- Cleave (1)
        {id = 674, cost = 4000}, -- Dual Wield (Passive)
    },
    [22] = {
        {id = 6192, cost = 6000}, -- Battle Shout (3)
        {id = 5246, cost = 6000}, -- Intimidating Shout
        {id = 7405, cost = 6000}, -- Sunder Armor (2)
    },
    [24] = {
        {id = 1608, cost = 8000}, -- Heroic Strike (4)
        {id = 6190, cost = 8000}, -- Demoralizing Shout (2)
        {id = 5308, cost = 8000}, -- Execute (1)
        {id = 6574, cost = 8000}, -- Revenge (2)
    },
    [26] = {
        {id = 6178, cost = 10000}, -- Charge (2)
        {id = 1161, cost = 10000}, -- Challenging Shout
        {id = 7400, cost = 10000}, -- Mocking Blow (2)
    },
    [28] = {
        {id = 8204, cost = 11000}, -- Thunder Clap (3)
        {id = 871, cost = 11000}, -- Shield Wall
        {id = 7887, cost = 11000}, -- Overpower (2)
    },
    [30] = {
        {id = 6548, cost = 12000}, -- Rend (4)
        {id = 1464, cost = 12000}, -- Slam (1)
        {id = 2458, aquire = "quest"}, -- Berserker Stance
        {id = 7369, cost = 12000}, -- Cleave (2)
        {id = 20252, aquire = "quest"}, -- Intercept (1)
    },
    [32] = {
        {id = 11564, cost = 14000}, -- Heroic Strike (5)
        {id = 11549, cost = 14000}, -- Battle Shout (4)
        {id = 18499, cost = 14000}, -- Berserker Rage
        {id = 20658, cost = 14000}, -- Execute (2)
        {id = 1671, cost = 14000}, -- Shield Bash (2)
        {id = 7372, cost = 14000}, -- Hamstring (2)
    },
    [34] = {
        {id = 11554, cost = 16000}, -- Demoralizing Shout (3)
        {id = 7379, cost = 16000}, -- Revenge (3)
        {id = 8380, cost = 16000}, -- Sunder Armor (3)
    },
    [36] = {
        {id = 1680, cost = 18000}, -- Whirlwind
        {id = 7402, cost = 18000}, -- Mocking Blow (3)
    },
    [38] = {
        {id = 8205, cost = 20000}, -- Thunder Clap (4)
        {id = 8820, cost = 20000}, -- Slam (2)
        {id = 6552, cost = 20000}, -- Pummel (1)
    },
    [40] = {
        {id = 750, cost = 22000}, -- Plate Mail
        {id = 11572, cost = 22000}, -- Rend (5)
        {id = 11565, cost = 22000}, -- Heroic Strike (6)
        {id = 11608, cost = 22000}, -- Cleave (3)
        {id = 20660, cost = 22000}, -- Execute (3)
    },
    [42] = {
        {id = 11550, cost = 32000}, -- Battle Shout (5)
        {id = 20616, cost = 32000}, -- Intercept (2)
    },
    [44] = {
        {id = 11555, cost = 34000}, -- Demoralizing Shout (4)
        {id = 11600, cost = 34000}, -- Revenge (4)
        {id = 11584, cost = 34000}, -- Overpower (3)
    },
    [46] = {
        {id = 11578, cost = 36000}, -- Charge (3)
        {id = 11604, cost = 36000}, -- Slam (3)
        {id = 20559, cost = 36000}, -- Mocking Blow (4)
        {id = 11596, cost = 36000}, -- Sunder Armor (4)
    },
    [48] = {
        {id = 11566, cost = 40000}, -- Heroic Strike (7)
        {id = 11580, cost = 40000}, -- Thunder Clap (5)
        {id = 21551, cost = 200, talentReq = {1, 18}}, -- Mortal Strike (2)
        {id = 20661, cost = 40000}, -- Execute (4)
        {id = 23923, cost = 200, talentReq = {3, 17}}, -- Shield Slam (2)
        {id = 23892, cost = 2000, talentReq = {3, 17}}, -- Bloodthirst (2)
    },
    [50] = {
        {id = 11573, cost = 42000}, -- Rend (6)
        {id = 11609, cost = 42000}, -- Cleave (4)
        {id = 1719, cost = 42000}, -- Recklessness
    },
    [52] = {
        {id = 11551, cost = 54000}, -- Battle Shout (6)
        {id = 1672, cost = 54000}, -- Shield Bash (3)
        {id = 20617, cost = 54000}, -- Intercept (3)
    },
    [54] = {
        {id = 21552, cost = 2800, talentReq = {1, 18}}, -- Mortal Strike (3)
        {id = 11605, cost = 56000}, -- Slam (4)
        {id = 11556, cost = 56000}, -- Demoralizing Shout (5)
        {id = 11601, cost = 56000}, -- Revenge (5)
        {id = 7373, cost = 56000}, -- Hamstring (3)
        {id = 23924, cost = 2800, talentReq = {3, 17}}, -- Shield Slam (3)
        {id = 23893, cost = 2800, talentReq = {3, 17}}, -- Bloodthirst (3)
    },
    [56] = {
        {id = 11567, cost = 58000}, -- Heroic Strike (8)
        {id = 20662, cost = 58000}, -- Execute (5)
        {id = 20560, cost = 58000}, -- Mocking Blow (5)
    },
    [58] = {
        {id = 11581, cost = 60000}, -- Thunder Clap (6)
        {id = 6554, cost = 60000}, -- Pummel (2)
        {id = 11597, cost = 60000}, -- Sunder Armor (5)
    },
    [60] = {
        {id = 11574, cost = 62000}, -- Rend (7)
        {id = 11585, cost = 62000}, -- Overpower (4)
        {id = 21553, cost = 3100, talentReq = {1, 18}}, -- Mortal Strike (4)
        {id = 25286, aquire = "book", source = "AQ20", from = "BOSSES", phase = 5}, -- Heroic Strike (9)
        {id = 20569, cost = 62000}, -- Cleave (5)
        {id = 25289, aquire = "book", source = "AQ20", from = "BOSSES", phase = 5}, -- Battle Shout (7)
        {id = 23925, cost = 3100, talentReq = {3, 17}}, -- Shield Slam (4)
        {id = 23894, cost = 3100, talentReq = {3, 17}}, -- Bloodthirst (4)
        {id = 25288, aquire = "book", source = "AQ20", from = "BOSSES", phase = 5}, -- Revenge (6)
    }
}