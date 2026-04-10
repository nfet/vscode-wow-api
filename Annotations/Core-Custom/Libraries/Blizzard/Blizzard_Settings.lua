---@class Settings
---@field CannotDefault any
---@field VarType Settings.VarType
---@field Default Settings.Default
---@field CategorySet table
---@field CommitFlag table
local S = {}

---@class Settings.VarType
---@field Boolean string
---@field String string
---@field Number string

---@class Settings.Default
---@field True boolean
---@field False boolean

----------------------------------------------------
-- Category / Registration
----------------------------------------------------

---@param name string
---@return SettingsCategoryMixin
function S:CreateCategory(name) end

---@param category SettingsCategoryMixin
---@param layout any
function S:AssignLayoutToCategory(category, layout) end

---@param category SettingsCategoryMixin
---@param group any
function S:RegisterCategory(category, group) end

---@param category SettingsCategoryMixin
function S:RegisterAddOnCategory(category) end

---@param category SettingsCategoryMixin
function S:SetKeybindingsCategory(category) end

---@param categoryID number|string
---@param scrollToElementName string|nil
---@return boolean|nil
function S:OpenToCategory(categoryID, scrollToElementName) end

----------------------------------------------------
-- Setting Registration
----------------------------------------------------

---@param categoryTbl any
---@param variable string
---@param variableKey string|nil
---@param variableTbl table|nil
---@param variableType string
---@param name string
---@param defaultValue any
---@return any
function S:RegisterAddOnSetting(categoryTbl, variable, variableKey, variableTbl, variableType, name, defaultValue) end

---@param categoryTbl any
---@param variable string
---@param variableType string
---@param name string
---@param defaultValue any
---@param getValue fun():any
---@param setValue fun(value:any)
---@return any
function S:RegisterProxySetting(categoryTbl, variable, variableType, name, defaultValue, getValue, setValue) end

---@param categoryTbl any
---@param variable string
---@param variableType string
---@param name string
---@return CVarSettingMixin
function S:RegisterCVarSetting(categoryTbl, variable, variableType, name) end

---@param categoryTbl any
---@param variable string
---@param name string
---@param defaultValue string
---@return ModifiedClickSettingMixin
function S:RegisterModifiedClickSetting(categoryTbl, variable, name, defaultValue) end

----------------------------------------------------
-- Get / Set
----------------------------------------------------

---@param variable string
---@return any
function S:GetValue(variable) end

---@param variable string
---@param value any
---@param force boolean|nil
function S:SetValue(variable, value, force) end

---@param variable string
function S:NotifyUpdate(variable) end

---@param variable string
---@return any
function S:GetSetting(variable) end

----------------------------------------------------
-- UI Element Creation
----------------------------------------------------

---@param category any
---@param setting any
---@param tooltip string|fun():string|nil
---@return any
function S:CreateCheckbox(category, setting, tooltip) end

---@param category any
---@param setting any
---@param options any
---@param tooltip string|fun():string|nil
---@return any
function S:CreateSlider(category, setting, options, tooltip) end

---@param category any
---@param setting any
---@param options any
---@param tooltip string|fun():string|nil
---@return any
function S:CreateDropdown(category, setting, options, tooltip) end

----------------------------------------------------
-- Callbacks
----------------------------------------------------

---@param variable string
---@param callback fun(owner:any, setting:any, value:any)
---@param owner any|nil
---@return any
function S:SetOnValueChangedCallback(variable, callback, owner) end

---@param variable string
---@param callback fun(value:any)
---@param owner any|nil
function S:CallWhenRegistered(variable, callback, owner) end

---@return boolean
function S:IsCommitInProgress() end
