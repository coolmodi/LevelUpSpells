local _addonName, _addon = ...
local L = _addon:AddLocalization("deDE")
if L == nil then return end

L["CHATLINE_SPELLS_AVAILABLE"] = "|cFFFFFF55Neue Fähigkeiten sind verfügbar!"
L["CHATLINE_MISSING_SPELL"] = "|cFFFFFF55Dir fehlt eine Fähigkeit:"
L["CHATLINE_MISSING_SPELLS"] = "|cFFFFFF55Dir fehlen %d Fähigkeiten:"
L["CHATLINE_NONE_AVAILABLE_AT_LEVEL"] = "|cFFFFFF55Keine Fähigkeiten auf Level %s verfügar!"
L["CHATLINE_ALL_LEARNED"] = "|cFFFFFF55Du hast bereits alle Fähigkeiten auf deinem Level gelernt!"
L["CHATLINE_LEVEL"] = "|cFFFFFF99Fähigkeiten für level %d:"

L["SOURCE_CLASS_QUEST"] = "Belohnung für Klassenquest"
L["SOURCE_BOOK"] = "Benötigt ein Buch"
L["SOURCE_BOOK_SPECIFY"] = "Quelle: %s"
L["SOURCE_BOOK_SPECIFY_MORE"] = "Quelle: %s von %s"

L["DUNGEONS"] = "Instanzen"

L["UBRS"] = "Obere Schwarzfelsspitze"
L["UBRS_BEAST"] = "Die Bestie"
L["UBRS_ASSASSIN"] = "Auftragsmörder der Schwarzfaustlegion"
L["UBRS_PYRO"] = "Feuerwache Glutseher"
L["AQ20"] = "Ruinen von Ahn'Qiraj"
L["BOSSES"] = "Bossen"
L["MC"] = "Geschmolzener Kern"
L["MC_RAG"] = "Ragnaros"
L["ZG"] = "Zul'Gurub"
L["ZG_GAHZ"] = "Gahz'ranka"
L["STRATH"] = "Stratholme"
L["STRATH_ARCHIVIST"] = "Archivist Galford"

L["SLASH_COMMANDS"] = "|cFFFFFF00" .. _addonName .. " Befehle:"
L["SLASH_COMMANDS_TRAIN"] = "|cFF00FFFF/%s %s|r Zeigt alle Fähigkeiten bis zu deinem Level, welche du noch nicht gelernt hast."
L["SLASH_COMMANDS_LEVEL"] = "|cFF00FFFF/%s |cFF0000FF%s|r Zeigt alle Fähigkeiten für den angegebenen Level"