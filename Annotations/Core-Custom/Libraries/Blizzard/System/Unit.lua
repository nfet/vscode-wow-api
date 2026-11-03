--[[-----------------------------------------------------------------------------
Unit Aliases
-------------------------------------------------------------------------------]]

--- @alias CompanionType string | "'MOUNT'" | "'CRITTER'"
--- @alias CharacterFrameName string | "'PaperDollFrame'" | "'SkillFrame'" | "'PVPFrame'" | "'ReputationFrame'" | "'TokenFrame'"
--- @alias UnitID UnitToken
--- @alias UnitAuraFilter string | "'HELPFUL'" | "'HARMFUL'"
--- UnitClass is the locale-independent name
--- @alias UnitClass string | "'WARRIOR'" | "'PALADIN'" | "'HUNTER'" | "'ROGUE'" | "'PRIEST'" | "'DEATHKNIGHT'" | "'SHAMAN'" | "'MAGE'" | "'WARLOCK'" | "'MONK'" | "'DRUID'" | "'DEMONHUNTER'" | "'EVOKER'"
--- @alias UnitClassID number | "1" | "2" | "3" | "4" | "5" | "6" | "7" | "8" | "9" | "10" | "11" | "12" | "13"
--- @alias BuffName string

--[[-----------------------------------------------------------------------------
Unit Class Types
-------------------------------------------------------------------------------]]

--- @alias UnitClassName string

--- @class UnitClassType
--- @field id UnitClassID The unit class identifier
--- @field name UnitClassName | "'DRUID'" | "'WARRIOR'" | "'etc...'" | "'The unit class name in uppercase.'"

--- ## Example use for strongly-typed coding.
--- ```
--- local UnitClassID = {
---    WARRIOR = 1,
---    PALADIN = 2,
---    HUNTER = 3,
---    ROGUE = 4,
---    PRIEST = 5,
---    DEATHKNIGHT = 6,
---    SHAMAN = 7,
---    MAGE = 8,
---    WARLOCK = 9,
---    MONK = 10,
---    DRUID = 11,
---    DEMONHUNTER = 12,
---    EVOKER = 13,
--- }
--- local UnitClasses = {}
--- for className, classID in pairs(UnitClassID) do
---   local entry = { id = classID, name = className, }
---   setmetatable(entry, { __call = function(self) return self.name end })
---   UnitClasses[className] = entry
--- end
--- ```
---
--- ```
--- if UnitClasses.DRUID() == 'DRUID' then ... end
--- ```
--- @class UnitClassesType
--- @field WARRIOR UnitClassType
--- @field PALADIN UnitClassType
--- @field HUNTER UnitClassType
--- @field ROGUE UnitClassType
--- @field PRIEST UnitClassType
--- @field DEATHKNIGHT UnitClassType
--- @field SHAMAN UnitClassType
--- @field MAGE UnitClassType
--- @field WARLOCK UnitClassType
--- @field MONK UnitClassType
--- @field DRUID UnitClassType
--- @field DEMONHUNTER UnitClassType
--- @field EVOKER UnitClassType

--[[-----------------------------------------------------------------------------
Functions
-------------------------------------------------------------------------------]]

--- #### See: [API_UnitAura#ForEachAura](https://warcraft.wiki.gg/wiki/API_UnitAura#ForEachAura)
--- #### Example
--- ```
--- name, icon, count, dispelType, duration, expirationTime, source, isStealable, nameplateShowPersonal,
--- spellId, canApplyAura, isBossDebuff, castByPlayer, nameplateShowAll, timeMod, ...
---     = UnitAura  (unit, index, 'HELPFUL')
---     = UnitBuff  (unit, index, 'HARMFUL')
---     = UnitDebuff(unit, index [, filter])
--- ```
--- @param unit UnitID
--- @param index Index
--- @param filter UnitAuraFilter Optional
function UnitAura(unit, index, filter) end

--- Returns information about the specified buff on a unit.
--- @param unit string The unit to query (e.g., "player", "target").
--- @param index number The index of the buff to query, starting at 1.
--- @param filter string|nil Optional. A filter to restrict the buffs to query (e.g., "CANCELABLE", "NOT_CANCELABLE").
--- @return BuffName, Count, number|nil, string|nil, number|nil, number|nil, number|nil, boolean|nil, boolean|nil, number|nil, boolean|nil, boolean|nil, boolean|nil, number|nil name, icon, count, debuffType, duration, expirationTime, source, isStealable, nameplateShowPersonal, spellId, canApplyAura, isBossAura, castByPlayer, timeMod The buff information.
function UnitBuff(unit, index, filter) end

--- Returns the name of the unit.
--- @param unitId UnitID The unitId to query (e.g., "player", "target").
--- @param showServerName BooleanOptional Optional. If true, the server name will be appended for players from other realms (e.g., "Name - Server").
--- @return string name The name of the unit. Returns nil if the unit does not exist.
function GetUnitName(unitId, showServerName) end
