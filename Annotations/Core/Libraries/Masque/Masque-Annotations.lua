--- @meta

--[[-----------------------------------------------------------------------------
Masque Annotations

EmmyLua annotations for the Masque public API, i.e. `LibStub('Masque')`.
Sourced from the Masque addon's Core/ folder (Groups.lua, Group.lua, Core.lua):
  - Core.API      -> MSQ_API (returned by LibStub('Masque'))
  - Core.Group_MT -> MSQ_Group (returned by MSQ_API:Group(...))

@see https://github.com/SFX-WoW/Masque
-------------------------------------------------------------------------------]]

----------------------------------------
-- Region Table
---

--- Table of skinnable regions/textures for a button, keyed by layer name.
--- Passed to MSQ_Group:AddButton() and populated/normalized by Masque in place.
--- @class Masque_ButtonData
--- @field Icon? Texture
--- @field Cooldown? Cooldown
--- @field Normal? Texture
--- @field Pushed? Texture
--- @field Highlight? Texture
--- @field Checked? Texture
--- @field Flash? Texture
--- @field HotKey? FontString
--- @field Count? FontString
--- @field Name? FontString
--- @field Border? Texture
--- @field AutoCastable? Texture
--- @field AutoCast? Frame|Texture
--- @field Shine? Frame|Texture
--- @field Backdrop? Texture
--- @field FloatingBG? Texture
--- @field Duration? FontString
--- @field NewItem? Texture
--- @field SpellHighlight? Texture
--- @field QuestBorder? Texture
--- @field Gloss? Texture
--- @field Shadow? Texture
--- @field [string] any

----------------------------------------
-- Group API (Core.Group_MT / GMT)
---

--- A Masque skin group returned by MSQ_API:Group(Addon, Group, StaticID).
--- @class Masque_Group
--- @field ID string
--- @field Addon string
--- @field Group? string
--- @field Buttons table<Button|CheckButton|Frame, Masque_ButtonData>
local MASQUE_GROUP = {}

--- Adds or reassigns a button to the group and skins it immediately (unless queued).
--- @param Button Button|CheckButton|Frame
--- @param Regions? Masque_ButtonData
--- @param Type? string
--- @param Strict? boolean
function MASQUE_GROUP:AddButton(Button, Regions, Type, Strict) end

--- Removes a button from the group and applies the default (unskinned) look.
--- @param Button Button|CheckButton|Frame
function MASQUE_GROUP:RemoveButton(Button) end

--- Re-applies the group's current skin to a single button, or to all buttons
--- in the group if `Button` is omitted.
--- @param Button? Button|CheckButton|Frame
function MASQUE_GROUP:ReSkin(Button) end

--- Deletes the group (and its sub-groups) and restores the default skin.
function MASQUE_GROUP:Delete() end

--- Returns a layer's current color as r, g, b, a.
--- @param Layer string
--- @return number r
--- @return number g
--- @return number b
--- @return number a
function MASQUE_GROUP:GetColor(Layer) end

--- Returns the region for a button on the given layer.
--- @param Button Button|CheckButton|Frame
--- @param Layer string
--- @return Texture|FontString|Frame|nil
function MASQUE_GROUP:GetLayer(Button, Layer) end

--- Creates and returns an AceConfig-3.0 options table for the group.
--- @param Order? number
--- @return table
function MASQUE_GROUP:GetOptions(Order) end

--- Registers a group-specific callback, fired when a skin option changes.
--- @param func fun(...)
--- @param ... any
function MASQUE_GROUP:RegisterCallback(func, ...) end

--- Renames the group (only valid for groups created with a StaticID).
--- @param Name string
function MASQUE_GROUP:SetName(Name) end

----------------------------------------
-- Top-Level API (Core.API)
---

--- Masque's public API, returned by `LibStub('Masque')`.
--- @class Masque_API
local MASQUE_API = {}

--- Creates (or returns an existing) skin group for an add-on.
--- @param Addon string
--- @param Group? string
--- @param StaticID? string
--- @return Masque_Group
function MASQUE_API:Group(Addon, Group, StaticID) end

--- Returns an existing group by its StaticID.
--- @param StaticID string
--- @return Masque_Group
function MASQUE_API:GetGroupByID(StaticID) end
