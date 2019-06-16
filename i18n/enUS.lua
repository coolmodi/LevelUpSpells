local _addonName, _addon = ...
local L = _addon:AddLocalization("enUS", true)
if L == nil then return end

L["CHATLINE_SPELLS_AVAILABLE"] = "|cFFFFFF55New spells are available!"
L["CHATLINE_NONE_AVAILABLE_AT_LEVEL"] = "|cFFFFFF55No spells available at level %s!"
L["CHATLINE_ALL_LEARNED"] = "|cFFFFFF55You learned all available spells for your level already!"
L["CHATLINE_MISSING_SPELL"] = "|cFFFFFF55You are missing one spell:"
L["CHATLINE_MISSING_SPELLS"] = "|cFFFFFF55You are missing %d spells:"
L["CHATLINE_LEVEL"] = "|cFFFFFF99Level %d:"

L["SOURCE_CLASS_QUEST"] = "Reward from class quest"
L["SOURCE_BOOK"] = "Requires a book"
L["SOURCE_BOOK_SPECIFY"] = "Source: %s"
L["SOURCE_BOOK_SPECIFY_MORE"] = "Source: %s from %s"

L["DUNGEONS"] = "Dungeons"

L["UBRS"] = "Upper Blackrock Spire"
L["UBRS_BEAST"] = "The Beast"
L["UBRS_ASSASSIN"] = "Blackhand Assassin"
L["UBRS_PYRO"] = "Pyroguard Emberseer"
L["AQ20"] = "Ruins of Ahn'Qiraj"
L["BOSSES"] = "bosses"
L["MC"] = "Molten Core"
L["MC_RAG"] = "Ragnaros"
L["ZG"] = "Zul'Gurub"
L["ZG_GAHZ"] = "Gahz'ranka"
L["STRATH"] = "Stratholme"
L["STRATH_ARCHIVIST"] = "Archivist Galford"

L["SLASH_COMMANDS"] = "|cFFFFFF00" .. _addonName .. " commands:"
L["SLASH_COMMANDS_TRAIN"] = "|cFF00FFFF/%s %s|r Show all spells that you haven't yet learned up to your level."
L["SLASH_COMMANDS_LEVEL"] = "|cFF00FFFF/%s |cFF5555FF%s|r Show spells available at the given level."