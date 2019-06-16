local _, _addon = ...
local L = _addon:GetLocalization()

SLASH_LEVELUPSPELLS1 = "/lus"
SLASH_LEVELUPSPELLS2 = "/levelupspells"
SlashCmdList["LEVELUPSPELLS"] = function(arg)
    if arg == "missing" then
        local spells, count = _addon:GetAllTrainableSpells()
        if spells == nil then
            print(L["CHATLINE_ALL_LEARNED"])
            return
        end
        if count > 1 then
            print(L["CHATLINE_MISSING_SPELLS"]:format(count))
        else
            print(L["CHATLINE_MISSING_SPELL"])
        end
        _addon:OutputSpellList(spells)
        return
    end
    
    local levelarg = tonumber(arg)
    if levelarg and levelarg > 0 and levelarg < 61 then
        local spells, count = _addon:GetSpellsForLevel(levelarg, false)
        if spells == nil then
            print(L["CHATLINE_NONE_AVAILABLE_AT_LEVEL"]:format(levelarg))
            return
        end
        _addon:OutputSpellList(spells)
        return
    end
    
    print(L["SLASH_COMMANDS"])
    print(L["SLASH_COMMANDS_TRAIN"]:format("lus", "missing"))
    print(L["SLASH_COMMANDS_LEVEL"]:format("lus", "<level>"))
end