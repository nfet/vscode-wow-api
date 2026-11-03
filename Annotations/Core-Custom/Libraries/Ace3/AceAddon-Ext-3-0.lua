---@meta _

--- @class (partial) AceAddon
local addon = {}

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
function addon:IterateEmbeds() end
