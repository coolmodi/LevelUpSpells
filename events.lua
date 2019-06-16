local _, _addon = ...
local L = _addon:GetLocalization()
local frame = CreateFrame("Frame")
local spellsCache
local timeElapsed = 0

local function UpdateTimer(self, diff)
    timeElapsed = timeElapsed + diff
    if timeElapsed < 1.5 then return end
    
    print(L["CHATLINE_SPELLS_AVAILABLE"])
    _addon:OutputSpellList(spellsCache)
    
    spellsCache = nil
    frame:SetScript("OnUpdate", nil)
end

frame:SetScript( "OnEvent",function(self, event, arg1) 
    -- Prit spells on level up, if there are any
    -- Delay print so it's after the default level up stuff
    if event == "PLAYER_LEVEL_UP" then
        local spells, count = _addon:GetSpellsForLevel(arg1)
        if spells == nil then return end
        spellsCache = spells
        timeElapsed = 0
        frame:SetScript("OnUpdate", UpdateTimer)
    end
end)

frame:RegisterEvent("PLAYER_LEVEL_UP")