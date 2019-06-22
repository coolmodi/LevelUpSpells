local CURRENT_PHASE = 1

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
    local spellsOnLevel = {}
    local foundSpells = 0
    
    for _, spell in ipairs(_addon.spells[level]) do
        if IsSpellAvailable(spell, filterLearned) then
            table.insert(spellsOnLevel, spell)
            foundSpells = foundSpells + 1
        end
    end
    
    if foundSpells > 0 then 
        spells[level] = spellsOnLevel
        return spells, foundSpells 
    end
    
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
-- @param dontPrintLevel If true don't prepend "Level x:"
function _addon:OutputSpellList(spells, dontPrintLevel)
    local line, name, rank = "", "", ""
    for level, lvlspells in pairs(spells) do
        if dontPrintLevel ~= true then print(L["CHATLINE_LEVEL"]:format(level)) end
        for _, spell in ipairs(spells[level]) do
            name, rank = GetSpellInfo(spell.id)
            if name == nil then 
                line = "|cFFFF5500 ERROR: SPELL " .. spell.id .. " NOT FOUND" .. " |h|r"
            else
                if rank and rank ~= "" then name = name .. " (" .. rank .. ")" end
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
                    line = line .. GetCoinTextureString(spell.cost)
                end
            end
            print(line)
        end
    end
end