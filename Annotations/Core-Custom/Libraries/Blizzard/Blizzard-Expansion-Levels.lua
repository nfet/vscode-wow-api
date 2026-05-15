---@meta WoWExpansionEnums

--- Number of expansion levels defined in the enumeration.
---@type number
NUM_LE_EXPANSION_LEVELS = 12

--[[--- World of Warcraft expansion enumeration constants.
--- These values are used to identify which version of the game client is running,
--- including both retail and Classic variants.
---@class WowExpansionEnum
---@field CLASSIC number World of Warcraft / World of Warcraft: Classic (Vanilla)
---@field BURNING_CRUSADE number The Burning Crusade / Burning Crusade Classic
---@field WRATH_OF_THE_LICH_KING number Wrath of the Lich King / Wrath of the Lich King Classic
---@field CATACLYSM number Cataclysm / Cataclysm Classic
---@field MISTS_OF_PANDARIA number Mists of Pandaria / Mists of Pandaria Classic
---@field WARLORDS_OF_DRAENOR number Warlords of Draenor
---@field LEGION number Legion
---@field BATTLE_FOR_AZEROTH number Battle for Azeroth
---@field SHADOWLANDS number Shadowlands
---@field DRAGONFLIGHT number Dragonflight
---@field WAR_WITHIN number The War Within (Current retail expansion as of 2024-2026)
---@field MIDNIGHT number Midnight (Upcoming expansion)
---@field CURRENT number Alias for the current expansion level of the running client
WowExpansionEnum = {}]]

--- Current expansion level of the running game client.
--- Compares against the enum values above to determine game version.
---@type number
---@see LE_EXPANSION_CLASSIC
---@see LE_EXPANSION_BURNING_CRUSADE
---@see LE_EXPANSION_WRATH_OF_THE_LICH_KING
---@see LE_EXPANSION_CATACLYSM
---@see LE_EXPANSION_MISTS_OF_PANDARIA
---@see LE_EXPANSION_WARLORDS_OF_DRAENOR
---@see LE_EXPANSION_LEGION
---@see LE_EXPANSION_BATTLE_FOR_AZEROTH
---@see LE_EXPANSION_SHADOWLANDS
---@see LE_EXPANSION_DRAGONFLIGHT
---@see LE_EXPANSION_WAR_WITHIN
---@see LE_EXPANSION_MIDNIGHT
LE_EXPANSION_LEVEL_CURRENT = 0

---@type number
LE_EXPANSION_CLASSIC = 0

---@type number
LE_EXPANSION_BURNING_CRUSADE = 1

---@type number
LE_EXPANSION_WRATH_OF_THE_LICH_KING = 2

---@type number
LE_EXPANSION_CATACLYSM = 3

---@type number
LE_EXPANSION_MISTS_OF_PANDARIA = 4

---@type number
LE_EXPANSION_WARLORDS_OF_DRAENOR = 5

---@type number
LE_EXPANSION_LEGION = 6

---@type number
LE_EXPANSION_BATTLE_FOR_AZEROTH = 7

---@type number
LE_EXPANSION_SHADOWLANDS = 8

---@type number
LE_EXPANSION_DRAGONFLIGHT = 9

---@type number
LE_EXPANSION_WAR_WITHIN = 10

---@type number
LE_EXPANSION_MIDNIGHT = 11


