--- @class AceAddonMixin_3_0
local AceAddonMixin_3_0 = {}

---[Documentation](https://www.wowace.com/projects/ace3/pages/api/ace-addon-3-0#title-10)
---Create a new module for the addon.
---
---The new module can have its own embeded libraries and/or use a module prototype to be mixed into the module.
---
---A module has the same functionality as a real addon, it can have modules of its own, and has the same API as an addon object.
---@param name string
---@param ... string List of libraries to embed into the addon
---@overload fun(name: string, ...: string)
---@overload fun(name: string, prototype: table, ...: string)
---@return AceAddonObj_3_0
function AceAddonMixin_3_0:NewModule(name, ...) end
AceAddonMixin_3_0:NewModule()

---[Documentation](https://www.wowace.com/projects/ace3/pages/api/ace-addon-3-0#title-6)
---Return the specified module from an Addon object.
---@param name string Unique name of the Module
---@param silent boolean|nil If true, the module is optional. Silently return nil if its not found.
---@return AceAddonObj_3_0
function AceAddonMixin_3_0:GetModule(name, silent) end

---[Documentation](https://www.wowace.com/projects/ace3/pages/api/ace-addon-3-0#title-4)
---Enables the Addon, if possible.
---@return boolean success
function AceAddonMixin_3_0:Enable() end

---[Documentation](https://www.wowace.com/projects/ace3/pages/api/ace-addon-3-0#title-2)
---Disables the Addon, if possible.
---@return boolean success
function AceAddonMixin_3_0:Disable() end

---[Documentation](https://www.wowace.com/projects/ace3/pages/api/ace-addon-3-0#title-4)
---Enables the Module, if possible.
---@param name string
---@return boolean success
function AceAddonMixin_3_0:EnableModule(name)
end

---[Documentation](https://www.wowace.com/projects/ace3/pages/api/ace-addon-3-0#title-3)
---Disables the Module, if possible.
---@param name string
---@return boolean success
function AceAddonMixin_3_0:DisableModule(name) end

---[Documentation](https://www.wowace.com/projects/ace3/pages/api/ace-addon-3-0#title-8)
---Query the enabledState of an Addon.
---@return boolean enabled
function AceAddonMixin_3_0:IsEnabled() end

---[Documentation](https://www.wowace.com/projects/ace3/pages/api/ace-addon-3-0#title-11)
---Set the default libraries to be mixed into all modules created by this object.
---
---Note that you can only change the default module libraries before any module is created.
---@param ... string List of libraries to embed into the addon
---@overload fun(...:string)
function AceAddonMixin_3_0:SetDefaultModuleLibraries(...) end
AceAddonMixin_3_0:SetDefaultModuleLibraries()

---[Documentation](https://www.wowace.com/projects/ace3/pages/api/ace-addon-3-0#title-13)
---Set the default state in which new modules are being created.
---
---Note that you can only change the default state before any module is created.
---@param state boolean
function AceAddonMixin_3_0:SetDefaultModuleState(state) end

---[Documentation](https://www.wowace.com/projects/ace3/pages/api/ace-addon-3-0#title-12)
---Set the default prototype to use for new modules on creation.
---
---Note that you can only change the default prototype before any module is created.
---@param prototype table
function AceAddonMixin_3_0:SetDefaultModulePrototype(prototype) end

---[Documentation](https://www.wowace.com/projects/ace3/pages/api/ace-addon-3-0#title-14)
---Set the state of an addon or module This should only be called before any enabling actually happend, e.g. in/before OnInitialize.
---@param state boolean
function AceAddonMixin_3_0:SetEnabledState(state) end

---[Documentation](https://www.wowace.com/projects/ace3/pages/api/ace-addon-3-0#title-9)
---Return an iterator of all modules associated to the addon.
---@return fun, table, number iter, invariant, init
function AceAddonMixin_3_0:IterateModules() end

---[Source Code](https://github.com/hurricup/WoW-Ace3/blob/619cd1532d404f75ad4c20fbcefab6aed11e4abe/AceAddon-3.0/AceAddon-3.0.lua#L473)
--- Returns an iterator of the libraries embedded into the addon.
---### Example:
--->Since it's a list, the first return is the index
---```
---for index, libName in MyAddon:IterateEmbeds() do
---    print("Found library: " .. libName)
---end
---```
--- @return fun():number,string @An iterator yielding the index and the library name.
function AceAddonMixin_3_0:IterateEmbeds() end

--- @return string
function AceAddonMixin_3_0:GetName() end

