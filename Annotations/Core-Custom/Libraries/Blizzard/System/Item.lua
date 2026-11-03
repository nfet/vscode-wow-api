--[[-----------------------------------------------------------------------------
Item
-------------------------------------------------------------------------------]]
--- @alias ItemID number | "1"
--- @alias ItemGUID string | "Item-1598-0-4000000A369860E1"
--- @alias ItemName string | "'Conjured Mana Biscuit'"
--- @alias ItemLink string | "'|cff0070dd|Hitem:80921:4721:::::::36:103::1:::::::|h[Saboteur's Stabilizing Bracers]|h|r'"
--- @alias ItemType string The localized type name of the item: Armor, Weapon, Quest, etc.
--- @alias ItemID_Link_Or_Name number|string
--- @alias ItemIdentifier ItemID|ItemGUID|ItemLink|ItemName|"Item ID, GUID, Link or Name"
--- @alias StrippedItemLink string The stripped item link
--- @alias ItemQuality number The Enum.ItemQuality number value
--- @alias ItemLevel number The base item level, not including upgrades. See GetDetailedItemLevelInfo() for getting the actual item level.
--- @alias ItemSubType string The localized sub-type name of the item: Bows, Guns, Staves, etc.
--- @alias ItemStackCount number The max amount of an item per stack, e.g. 200 for Runecloth.
--- @alias ItemEquipLoc string The inventory equipment location in which the item may be equipped e.g. "INVTYPE_HEAD", or an empty string if it cannot be equipped [ItemEquipLoc]
--- @alias ItemTexture number FileID - The texture for the item icon.
--- @alias SellPrice number The vendor price in copper, or 0 for items that cannot be sold.
--- @alias ItemClassID number The numeric ID of itemType
--- @alias SubclassID number The numeric ID of itemSubType [ItemType]
--- @alias BindType number When the item becomes soul bound, e.g. 1 for Bind on Pickup items [LE_ITEM_BIND]
--- @alias ExpacID number The related Expansion, e.g. 8 for Shadowlands. On Classic this appears to be always 254 [LE_EXPANSION]
--- @alias SetID number? ItemSetID - For example 761 for  [Red Winter Hat] (itemID 21524).
--
--
--- @class ItemCooldownData
--- @field startTime TimeInSec
--- @field duration TimeInSec
--- @field enable boolean
--

--- @class ItemInfoDetails
local ItemInfo = {
    --- @type ItemID
    id = 1,
    --- @type ItemName
    name = 'Axe',
    --- @type ItemLink
    link = '',
    --- @type Icon
    icon = 1234567,
    --- @type ItemQuality
    quality = 1,
    --- @type ItemLevel
    level = 1,
    --- @type ItemLevel
    minLevel = 1,
    --- @type ItemType
    type = '',
    --- @type ItemSubType
    subType = '',
    --- @type ItemStackCount
    stackCount = 1,
    --- @type number
    count = 1,
    --- @type ItemEquipLoc
    equipLoc = '',
    --- @type ItemClassID
    classID = 1,
    --- @type SubclassID
    subclassID = 1,
    --- @type BindType
    bindType = 1,
    --- @type IsCraftingReagent
    isCraftingReagent = true
}


