local _addonName, _addon = ...
local clientlocale = GetLocale()
local localStrings = nil

function _addon:AddLocalization(locale, default)
	if locale ~= clientlocale and (localStrings ~= nil or not default) then
		return
	end
	
	localStrings = setmetatable({}, {__index=function(self, key)
		rawset(self, key, key)
		print(_addonName .. ": Missing translation for: " .. key)
		return key
	end})
	
	return localStrings
end

function _addon:GetLocalization()
	return localStrings
end