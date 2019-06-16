local _,c = UnitClass("player")
if c ~= "DRUID" then return end

local _, _addon = ...

_addon.spells = {
    [1] = {
        {id = 1126, cost = 10}, -- Mark of the Wild (1)
    },
    [4] = {
        {id = 774, cost = 100}, -- Rejuvenation (1)
        {id = 8921, cost = 100}, -- Moonfire (1)
    },
    [6] = {
        {id = 467, cost = 100}, -- Thorns (1)
        {id = 5177, cost = 100}, -- Wrath (2)
    },
    [8] = {
        {id = 5186, cost = 200}, -- Healing Touch 2
        {id = 339, cost = 200}, -- Entangling Roots (1)
    },
    [10] = {
        {id = 99, cost = 300}, -- Demoralizing Roar (1)
        {id = 5487, aquire = "quest"}, -- Bear Form (Shapeshift)
        {id = 6807, aquire = "quest"}, -- Maul (1)
        {id = 6795, aquire = "quest"}, -- Growl
        {id = 5232, cost = 300}, -- Mark of the Wild (2)
        {id = 1058, cost = 300}, -- Rejuvenation (2)
        {id = 8924, cost = 300}, -- Moonfire (2)
        {id = 18960, aquire = "quest"}, -- Teleport: Moonglade
    },
    [12] = {
        {id = 5229, cost = 800}, -- Enrage
        {id = 8936, cost = 800}, -- Regrowth (1)
    },
    [14] = {
        {id = 5211, cost = 900}, -- Bash (1)
        {id = 5187, cost = 900}, -- Healing Touch (3)
        {id = 8946, aquire = "quest"}, -- Cure Poison
        {id = 782, cost = 900}, -- Thorns (2)
        {id = 5178, cost = 900}, -- Wrath (3)
    },
    [16] = {
        {id = 779, cost = 1800}, -- Swipe (1)
        {id = 1066, aquire = "quest"}, -- Aquatic Form (Shapeshift)
        {id = 1430, cost = 1800}, -- Rejuvenation (3)
        {id = 8925, cost = 1800}, -- Moonfire (3)
    },
    [18] = {
        {id = 6808, cost = 1900}, -- Maul (2)
        {id = 8938, cost = 1900}, -- Regrowth (2)
        {id = 770, cost = 1900}, -- Faerie Fire (1)
        {id = 1062, cost = 1900}, -- Entangling Roots (2)
        {id = 16810, cost = 95, talentReq = {1,2}}, -- Nature's Grasp (2)
        {id = 2637, cost = 1900}, -- Hibernate (1)
    },
    [20] = {
        {id = 768, cost = 2000}, -- Cat Form (Shapeshift)
        {id = 1082, cost = 2000}, -- Claw (1)
        {id = 1735, cost = 2000}, -- Demoralizing Roar (2)
        {id = 1079, cost = 2000}, -- Rip (1)
        {id = 5215, cost = 2000}, -- Prowl (1)
        {id = 5188, cost = 2000}, -- Healing Touch (4)
        {id = 6756, cost = 2000}, -- Mark of the Wild (3)
        {id = 20484, cost = 2000}, -- Rebirth (1)
        {id = 2912, cost = 2000}, -- Starfire (1)
    },
    [22] = {
        {id = 5221, cost = 3000}, -- Shred (1)
        {id = 2090, cost = 3000}, -- Rejuvenation (4)
        {id = 5179, cost = 3000}, -- Wrath (4)
        {id = 8926, cost = 3000}, -- Moonfire (4)
        {id = 2908, cost = 3000}, -- Soothe Animal (1)
    },
    [24] = {
        {id = 780, cost = 4000}, -- Swipe (2)
        {id = 5217, cost = 4000}, -- Tiger's Fury (1)
        {id = 1822, cost = 4000}, -- Rake (1)
        {id = 8939, cost = 4000}, -- Regrowth (3)
        {id = 2782, cost = 4000}, -- Remove Curse
        {id = 1075, cost = 4000}, -- Thorns (3)
    },
    [26] = {
        {id = 6809, cost = 4500}, -- Maul (3)
        {id = 1850, cost = 4500}, -- Dash (1)
        {id = 5189, cost = 4500}, -- Healing Touch (5)
        {id = 2893, cost = 4500}, -- Abolish Poison
        {id = 8949, cost = 4500}, -- Starfire (2)
    },
    [28] = {
        {id = 3029, cost = 5000}, -- Claw (2)
        {id = 5209, cost = 5000}, -- Challenging Roar
        {id = 8998, cost = 5000}, -- Cower (1)
        {id = 9492, cost = 5000}, -- Rip (2)
        {id = 2091, cost = 5000}, -- Rejuvenation (5)
        {id = 8927, cost = 5000}, -- Moonfire (5)
        {id = 5195, cost = 5000}, -- Entangling Roots (3)
        {id = 16811, cost = 250, talentReq = {1,2}}, -- Nature's Grasp (3)
    },
    [30] = {
        {id = 6800, cost = 6000}, -- Shred (2)
        {id = 6798, cost = 6000}, -- Bash (2)
        {id = 783, cost = 6000}, -- Travel Form (Shapeshift)
        {id = 5234, cost = 6000}, -- Mark of the Wild (4)
        {id = 8940, cost = 6000}, -- Regrowth (4)
        {id = 740, cost = 6000}, -- Tranquility (1)
        {id = 20739, cost = 6000}, -- Rebirth (2)
        {id = 5180, cost = 6000}, -- Wrath (5)
        {id = 24974, cost = 300, talentReq = {3,7}}, -- Insect Swarm (2)
        {id = 778, cost = 6000}, -- Faerie Fire (2)
        {id = 17390, cost = 300, talentReq = {2, 14}}, -- Faerie Fire (Feral) (2)
    },
    [32] = {
        {id = 5225, cost = 8000}, -- Track Humanoids
        {id = 6785, cost = 8000}, -- Ravage (1)
        {id = 9490, cost = 8000}, -- Demoralizing Roar (3)
        {id = 22568, cost = 8000}, -- Ferocious Bite (1)
        {id = 6778, cost = 8000}, -- Healing Touch (6)
    },
    [34] = {
        {id = 1823, cost = 10000}, -- Rake (2)
        {id = 8972, cost = 10000}, -- Maul (4)
        {id = 769, cost = 10000}, -- Swipe (3)
        {id = 3627, cost = 10000}, -- Rejuvenation (6)
        {id = 8914, cost = 10000}, -- Thorns (4)
        {id = 8950, cost = 10000}, -- Starfire (3)
        {id = 8928, cost = 10000}, -- Moonfire (6)
    },
    [36] = {
        {id = 6793, cost = 11000}, -- Tiger's Fury (2)
        {id = 9005, cost = 11000}, -- Pounce (1)
        {id = 9493, cost = 11000}, -- Rip (3)
        {id = 22842, cost = 11000}, -- Frenzied Regeneration (1)
        {id = 8941, cost = 11000}, -- Regrowth (5)
    },
    [38] = {
        {id = 5201, cost = 12000}, -- Claw (3)
        {id = 8992, cost = 12000}, -- Shred (3)
        {id = 8903, cost = 12000}, -- Healing Touch (7)
        {id = 6780, cost = 12000}, -- Wrath (6)
        {id = 5196, cost = 12000}, -- Entangling Roots (4)
        {id = 8955, cost = 12000}, -- Soothe Animal (2)
        {id = 16812, cost = 600, talentReq = {1,2}}, -- Nature's Grasp (4)
        {id = 18657, cost = 12000}, -- Hibernate (2)
    },
    [40] = {
        {id = 9000, cost = 14000}, -- Cower (2)
        {id = 9634, cost = 14000}, -- Dire Bear Form (Shapeshift)
        {id = 20719, cost = 14000}, -- Feline Grace (Passive)
        {id = 22827, cost = 14000}, -- Ferocious Bite (2)
        {id = 8907, cost = 14000}, -- Mark of the Wild (5)
        {id = 8910, cost = 14000}, -- Rejuvenation (7)
        {id = 8918, cost = 14000}, -- Tranquility (2)
        {id = 20742, cost = 14000}, -- Rebirth (3)
        {id = 8929, cost = 14000}, -- Moonfire (7)
        {id = 16914, cost = 14000}, -- Hurricane (1)
        {id = 29166, cost = 14000}, -- Innervate
        {id = 24975, cost = 700, talentReq = {3,7}}, -- Insect Swarm (3)
        {id = 6783, cost = 14000}, -- Prowl (2)
    },
    [42] = {
        {id = 6787, cost = 16000}, -- Ravage (2)
        {id = 9745, cost = 16000}, -- Maul (5)
        {id = 9747, cost = 16000}, -- Demoralizing Roar (4)
        {id = 9750, cost = 16000}, -- Regrowth (6)
        {id = 8951, cost = 16000}, -- Starfire (4)
        {id = 9749, cost = 16000}, -- Faerie Fire (3)
        {id = 17391, cost = 800, talentReq = {2, 14}}, -- Faerie Fire (Feral) (3)
    },
    [44] = {
        {id = 1824, cost = 18000}, -- Rake (3)
        {id = 9752, cost = 18000}, -- Rip (4)
        {id = 9754, cost = 18000}, -- Swipe (4)
        {id = 9758, cost = 18000}, -- Healing Touch (8)
        {id = 9756, cost = 18000}, -- Thorns (5)
        {id = 22812, cost = 18000}, -- Barkskin
    },
    [46] = {
        {id = 8983, cost = 20000}, -- Bash (3)
        {id = 9821, cost = 20000}, -- Dash (2)
        {id = 9823, cost = 20000}, -- Pounce (2)
        {id = 9829, cost = 20000}, -- Shred (4)
        {id = 9839, cost = 20000}, -- Rejuvenation (8)
        {id = 8905, cost = 20000}, -- Wrath (7)
        {id = 9833, cost = 20000}, -- Moonfire (8)
        {id = 22895, cost = 20000}, -- Frenzied Regeneration (2)
    },
    [48] = {
        {id = 9845, cost = 22000}, -- Tiger's Fury (3)
        {id = 9849, cost = 22000}, -- Claw (4)
        {id = 22828, cost = 22000}, -- Ferocious Bite (3)
        {id = 9856, cost = 22000}, -- Regrowth (7)
        {id = 9852, cost = 22000}, -- Entangling Roots (5)
        {id = 16813, cost = 1100, talentReq = {1,2}}, -- Nature's Grasp (5)
    },
    [50] = {
        {id = 9866, cost = 23000}, -- Ravage (3)
        {id = 9880, cost = 23000}, -- Maul (6)
        {id = 9888, cost = 23000}, -- Healing Touch (9)
        {id = 9884, cost = 23000}, -- Mark of the Wild (6)
        {id = 21849, aquire = "book"}, -- Gift of the Wild (1)
        {id = 9862, cost = 23000}, -- Tranquility (3)
        {id = 20747, cost = 23000}, -- Rebirth (4)
        {id = 9875, cost = 23000}, -- Starfire (5)
        {id = 17401, cost = 23000}, -- Hurricane (2)
        {id = 24976, cost = 1150, talentReq = {3,7}}, -- Insect Swarm (4)
    },
    [52] = {
        {id = 9892, cost = 26000}, -- Cower (3)
        {id = 9894, cost = 26000}, -- Rip (5)
        {id = 9898, cost = 26000}, -- Demoralizing Roar (5)
        {id = 9840, cost = 26000}, -- Rejuvenation (9)
        {id = 9834, cost = 26000}, -- Moonfire (9)
    },
    [54] = {
        {id = 9830, cost = 28000}, -- Shred (5)
        {id = 9904, cost = 28000}, -- Rake (4)
        {id = 9908, cost = 28000}, -- Swipe (5)
        {id = 9857, cost = 28000}, -- Regrowth (8)
        {id = 9910, cost = 28000}, -- Thorns (6)
        {id = 9912, cost = 28000}, -- Wrath (8)
        {id = 9901, cost = 28000}, -- Soothe Animal (3)
        {id = 9907, cost = 28000}, -- Faerie Fire (4)
        {id = 17392, cost = 1400, talentReq = {2, 14}}, -- Faerie Fire (Feral) (4)
    },
    [56] = {
        {id = 9827, cost = 30000}, -- Pounce (3)
        {id = 22829, cost = 30000}, -- Ferocious Bite (4)
        {id = 9889, cost = 30000}, -- Healing Touch (10)
        {id = 22896, cost = 30000}, -- Frenzied Regeneration (3)
    },
    [58] = {
        {id = 9850, cost = 32000}, -- Claw (5)
        {id = 9867, cost = 32000}, -- Ravage (4)
        {id = 9881, cost = 32000}, -- Maul (7)
        {id = 9841, cost = 32000}, -- Rejuvenation (10)
        {id = 9876, cost = 32000}, -- Starfire (6)
        {id = 9835, cost = 32000}, -- Moonfire (10)
        {id = 9853, cost = 32000}, -- Entangling Roots (6)
        {id = 17329, cost = 1600, talentReq = {1,2}}, -- Nature's Grasp (6)
        {id = 18658, cost = 32000}, -- Hibernate (3)
    },
    [60] = {
        {id = 9846, cost = 34000}, -- Tiger's Fury (4)
        {id = 9896, cost = 34000}, -- Rip (6)
        {id = 31018, aquire = "book", source = "UBRS", from = "UBRS_BEAST"}, -- Ferocious Bite (5)
        {id = 9885, cost = 34000}, -- Mark of the Wild (7)
        {id = 21850, aquire = "book"}, -- Gift of the Wild (2)
        {id = 9858, cost = 34000}, -- Regrowth (9)
        {id = 9863, cost = 34000}, -- Tranquility (4)
        {id = 20748, cost = 34000}, -- Rebirth (5)
        {id = 9913, cost = 34000}, -- Prowl (3)
        {id = 25299, aquire = "book", source = "AQ20", from = "BOSSES", phase = 5}, -- Rejuvenation (11)
        {id = 25297, aquire = "book", source = "AQ20", from = "BOSSES", phase = 5}, -- Healing Touch (11)
        {id = 17402, cost = 34000}, -- Hurricane (3)
        {id = 25298, aquire = "book", source = "AQ20", from = "BOSSES", phase = 5}, -- Starfire (7)
        {id = 24977, cost = 1700, talentReq = {3,7}}, -- Insect Swarm (5)
    }
}