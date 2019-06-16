local CURRENT_PHASE = 99 -- TODO: Set real value, also can we get this over the API in some way?

local _addonName, _addon = ...
local L = _addon:GetLocalization()
local _, race = UnitRace("player")
local faction = UnitFactionGroup("player")

--- Check if spell can be aquired
-- Cheks if spell can be learned in phase, is already learned, if char has right faction and race and has learned required talents.
-- @param spell A spell table from the spells table
-- @param filterLearned Whether to filter out already learned spells
local function IsSpellAvailable(spell, filterLearned)
    if spell.phase and spell.phase > CURRENT_PHASE then return false end
    if filterLearned and IsSpellKnown(spell.id, false) then return false end
    if spell.faction and spell.faction ~= faction then return false end
    if spell.talentReq then 
        local _,_,_,_, currentRank = GetTalentInfo(spell.talentReq[1] , spell.talentReq[2])
        if currentRank == 0 then return false end
    end
    if spell.race and spell.race ~= race then return false end
    if spell.races then
        local found = false
        for k,v in ipairs(spell.races) do
            if v == race then 
                found = true 
                break
            end
        end
        if not found then return false end
    end
    return true
end

--- Get level up spells
-- Get all trainable spells for a certain level for the logged in character class
-- @param level The level to get spells for
-- @param filterLearned Whether to filter out spells that are already learned
-- @param spellTable (optional) An existing table to add the level subtable to
-- @return A table containing the level as key for a table with the spells for that level, nil if no spells found
-- @return Number of spells found
function _addon:GetSpellsForLevel(level, filterLearned, spellTable)
    if _addon.spells[level] == nil then return nil, 0 end
    local spells = spellTable or {}
    local foundSpells = 0
    spells[level] = {}
    
    for _, spell in ipairs(_addon.spells[level]) do
        if IsSpellAvailable(spell, filterLearned) then
            table.insert(spells[level], spell)
            foundSpells = foundSpells + 1
        end
    end
    
    if foundSpells > 0 then return spells, foundSpells end
    return nil, foundSpells
end

--- Get trainable spells
-- Return all not yet learned spells up to the current level for logged in character class.
-- @return A table containing level keyed sub tables with the appropriate spells, nil if no spells found
-- @return Number of spells found
function _addon:GetAllTrainableSpells()
    local spells, found, count = {}, 0, 0
    for level = 1, UnitLevel("player"), 1 do
        _, found = _addon:GetSpellsForLevel(level, true, spells)
        count = count + found
    end
    if count > 0 then return spells, count end
    return nil, count
end

--- Print spell list
-- @param spells A list from the Get... functions
function _addon:OutputSpellList(spells)
    local line, name, rank = "", "", ""
    for level, lvlspells in pairs(spells) do
        print(L["CHATLINE_LEVEL"]:format(level))
        for _, spell in ipairs(spells[level]) do
            name, rank = GetSpellInfo(spell.id)
            if name == nil then 
                line = "|cFFFF5500 ERROR: SPELL " .. spell.id .. " NOT FOUND" .. " |h|r"
            else
                if rank and rank ~= "" then name = name .. " (" .. rank .. ")" end
                -- TODO: Does this work in classic?
                line = "|cFF77FF77|Hspell:" .. spell.id .. "|h[" .. name .. "] |h|r"
                if spell.aquire ~= nil then
                    if spell.aquire == "quest" then
                        line = line .. L["SOURCE_CLASS_QUEST"] .. "."
                    elseif spell.aquire == "book" then
                        line = line .. L["SOURCE_BOOK"] .. ". "
                        if spell.source == nil then
                            line = line .. L["SOURCE_BOOK_SPECIFY"]:format(L["DUNGEONS"]) .. "."
                        else
                            line = line .. L["SOURCE_BOOK_SPECIFY_MORE"]:format(L[spell.source], L[spell.from]) .. "."
                        end
                    end
                else
                    -- TODO: Does this work in classic?
                    line = line .. GetCoinTextureString(spell.cost)
                end
            end
            print(line)
        end
    end
end


--[[
NOT NEEDED AFTER ALL, BfA at least has GetCoinTextureString()
--- Turn copper value into Xg Xs Xc string
-- @param val A price as copper value
local function Copper2String(val)
    local c = val%100
    local s = math.floor(val%10000 / 100)
    local g = math.floor(val / 10000)
    local str = ""
    if g ~= 0 then str = g .. "|TInterface\MoneyFrame\UI-GoldIcon:14:14:2:0t " end
    if s ~= 0 then str = str .. s .. "|TInterface\MoneyFrame\UI-SilverIcon:14:14:2:0t " end
    if c ~= 0 then str = str .. c .. "|TInterface\MoneyFrame\UI-CopperIcon:14:14:2:0t " end
    return strtrim(str)
end
]]--