--- @class AceAddon-Module-Lifecycle-3-0
local addonOrModule = {}

--- Called once after ADDON_LOADED, before OnEnable
--- @return void
function addonOrModule:OnInitialize() end

--- Called when the module becomes enabled
--- @return void
function addonOrModule:OnEnable() end

--- Called when the module becomes disabled
--- @return void
function addonOrModule:OnDisable() end

