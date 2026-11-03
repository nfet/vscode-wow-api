--[[-----------------------------------------------------------------------------
Unit Aliases
-------------------------------------------------------------------------------]]
--- @alias CompanionType string | "'MOUNT'" | "'CRITTER'"
--- @alias CharacterFrameName string | "'PaperDollFrame'" | "'SkillFrame'" | "'PVPFrame'" | "'ReputationFrame'" | "'TokenFrame'"
--- @alias UnitID UnitToken
--- @alias UnitAuraFilter string | "'HELPFUL'" | "'HARMFUL'"
--- @alias UnitClassLocalizedName string | "'warrior'" | "'paladin'"
--- UnitClass is the locale-independent name
--- @alias UnitClass string | "'WARRIOR'" | "'PALADIN'" | "'HUNTER'" | "'ROGUE'" | "'PRIEST'" | "'DEATHKNIGHT'" | "'SHAMAN'" | "'MAGE'" | "'WARLOCK'" | "'MONK'" | "'DRUID'" | "'DEMONHUNTER'" | "'EVOKER'"
--- @alias UnitClassID number | "1" | "2" | "3" | "4" | "5" | "6" | "7" | "8" | "9" | "10" | "11" | "12" | "13"
--- @alias BuffName string

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

--- #### Example:
--- ```
--- className, classFilename, classId = UnitClass('player')
--- ```
--- @param unit UnitID
--- @return UnitClassLocalizedName, UnitClass, UnitClassID
function UnitClassBase(unit) end

--- #### Example:
--- ```
--- className, classFilename, classId = UnitClass('player')
--- ```
--- @param unit UnitID
--- @return UnitClassLocalizedName, UnitClass, UnitClassID
function UnitClass(unit) end

--- Returns the name of the unit.
--- @param unitId UnitID The unitId to query (e.g., "player", "target").
--- @param showServerName BooleanOptional Optional. If true, the server name will be appended for players from other realms (e.g., "Name - Server").
--- @return string name The name of the unit. Returns nil if the unit does not exist.
function GetUnitName(unitId, showServerName) end
